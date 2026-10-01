package BACnetCodec4cj.BACnet

import BACnetCodec4cj.BACnetCodecException.DecodeException.DecodeException
import BACnetCodec4cj.Utility.ByteBuf.ByteBuf
import BACnetCodec4cj.InterFaces.{ICodecPrimitiveData,IHaveTag,BACnet_TagClass_Enum} 

import std.binary.*
import std.collection.ArrayList




public func readContextSpecificTagNumber(arg_tag: Byte, arg_packet: ByteBuf): UInt8 {
    //若存在扩展tagNumber字节，则游标会前进一步
    var _rtu: UInt8 = 0
    let _tagNum = arg_tag >> 4
    if (_tagNum < 15) {
        _rtu = _tagNum
    } else {
        //_tagNum == 0b0000_1111时，表明tag后的一个字节是tagNum
        _rtu = arg_packet.read_UInt8_FromBuf()
    }
    return _rtu
}

public func readBACnetApplicationDataLength(arg_tag: Byte, arg_packet: ByteBuf): UInt32 {
    //读取数据的可变长度
    //只适用于PrimitiveData
    //应该在读取完tagNumber域的值，若存在扩展tagNumber字节则指针已过该字节后再调用本函数读取用户数据的长度
    //若存在扩展dataLength字节，则游标会前进1到5步，最多5步
    //20.2.1.3.2 Length 编码规则：
    // 长度小于5时，3bit长度域直接表示长度(0~4)
    // 长度大于等于5时，3bit长度域为5，其后跟扩展长度字节：
    //   0..253 为实际长度；254 表示后跟2字节扩展长度；255 表示后跟4字节扩展长度
    var _rtu: UInt32 = 0
    var _len = arg_tag & 0b0000_0111
    if (_len < 0b0000_0101u8) {
        //0~4间无需扩展dataLength字节
        _rtu = UInt32(_len)
        return _rtu
    } else if (_len == 0b0000_0110u8) {
        //ConstructedData 的 Opening Tag ，无可用长度信息
        //因为ConstructedData应该是要预先知道那个位置是构造数据，主动去解析的，所以实际上不应该调用到此函数
        throw DecodeException("解码错误:得到ConstructedData 的 Opening Tag ，无可用长度信息")
    } else if (_len == 0b0000_0111u8) {
        //ConstructedData 的 Closing Tag ，无可用长度信息
        //因为ConstructedData应该是要预先知道那个位置是构造数据，主动去解析的，所以实际上不应该调用到此函数
        throw DecodeException("解码错误:得到ConstructedData 的 Closing Tag ，无可用长度信息")
    }

    //_len == 0b0000_0101u8(5) 有扩展长度字节
    //读取1字节数，游标+1
    let _len_add_1 = arg_packet.read_UInt8_FromBuf()
    if (_len_add_1 < 254) {
        //只有1个扩展长度字节，其值即为实际长度
        _rtu = UInt32(_len_add_1)
        return _rtu
    } else if (_len_add_1 == 254) {
        //后跟2个字节的扩展长度
        //读取2字节数，游标加2
        let _len_add_2_3 = arg_packet.read_UInt16_FromBuff()
        _rtu = UInt32(_len_add_2_3)
        return _rtu
    } else {
        //_len_add_1 == 255
        //后跟4个字节的扩展长度
        //读取4字节数，游标加4
        _rtu = arg_packet.read_UInt32_FromBuff()
        return _rtu
    }

    return _rtu
}

