package BACnetCodec4cj.Types.BACnetApplicationDatatypes

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetException.*
import BACnetCodec4cj.ByteBuf.*
import std.binary.*
import charset4cj.*

// CharacterString的字符集中，除UTF_8使用仓颉默认编解码外，
// 其他字符集解码依赖charset4cj库，感谢charset4cj库各位作者大大的分享。

// 目前CharacterString的X'01' IBM/Microsoft DBCS  code pagexxx 的字符集是不全的，
// 处理方法是在charset4cj里查找名为cpxxx的内码字符集，找不到时就以默认UTF_8做编解码。
// 所以一般不建议使用BACnetCharSetChoice.CodePage(UInt16)，正确性我无法保证

//另外，JISX0208在charset4cj没找到，用的是ISO_2022_JP编码，不知道是不是一回事儿，没法儿验证
//所以一般不建议使用BACnetCharSetChoice.JISX0208，正确性我无法保证

// 另外，编码时默认UTF_8编码，如需指定字符集编码，则需指定BACnet_CharacterString的
// encodeCharSet属性，若指定的内码页在charset4cj库里没有则会自动使用UTF_8编码输出

// 字符串编解码情况实在太复杂，很容易因为字符不在字符集内等待原因抛出异常，
// 一不小心没处理就会导致解码中断，因为字符能正常取到长度，就算解码失败也不会影响
// 后续其他编解码，所以字符串编解码尽量不抛出异常，调用charset4cj库时出现异常的
// 场景都会使用UTF_8来作为缺省处理

//BACnet支持的CharacterString编码库类型
public enum BACnetCharSetChoice {
    | UTF_8 //X'00' ISO 10646 (UTF-8)   仓颉默认
    | CodePage(UInt16) //X'01' IBM/Microsoft DBCS  一般不建议使用，因为内码种类太多，支持不全。UInt16值为指定内码页号即_codePageNum，在charset4cj貌似可以通过Charsets.forName("cp"+_codePageNum.toString())获得，如果没有则会使用UTF_8代替
    | JISX0208 //X'02' JIS X 0208          在charset4cj中使用Charsets.ISO_2022_JP，不知道准不准，也没测试手段
    | UTF_32 //X'03' ISO 10646 (UCS-4)   在charset4cj中使用Charsets.UTF32BE，BE指代大端序（Big-Endian）
    | UTF_16 //X'04' ISO 10646 (UCS-2)   在charset4cj中使用Charsets.UTF16BE
    | ISO_8859_1 //X'05' ISO 8859-1          在charset4cj中使用Charsets.WINDOWS_1252
}

public class BACnet_CharacterString <: BACnetApplicationDatatype & ICodecPrimitiveData<BACnetApplicationDatatype> & ICodecContextSpecificData & IHaveDataValue<String> {
    private var _dataValue: String = ""
    public mut prop dataValue: String {
        get() {
            return _dataValue
        }
        set(arg_Value) {
            _dataValue = arg_Value
        }
    }

    private var _encodeCharSet: BACnetCharSetChoice = BACnetCharSetChoice.UTF_8
    public mut prop encodeCharSet: BACnetCharSetChoice {
        get() {
            return _encodeCharSet
        }
        set(arg_Value) {
            _encodeCharSet = arg_Value
        }
    }

    public init() {
        this.tagNumber = 7
        this.tagClass = BACnetTagClassChoice.applicationTag
        this._dataValue = ""
        this.applicationDatatype = BACnetApplicationDatatypesChoice.CharacterString
        this.encodeCharSet = BACnetCharSetChoice.UTF_8
    }

    public init(arg_tagNumber: UInt8, arg_tagClass: BACnetTagClassChoice, arg_dataValue: String) {
        this.tagNumber = arg_tagNumber
        this.tagClass = arg_tagClass
        this.tagLength = 0
        this._dataValue = arg_dataValue
        this.applicationDatatype = BACnetApplicationDatatypesChoice.CharacterString
        this.encodeCharSet = BACnetCharSetChoice.UTF_8
    }

