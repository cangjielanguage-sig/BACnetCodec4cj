package BACnetCodec4cj.BACnet.Types.ApplicationTypes

import BACnetCodec4cj.BACnet.Choice.*
import BACnetCodec4cj.BACnetCodecException.*
import BACnetCodec4cj.Utility.*
import std.binary.*
import std.collection.*

//用户数据类型父类
public open class BACnetApplicationDatatype {
    private var _tagNumber: UInt8 = 0
    public mut prop tagNumber: UInt8 {
        get() {
            return _tagNumber
        }
        set(arg_Value) {
            _tagNumber = arg_Value
        }
    }

    private var _tagClass: TagClass_Choice = TagClass_Choice.applicationTag
    public mut prop tagClass: TagClass_Choice {
        get() {
            return _tagClass
        }
        set(arg_Value) {
            _tagClass = arg_Value
        }
    }

    private var _tagLength: UInt32 = 0
    public mut prop tagLength: UInt32 {
        get() {
            return _tagLength
        }
        set(arg_Value) {
            _tagLength = arg_Value
        }
    }

    private var _applicationDatatype: ApplicationTags = ApplicationTags.Null
    public mut prop applicationDatatype: ApplicationTags {
        get() {
            return _applicationDatatype
        }
        set(arg_Value) {
            this._applicationDatatype = arg_Value
        }
    }

    public init() {}

    public static func decodingFromArrayByte(packet: ByteBuf): BACnetApplicationDatatype {
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000) >> 3
        if (_classBit == 1) {
            throw DecodeException("解码错误:使用原语类型解码函数解析上下文指定编码")
        }
        let _tagNum = (_appTag & 0b1111_0000) >> 4
        var _appDataType = ApplicationTags.fromUInt8(_tagNum)
        packet.cursorMoveBackward(1)
        var _rtu = match (_appDataType) {
            case ApplicationTags.Null => BACnet_Null.decodingPrimitiveDataFromArrayByte(packet)
            case ApplicationTags.Boolean => BACnet_Boolean.decodingPrimitiveDataFromArrayByte(packet)
            case ApplicationTags.UnsignedInteger => BACnet_UnsignedInteger
                .decodingPrimitiveDataFromArrayByte(packet)
            case ApplicationTags.SignedInteger => BACnet_SignedInteger
                .decodingPrimitiveDataFromArrayByte(packet)
            case ApplicationTags.Real => BACnet_Real.decodingPrimitiveDataFromArrayByte(packet)
            case ApplicationTags.Double => BACnet_Double.decodingPrimitiveDataFromArrayByte(packet)
            case ApplicationTags.OctetString => BACnet_OctetString.decodingPrimitiveDataFromArrayByte(
                packet)
            case ApplicationTags.CharacterString => BACnet_CharacterString
                .decodingPrimitiveDataFromArrayByte(packet)
            case ApplicationTags.BitString => BACnet_BitString.decodingPrimitiveDataFromArrayByte(
                packet)
            case ApplicationTags.Enumerated => BACnet_Enumerated.decodingPrimitiveDataFromArrayByte(
                packet)
            case ApplicationTags.Date => BACnet_Date.decodingPrimitiveDataFromArrayByte(packet)
            case ApplicationTags.Time => BACnet_Time.decodingPrimitiveDataFromArrayByte(packet)
            case ApplicationTags.BACnetObjectIdentifier => BACnet_ObjectIdentifier
                .decodingPrimitiveDataFromArrayByte(packet)
            case ApplicationTags.ReservedForASHRAE13 => throw DecodeException(
                "解码错误:目前协议未定义的类型数据")
            case ApplicationTags.ReservedForASHRAE14 => throw DecodeException(
                "解码错误:目前协议未定义的类型数据")
            case ApplicationTags.ReservedForASHRAE15 => throw DecodeException(
                "解码错误:目前协议未定义的类型数据")
        }
        return _rtu
    }
}

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

public func encodingToApplicationDataTagHead(arg_tagNum: UInt8, arg_tagLength: UInt32,
    arg_tagClass: TagClass_Choice): Array<Byte> {
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
public func encodeWithTagHead(arg_tagNumber: UInt8, arg_tagLength: UInt32, arg_tagClass: TagClass_Choice,
    arg_value: Array<Byte>): Array<Byte> {
    let _tagHead = encodingToApplicationDataTagHead(arg_tagNumber, arg_tagLength, arg_tagClass)
    let _rtu_len = _tagHead.size + arg_value.size
    var _rtu: Array<Byte> = Array<Byte>(_rtu_len, repeat: 0)
    _tagHead.copyTo(_rtu, 0, 0, _tagHead.size)
    arg_value.copyTo(_rtu, 0, _tagHead.size, arg_value.size)
    return _rtu
}