public func encodingToApplicationDataTagHead(arg_tagNum: UInt8, arg_tagLength: UInt32,arg_tagClass: BACnet_TagClass_Enum): Array<Byte> {
    var _rtu: Array<Byte>
    var _array_buf: ArrayList<Byte> = ArrayList<Byte>()
    var _SDContextTag = 0b0000_0000u8
    let arg_tagClass_mask = arg_tagClass.toUInt8()
    _SDContextTag = _SDContextTag | arg_tagClass_mask
    _array_buf.add(_SDContextTag)
    if (arg_tagNum < 15) {
        //tagnum小于15时，上下文标记号直接写在标记域，没有额外标记号字节
        let _tagNum = arg_tagNum << 4
        _SDContextTag = _SDContextTag | _tagNum
        _array_buf[0] = _SDContextTag
    } else {
        //tagNum大于等于15小于255时（U8就限制了不能大于255），有一字节的额外标记号字节
        //BACnet不支持大于255的上下文标记
        //The encoding does not allow, nor does BACnet require, tag numbers larger than 254. The value B'11111111' of the subsequent octet is reserved by ASHRAE. 
        //只是说保留，没说是255是错误，所以这里不去区分是不是等于255，不报错
        //_tagNum >= 时，表明tag后的一个字节是tagNum
        _SDContextTag = _SDContextTag | 0b1111_0000u8
        _array_buf[0] = _SDContextTag
        _array_buf.add(arg_tagNum)
    }

    if (arg_tagLength < 5) { //没有额外上下文标号字节
        //没有额外长度字节
        _SDContextTag = _SDContextTag | UInt8(arg_tagLength)
        _array_buf[0] = _SDContextTag
    } else if (arg_tagLength >= 5 && arg_tagLength <= 253) {
        //额外一字节长度
        _SDContextTag = _SDContextTag | 0b0000_0101u8
        _array_buf[0] = _SDContextTag
        //增加1字节长度
        _array_buf.add(UInt8(arg_tagLength))
    } else if (arg_tagLength >= 254 && arg_tagLength <= 65535) {
        //额外1字节标记，2字节长度
        _SDContextTag = _SDContextTag | 0b0000_0101u8
        _array_buf[0] = _SDContextTag
        //额外1字节标记，值位0XFE
        _array_buf.add(0XFEu8)
        let _lenArray = Array<Byte>(2, repeat: 0)
        let _length_U16 = UInt16(arg_tagLength)
        _length_U16.writeBigEndian(_lenArray)
        _array_buf.add(_lenArray[0])
        _array_buf.add(_lenArray[1])
    } else if (arg_tagLength >= 65536 && arg_tagLength <= 4294967295) {
        //额外1字节标记，4字节长度
        _SDContextTag = _SDContextTag | 0b0000_0101u8
        _array_buf[0] = _SDContextTag
        //额外1字节标记，值位0XFF
        _array_buf.add(0XFFu8)
        let _lenArray = Array<Byte>(4, repeat: 0)
        let _length_U32 = arg_tagLength
        _length_U32.writeBigEndian(_lenArray)
        _array_buf.add(_lenArray[0])
        _array_buf.add(_lenArray[1])
        _array_buf.add(_lenArray[2])
        _array_buf.add(_lenArray[3])
    }
    _rtu = _array_buf.toArray()
    return _rtu
}

//将 tag 头与数据值拼接为完整编码报文，供各数据类型编码复用
public func encodeWithTagHead(arg_tagNumber: UInt8, arg_tagLength: UInt32, arg_tagClass: BACnet_TagClass_Enum,
    arg_value: Array<Byte>): Array<Byte> {
    let _tagHead = encodingToApplicationDataTagHead(arg_tagNumber, arg_tagLength, arg_tagClass)
    let _rtu_len = _tagHead.size + arg_value.size
    var _rtu: Array<Byte> = Array<Byte>(_rtu_len, repeat: 0)
    _tagHead.copyTo(_rtu, 0, 0, _tagHead.size)
    arg_value.copyTo(_rtu, 0, _tagHead.size, arg_value.size)
    return _rtu
}

//解码带OpenTag/CloseTag对的数据
//BACnet 的OpenTag/CloseTag对必然含有上下文标记（Context Tag）
//主要是带上下文标记的Constructed Data
//但是带上下文标记的BACnetApplicationDatatype的BSTRACT-SYNTAX.&Type（即ANY）也有OpenTag/CloseTag对
func decoding_Open_Close_Tag_Data<T>(packet: ByteBuf,arg_tagNumber: UInt8): T where T<:ICodecPrimitiveData<T> & IHaveTag {
    let openIndex = packet.cursor;
    //开始时有一字节的openTag,游标+1
    let _openTag = packet.read_UInt8_FromBuf();

    let _openclassBit = (_openTag & 0b0000_1000) >> 3
    if (_openclassBit == 0) {
        throw DecodeException("解码错误:OpenTag的class位不应是0")
    }
    //OpenTag ,最后3位应该是110
    /*--ISO_16484_5_2022_Page_852
    --20.2.1.3.2 Constructed Data 
    (a) an "opening" tag whose Tag Number field shall contain the value of the tag number, 
    whose Class field shall indicate "context specific," and whose length/value/type field 
    shall have the value B'110'; 
    (b) the complete encoding, with tags, of the zero, one, or more elements that comprise the data; 
    (c) a "closing" tag, whose Class and Tag Number fields shall contain the same values as the "opening" tag and whose 
    length/value/type field shall have the value B'111'. 
    */
    let _open_Tag = UInt32(_openTag & 0b0000_0111)
    if (_open_Tag != 0b0000_0110) {
        throw DecodeException("解码错误:缺失ConstructedData的OpenTag")
    }

    let _opentagNum = readContextSpecificTagNumber(_openTag, packet)
    if(_opentagNum != arg_tagNumber){
        throw DecodeException("解码错误:openTag的上下文编号与预期不同")
    }

    //解码真正的数据
    var _rtu = T.decodingPrimitiveDataFromArrayByte(packet);

    //结束时应该还有一字节的closTag ,游标+1
    let _closeTag = packet.read_UInt8_FromBuf();
    let _closeclassBit = (_openTag & 0b0000_1000) >> 3
    if (_closeclassBit == 0) {
        throw DecodeException("解码错误:CloseTag的class位不应是0")
    }
    let _closeTagNum = readContextSpecificTagNumber(_closeTag, packet)
    if(_closeTagNum != arg_tagNumber){
        throw DecodeException("解码错误:closeTag的上下文编号与预期不同")
    }
    //CloseTag ,最后3位应该是111

    let _close_Tag = UInt32(_closeTag & 0b0000_0111)
    if (_close_Tag != 0b0000_0111) {
        throw DecodeException("解码错误:缺失ConstructedData的CloseTag")
    }
    let closeIndex = packet.cursor;
    _rtu.tagNumber = _opentagNum
    _rtu.tagClass = BACnet_TagClass_Enum.contextSpecific_tag
    //用游标算出该结构体的总长，包括openTag和closeTag
    //实际上BACnet协议中构造类数据是没有标长度的，此处只是顺便算个长度，在BACnet协议中无实际意义
    _rtu.tagLength = UInt32(closeIndex - openIndex) 
    return _rtu
}