    public static func decodingBACnetStringArray(arg_array: Array<Byte>): (value: String, char_set: BACnetCharSetChoice) {
        var _rtu: (value: String, char_set: BACnetCharSetChoice) = ("", BACnetCharSetChoice.UTF_8)
        let _characterSet = arg_array[0]
        try {
            match (_characterSet) {
                case 0 =>
                    let _content = arg_array[1..]
                    _rtu = (String.fromUtf8(_content), BACnetCharSetChoice.UTF_8)
                case 1 =>
                    let _codePageNum_byte = arg_array[1..3]
                    let _content = arg_array[3..]
                    let _codePageNum = UInt16.readBigEndian(_codePageNum_byte)
                    let _theCharSet_Option = Charsets.forName("cp" + _codePageNum.toString())
                    match (_theCharSet_Option) {
                        case Some(_theCharSet) => _rtu = (_theCharSet.newDecoder().decode(_content),
                            BACnetCharSetChoice.CodePage(_codePageNum))
                        //在charset4cj没有相应字符集就用Utf8解码
                        case None => _rtu = (String.fromUtf8(_content), BACnetCharSetChoice.UTF_8)
                    }
                case 2 =>
                    let _content = arg_array[1..]
                    let _theCharSet = Charsets.ISO_2022_JP
                    _rtu = (_theCharSet.newDecoder().decode(_content), BACnetCharSetChoice.JISX0208)
                case 3 =>
                    let _content = arg_array[1..]
                    let _theCharSet = Charsets.UTF32BE
                    _rtu = (_theCharSet.newDecoder().decode(_content), BACnetCharSetChoice.UTF_32)
                case 4 =>
                    let _content = arg_array[1..]
                    let _theCharSet = Charsets.UTF16BE
                    _rtu = (_theCharSet.newDecoder().decode(_content), BACnetCharSetChoice.UTF_16)
                case 5 =>
                    let _content = arg_array[1..]
                    let _theCharSet = Charsets.WINDOWS_1252
                    _rtu = (_theCharSet.newDecoder().decode(_content), BACnetCharSetChoice.ISO_8859_1)
                //可能是忘写编码号了，会使用UTF_8来做解码
                case _ =>
                    let _content = arg_array[0..]
                    _rtu = (String.fromUtf8(_content), BACnetCharSetChoice.UTF_8)
                //case _ => throw BACnetDecodeError("协议错误.无效字符集")
            }
        } catch (e: Exception) {
            //解码出现异常时，会使用UTF_8来做解码
            try {
                let _content = arg_array[1..]
                _rtu = (String.fromUtf8(_content), BACnetCharSetChoice.UTF_8)
                return _rtu
            } catch (e: Exception) {
                //UTF_8解码仍然异常，没得救了
                _rtu = ("String Decode ERROR 字符串解码异常", BACnetCharSetChoice.UTF_8)
                return _rtu
            }
        }
        return _rtu
    }

    public func encodingStringToBACnetStringArray(arg_string: String, arg_BACnetCharSet: BACnetCharSetChoice): Array<Byte> {
        var _rtu_Data: Array<Byte> = Array<Byte>()
        var _rtu: Array<Byte> = Array<Byte>()
        try {
            match (arg_BACnetCharSet) {
                case BACnetCharSetChoice.UTF_8 =>
                    _rtu_Data = arg_string.toArray()
                    _rtu = Array<Byte>(_rtu_Data.size + 1, repeat: 0)
                    _rtu[0] = 0
                    _rtu_Data.copyTo(_rtu, 0, 1, _rtu_Data.size)
                case BACnetCharSetChoice.CodePage(_pageNum) =>
                    let _theCharSet_Option = Charsets.forName("cp" + _pageNum.toString())
                    match (_theCharSet_Option) {
                        case Some(_charSet) =>
                            _rtu_Data = _charSet.newEncoder().encode(arg_string)
                            _rtu = Array<Byte>(_rtu_Data.size + 3, repeat: 0)
                            _rtu[0] = 1
                            let _pn = Array<Byte>(2, repeat: 0)
                            _pageNum.writeBigEndian(_pn)
                            _pn.copyTo(_rtu, 0, 1, 2)
                            _rtu_Data.copyTo(_rtu, 0, 3, _rtu_Data.size)
                        //在charset4cj没有相应字符集就用Utf8编码
                        case None =>
                            _rtu_Data = arg_string.toArray()
                            _rtu = Array<Byte>(_rtu_Data.size + 1, repeat: 0)
                            _rtu[0] = 0
                            _rtu_Data.copyTo(_rtu, 0, 1, _rtu_Data.size)
                    }
                case BACnetCharSetChoice.JISX0208 =>
                    _rtu_Data = Charsets.ISO_2022_JP.newEncoder().encode(arg_string)
                    _rtu = Array<Byte>(_rtu_Data.size + 1, repeat: 0)
                    _rtu[0] = 2
                    _rtu_Data.copyTo(_rtu, 0, 1, _rtu_Data.size)
                case BACnetCharSetChoice.UTF_32 =>
                    _rtu_Data = Charsets.UTF32BE.newEncoder().encode(arg_string)
                    _rtu = Array<Byte>(_rtu_Data.size + 1, repeat: 0)
                    _rtu[0] = 3
                    _rtu_Data.copyTo(_rtu, 0, 1, _rtu_Data.size)
                case BACnetCharSetChoice.UTF_16 =>
                    _rtu_Data = Charsets.UTF16BE.newEncoder().encode(arg_string)
                    _rtu = Array<Byte>(_rtu_Data.size + 1, repeat: 0)
                    _rtu[0] = 4
                    _rtu_Data.copyTo(_rtu, 0, 1, _rtu_Data.size)
                case BACnetCharSetChoice.ISO_8859_1 =>
                    _rtu_Data = Charsets.WINDOWS_1252.newEncoder().encode(arg_string)
                    _rtu = Array<Byte>(_rtu_Data.size + 1, repeat: 0)
                    _rtu[0] = 5
                    _rtu_Data.copyTo(_rtu, 0, 1, _rtu_Data.size)
            }
        } catch (e: Exception) {
            //编码出错了，则使用UTF_8编码字段
            _rtu_Data = arg_string.toArray()
            _rtu = Array<Byte>(_rtu_Data.size + 1, repeat: 0)
            _rtu[0] = 0
            _rtu_Data.copyTo(_rtu, 0, 1, _rtu_Data.size)
            //println(e)
        }

        return _rtu
    }

