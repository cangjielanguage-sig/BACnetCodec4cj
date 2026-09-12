package BACnetCodec4cj.BACnet.Types.ApplicationTypes

import BACnetCodec4cj.BACnet.Choice.*
import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import BACnetCodec4cj.Utility.*
import std.binary.*
import charset4cj.*

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

    private var _encodeCharSet: CharSet_Choice = CharSet_Choice.UTF_8
    public mut prop encodeCharSet: CharSet_Choice {
        get() {
            return _encodeCharSet
        }
        set(arg_Value) {
            _encodeCharSet = arg_Value
        }
    }

    public init() {
        this.tagNumber = 7
        this.tagClass = TagClass_Choice.applicationTag
        this._dataValue = ""
        this.applicationDatatype = ApplicationTags.CharacterString
        this.encodeCharSet = CharSet_Choice.UTF_8
    }

    public init(arg_tagNumber: UInt8, arg_tagClass: TagClass_Choice, arg_dataValue: String) {
        this.tagNumber = arg_tagNumber
        this.tagClass = arg_tagClass
        this.tagLength = 0
        this._dataValue = arg_dataValue
        this.applicationDatatype = ApplicationTags.CharacterString
        this.encodeCharSet = CharSet_Choice.UTF_8
    }

    public static func decodingBACnetStringArray(arg_array: Array<Byte>): (value: String, char_set: CharSet_Choice) {
        var _rtu: (value: String, char_set: CharSet_Choice) = ("", CharSet_Choice.UTF_8)
        let _characterSet = arg_array[0]
        try {
            match (_characterSet) {
                case 0 =>
                    let _content = arg_array[1..]
                    _rtu = (String.fromUtf8(_content), CharSet_Choice.UTF_8)
                case 1 =>
                    let _codePageNum_byte = arg_array[1..3]
                    let _content = arg_array[3..]
                    let _codePageNum = UInt16.readBigEndian(_codePageNum_byte)
                    let _theCharSet_Option = Charsets.forName("cp" + _codePageNum.toString())
                    match (_theCharSet_Option) {
                        case Some(_theCharSet) => _rtu = (_theCharSet.newDecoder().decode(_content),
                            CharSet_Choice.CodePage(_codePageNum))
                        //在charset4cj没有相应字符集就用Utf8解码
                        case None => _rtu = (String.fromUtf8(_content), CharSet_Choice.UTF_8)
                    }
                case 2 =>
                    let _content = arg_array[1..]
                    let _theCharSet = Charsets.ISO_2022_JP
                    _rtu = (_theCharSet.newDecoder().decode(_content), CharSet_Choice.JISX0208)
                case 3 =>
                    let _content = arg_array[1..]
                    let _theCharSet = Charsets.UTF32BE
                    _rtu = (_theCharSet.newDecoder().decode(_content), CharSet_Choice.UTF_32)
                case 4 =>
                    let _content = arg_array[1..]
                    let _theCharSet = Charsets.UTF16BE
                    _rtu = (_theCharSet.newDecoder().decode(_content), CharSet_Choice.UTF_16)
                case 5 =>
                    let _content = arg_array[1..]
                    let _theCharSet = Charsets.WINDOWS_1252
                    _rtu = (_theCharSet.newDecoder().decode(_content), CharSet_Choice.ISO_8859_1)
                //可能是忘写编码号了，会使用UTF_8来做解码
                case _ =>
                    let _content = arg_array[0..]
                    _rtu = (String.fromUtf8(_content), CharSet_Choice.UTF_8)
                //case _ => throw DecodeException("协议错误.无效字符集")
            }
        } catch (e: Exception) {
            //解码出现异常时，会使用UTF_8来做解码
            try {
                let _content = arg_array[1..]
                _rtu = (String.fromUtf8(_content), CharSet_Choice.UTF_8)
                return _rtu
            } catch (e: Exception) {
                //UTF_8解码仍然异常，没得救了
                _rtu = ("String Decode ERROR 字符串解码异常", CharSet_Choice.UTF_8)
                return _rtu
            }
        }
        return _rtu
    }

    public func encodingStringToBACnetStringArray(arg_string: String, arg_BACnetCharSet: CharSet_Choice): Array<Byte> {
        var _rtu_Data: Array<Byte> = Array<Byte>()
        var _rtu: Array<Byte> = Array<Byte>()
        try {
            match (arg_BACnetCharSet) {
                case CharSet_Choice.UTF_8 =>
                    _rtu_Data = arg_string.toArray()
                    _rtu = Array<Byte>(_rtu_Data.size + 1, repeat: 0)
                    _rtu[0] = 0
                    _rtu_Data.copyTo(_rtu, 0, 1, _rtu_Data.size)
                case CharSet_Choice.CodePage(_pageNum) =>
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
                case CharSet_Choice.JISX0208 =>
                    _rtu_Data = Charsets.ISO_2022_JP.newEncoder().encode(arg_string)
                    _rtu = Array<Byte>(_rtu_Data.size + 1, repeat: 0)
                    _rtu[0] = 2
                    _rtu_Data.copyTo(_rtu, 0, 1, _rtu_Data.size)
                case CharSet_Choice.UTF_32 =>
                    _rtu_Data = Charsets.UTF32BE.newEncoder().encode(arg_string)
                    _rtu = Array<Byte>(_rtu_Data.size + 1, repeat: 0)
                    _rtu[0] = 3
                    _rtu_Data.copyTo(_rtu, 0, 1, _rtu_Data.size)
                case CharSet_Choice.UTF_16 =>
                    _rtu_Data = Charsets.UTF16BE.newEncoder().encode(arg_string)
                    _rtu = Array<Byte>(_rtu_Data.size + 1, repeat: 0)
                    _rtu[0] = 4
                    _rtu_Data.copyTo(_rtu, 0, 1, _rtu_Data.size)
                case CharSet_Choice.ISO_8859_1 =>
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
            throw DecodeException("解码错误:使用原语类型解码函数解析上下文指定编码")
        }
        let _tagNum = (_appTag & 0b1111_0000) >> 4
        if (_tagNum == 7) {
            //是CharacterString量
            var _rtu = BACnet_CharacterString()
            _rtu.applicationDatatype = ApplicationTags.CharacterString
            _rtu.tagNumber = _tagNum
            _rtu.tagClass = TagClass_Choice.applicationTag
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
            throw DecodeException("解码错误:使用上下文指定类型解码函数解码原语类型")
        }
        this.tagClass = TagClass_Choice.contextSpecificTag

        let _tagNum = readContextSpecificTagNumber(_appTag, packet)
        this.tagNumber = _tagNum
        let _tagLen = readBACnetApplicationDataLength(_appTag, packet)
        this.tagLength = _tagLen

        let _dataOct = packet.read_FromBuff(Int64(_tagLen))
        (this.dataValue, this.encodeCharSet) = decodingBACnetStringArray(_dataOct)
        this.applicationDatatype = ApplicationTags.CharacterString
        return
    }

    public func encodingToPrimitiveData(): Array<Byte> {
        this.tagNumber = 7
        var _value_Array = encodingStringToBACnetStringArray(this.dataValue, this.encodeCharSet)
        this.tagLength = UInt32(_value_Array.size)
        let _tagHead = encodingToApplicationDataTagHead(this.tagNumber, this.tagLength,
            TagClass_Choice.applicationTag)
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
            TagClass_Choice.contextSpecificTag)
        let _rtu_len = _tagHead.size + _value_Array.size
        var _rtu: Array<Byte> = Array<Byte>(_rtu_len, repeat: 0)
        _tagHead.copyTo(_rtu, 0, 0, _tagHead.size)
        _value_Array.copyTo(_rtu, 0, _tagHead.size, _value_Array.size)
        return _rtu
    }
}

/*
--ISO_16484_5_2022_Page_891
--21.5 Application Types

CharacterString ::=  [APPLICATION 7] OCTET STRING -- see Clause 20.2.9 for supported types
*/