//编码带OpenTag/CloseTag对的数据
//BACnet 的OpenTag/CloseTag对必然含有上下文标记（Context Tag）
//主要是带上下文标记的Constructed Data
//但是带上下文标记的BACnetApplicationDatatype的BSTRACT-SYNTAX.&Type（即ANY）也有OpenTag/CloseTag对
func encoding_Open_Close_Tag_Data<T>(arg_Date:T): Array<Byte> where T<:ICodecPrimitiveData<T> & IHaveTag {
    var _rtu: Array<Byte>
    let arg_tagNumber = arg_Date.tagNumber
    let _openTagHead = encodingToOpenTagHead(arg_tagNumber)
    let _closeTagHead = encodingToCloseTagHead(arg_tagNumber)
    let _value = arg_Date.encodingToPrimitiveData()
    let _value_L = _value.size
    let _rtu_L = _value_L + _openTagHead.size + _closeTagHead.size
    _rtu = Array<Byte>(_rtu_L, repeat: 0)
    _openTagHead.copyTo(_rtu, 0, 0, _openTagHead.size)
    _value.copyTo(_rtu, 0, _openTagHead.size, _value_L)
    _closeTagHead.copyTo(_rtu, 0, _openTagHead.size + _value_L, _closeTagHead.size)
    return _rtu
}

public func encodingToOpenTagHead(arg_tagNum: UInt8): Array<Byte> {
    var _rtu: Array<Byte>
    var _array_buf: ArrayList<Byte> = ArrayList<Byte>()
    var _SDContextTag = 0b0000_1110u8
    _array_buf.add(_SDContextTag)
    if (arg_tagNum < 15) {
        //tagnum小于15时，上下文标记号直接写在标记域，没有额外标记号字节
        let _tagNum = arg_tagNum << 4
        _SDContextTag = _SDContextTag | _tagNum
        _array_buf[0] = _SDContextTag
    } else {
        //tagNum大于等于15小于255时（U8就限制了不能大于255），有一字节的额外标记号字节
        //BACnet不支持大于255的上下文标记
        //The encoding does not allow, nor does BACnet require, tag numbers larger than 254. The value B'11111111' of the subsequent octet is reserved by ASHRAE. 
        //只是说保留，没说是255是错误，所以这里不去区分是不是等于255，不报错
        //_tagNum >= 时，表明tag后的一个字节是tagNum
        _SDContextTag = _SDContextTag | 0b1111_0000u8
        _array_buf[0] = _SDContextTag
        _array_buf.add(arg_tagNum)
    }
    _rtu = _array_buf.toArray()
    return _rtu
}

public func encodingToCloseTagHead(arg_tagNum: UInt8): Array<Byte> {
    var _rtu: Array<Byte>
    var _array_buf: ArrayList<Byte> = ArrayList<Byte>()
    var _SDContextTag = 0b0000_1111u8
    _array_buf.add(_SDContextTag)
    if (arg_tagNum < 15) {
        //tagnum小于15时，上下文标记号直接写在标记域，没有额外标记号字节
        let _tagNum = arg_tagNum << 4
        _SDContextTag = _SDContextTag | _tagNum
        _array_buf[0] = _SDContextTag
    } else {
        //tagNum大于等于15小于255时（U8就限制了不能大于255），有一字节的额外标记号字节
        //BACnet不支持大于255的上下文标记
        //The encoding does not allow, nor does BACnet require, tag numbers larger than 254. The value B'11111111' of the subsequent octet is reserved by ASHRAE. 
        //只是说保留，没说是255是错误，所以这里不去区分是不是等于255，不报错
        //_tagNum >= 时，表明tag后的一个字节是tagNum
        _SDContextTag = _SDContextTag | 0b1111_0000u8
        _array_buf[0] = _SDContextTag
        _array_buf.add(arg_tagNum)
    }
    _rtu = _array_buf.toArray()
    return _rtu
}