    public static func decodingPrimitiveDataFromArrayByte(packet: ByteBuf): BACnetApplicationDatatype {
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000) >> 3
        if (_classBit == 1) {
            throw BACnetDecodeError("解码错误:使用原语类型解码函数解析上下文指定编码")
        }
        let _tagNum = (_appTag & 0b1111_0000) >> 4
        if (_tagNum == 7) {
            //是CharacterString量
            var _rtu = BACnet_CharacterString()
            _rtu.applicationDatatype = BACnetApplicationDatatypesChoice.CharacterString
            _rtu.tagNumber = _tagNum
            _rtu.tagClass = BACnetTagClassChoice.applicationTag
            let _tagLen = readBACnetApplicationDataLength(_appTag, packet)
            _rtu.tagLength = _tagLen
            let _dataOct = packet.read_FromBuff(Int64(_tagLen))
            (_rtu.dataValue, _rtu.encodeCharSet) = decodingBACnetStringArray(_dataOct)
            return _rtu
        } else {
            packet.cursorMoveBackward(1)
            let _rtu = BACnetApplicationDatatype.decodingFromArrayByte(packet)
            return _rtu
        }
    }

    public func decodingContextSpecificDataFromArrayByte(packet: ByteBuf): Unit {
        let _appTag = packet.read_UInt8_FromBuf();

        let _classBit = (_appTag & 0b0000_1000) >> 3
        if (_classBit == 0) {
            throw BACnetDecodeError("解码错误:使用上下文指定类型解码函数解码原语类型")
        }
        this.tagClass = BACnetTagClassChoice.contextSpecificTag

        let _tagNum = readContextSpecificTagNumber(_appTag, packet)
        this.tagNumber = _tagNum
        let _tagLen = readBACnetApplicationDataLength(_appTag, packet)
        this.tagLength = _tagLen

        let _dataOct = packet.read_FromBuff(Int64(_tagLen))
        (this.dataValue, this.encodeCharSet) = decodingBACnetStringArray(_dataOct)
        this.applicationDatatype = BACnetApplicationDatatypesChoice.CharacterString
        return
    }

    public func encodingToPrimitiveData(): Array<Byte> {
        this.tagNumber = 7
        var _value_Array = encodingStringToBACnetStringArray(this.dataValue, this.encodeCharSet)
        this.tagLength = UInt32(_value_Array.size)
        let _tagHead = encodingToApplicationDataTagHead(this.tagNumber, this.tagLength,
            BACnetTagClassChoice.applicationTag)
        let _rtu_len = _tagHead.size + _value_Array.size
        var _rtu: Array<Byte> = Array<Byte>(_rtu_len, repeat: 0)
        _tagHead.copyTo(_rtu, 0, 0, _tagHead.size)
        _value_Array.copyTo(_rtu, 0, _tagHead.size, _value_Array.size)
        return _rtu
    }

    public func encodingToContextSpecificData(): Array<Byte> {
        var _value_Array = encodingStringToBACnetStringArray(this.dataValue, this.encodeCharSet)
        this.tagLength = UInt32(_value_Array.size)
        let _tagHead = encodingToApplicationDataTagHead(this.tagNumber, this.tagLength,
            BACnetTagClassChoice.contextSpecificTag)
        let _rtu_len = _tagHead.size + _value_Array.size
        var _rtu: Array<Byte> = Array<Byte>(_rtu_len, repeat: 0)
        _tagHead.copyTo(_rtu, 0, 0, _tagHead.size)
        _value_Array.copyTo(_rtu, 0, _tagHead.size, _value_Array.size)
        return _rtu
    }
}
