package BACnetCodec4cj.BACnet.Types.ApplicationTypes

import BACnetCodec4cj.BACnet.Choice.*
import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import BACnetCodec4cj.Utility.*
import std.binary.*

//BACnet 2022版里21.5 Application Types 第891页列出了具体的用户数据支持的类型
//注意，UUInt类型在BACnet 2022版才开始支持，具体使用的地方不多
//本库中支持到了64位整数，支持到了UInt64
//实际使用时请主要使用UInt32，使用UInt64时请核对协议确保您要使用的属性确实需要使用UInt64

public class BACnet_UnsignedInteger <: BACnetApplicationDatatype & ICodecPrimitiveData<BACnetApplicationDatatype> & ICodecContextSpecificData & IHaveDataValue<UInt64> {
    private var _dataValue: UInt64 = 0
    public mut prop dataValue: UInt64 {
        get() {
            return _dataValue
        }
        set(arg_Value) {
            _dataValue = arg_Value
        }
    }

    public init() {
        this.tagNumber = 2
        this.tagClass = TagClass_Choice.applicationTag
        this._dataValue = 0
        this.tagLength = 1
        this.applicationDatatype = ApplicationTags.UnsignedInteger
    }

    public init(arg_tagNumber: UInt8, arg_tagClass: TagClass_Choice, arg_dataValue: UInt64) {
        this.tagNumber = arg_tagNumber
        this.tagClass = arg_tagClass
        this.tagLength = 1
        this._dataValue = arg_dataValue
        this.applicationDatatype = ApplicationTags.UnsignedInteger
    }

    public static func decodingPrimitiveDataFromArrayByte(packet: ByteBuf): BACnetApplicationDatatype {
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000) >> 3
        if (_classBit == 1) {
            throw DecodeException("解码错误:使用原语类型解码函数解析上下文指定编码")
        }
        let _tagNum = (_appTag & 0b1111_0000) >> 4
        if (_tagNum == 2) {
            //是UnsignedInteger量
            var _rtu = BACnet_UnsignedInteger()
            _rtu.applicationDatatype = ApplicationTags.UnsignedInteger
            _rtu.tagNumber = _tagNum
            _rtu.tagClass = TagClass_Choice.applicationTag

            let _tagLen = readBACnetApplicationDataLength(_appTag, packet)
            _rtu.tagLength = _tagLen

            if (_tagLen >= 1 && _tagLen <= 8) {
                _rtu.dataValue = packet.read_UInt64_WithLength_FromBuff(Int64(_tagLen))
            } else {
                throw DecodeException("解码错误:无法识别长度为${_tagLen}的UnsignedInteger数据")
            }
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

        if (_tagLen >= 1 && _tagLen <= 8) {
            this.dataValue = packet.read_UInt64_WithLength_FromBuff(Int64(_tagLen))
        } else {
            throw DecodeException("解码错误:无法识别长度为${_tagLen}的UnsignedInteger数据")
        }

        this.applicationDatatype = ApplicationTags.UnsignedInteger

        return
    }

    public func encodingToPrimitiveData(): Array<Byte> {
        let _tagNum: UInt8 = 2 << 4
        this.tagNumber = 2
        var _rtu: Array<Byte>
        var _applicationTag = 0u8
        _applicationTag = _applicationTag | _tagNum
        _applicationTag = _applicationTag | 0b0000_0000
        var _len: UInt8 = 1

        if (dataValue <= 255) {
            //1字节数
            _len = 1
        } else if (dataValue > 255 && dataValue <= 65535) {
            //2字节数
            _len = 2
        } else if (dataValue > 65535 && dataValue <= 16777215) {
            //3字节数
            _len = 3
        } else if (dataValue > 16777215 && dataValue <= 4294967295) {
            //4字节数
            _len = 4
        } else if (dataValue > 4294967295 && dataValue <= 1099511627775) {
            //5字节数
            _len = 5
        } else if (dataValue > 1099511627775 && dataValue <= 281474976710655) {
            //6字节数
            _len = 6
        } else if (dataValue > 281474976710655 && dataValue <= 72057594037927935) {
            //7字节数
            _len = 7
        } else if (dataValue > 72057594037927935 && dataValue <= 18446744073709551615) {
            //8字节数
            _len = 8
        }
        this.tagLength = UInt32(_len)

        var _data_len = Int64(this.tagLength)
        var _taghead_buf = encodingToApplicationDataTagHead(this.tagNumber, this.tagLength,
            TagClass_Choice.applicationTag)
        let _rtu_len = _taghead_buf.size + Int64(_data_len)
        _rtu = Array<Byte>(_rtu_len, repeat: 0u8)
        _taghead_buf.copyTo(_rtu, 0, 0, _taghead_buf.size)
        let _data_index = _rtu_len - _data_len

        var _value_Array = Array<Byte>(8, repeat: 0)
        let _copyIndexStart = _value_Array.size - _data_len
        this.dataValue.writeBigEndian(_value_Array)
        _value_Array.copyTo(_rtu, _copyIndexStart, _data_index, _data_len)
        return _rtu
    }

    public func encodingToContextSpecificData(): Array<Byte> {
        var _rtu: Array<Byte>
        var _len: UInt8 = 1
        if (dataValue <= 255) {
            //1字节数
            _len = 1
        } else if (dataValue > 255 && dataValue <= 65535) {
            //2字节数
            _len = 2
        } else if (dataValue > 65535 && dataValue <= 16777215) {
            //3字节数
            _len = 3
        } else if (dataValue > 16777215 && dataValue <= 4294967295) {
            //4字节数
            _len = 4
        } else if (dataValue > 4294967295 && dataValue <= 1099511627775) {
            //5字节数
            _len = 5
        } else if (dataValue > 1099511627775 && dataValue <= 281474976710655) {
            //6字节数
            _len = 6
        } else if (dataValue > 281474976710655 && dataValue <= 72057594037927935) {
            //7字节数
            _len = 7
        } else if (dataValue > 72057594037927935 && dataValue <= 18446744073709551615) {
            //8字节数
            _len = 8
        }
        //BACnet_SignedInteger的数据长度是随着值的大小不固定的,但不超过8字节
        this.tagLength = UInt32(_len)

        var _data_len = Int64(this.tagLength)
        var _taghead_buf = encodingToApplicationDataTagHead(this.tagNumber, this.tagLength,
            TagClass_Choice.contextSpecificTag)
        let _rtu_len = _taghead_buf.size + Int64(_data_len)
        _rtu = Array<Byte>(_rtu_len, repeat: 0u8)
        _taghead_buf.copyTo(_rtu, 0, 0, _taghead_buf.size)
        let _data_index = _rtu_len - _data_len

        var _value_Array = Array<Byte>(8, repeat: 0)
        let _copyIndexStart = _value_Array.size - _data_len
        this.dataValue.writeBigEndian(_value_Array)
        _value_Array.copyTo(_rtu, _copyIndexStart, _data_index, _data_len)
        return _rtu
    }
}

/*
--ISO_16484_5_2022_Page_891
--21.5 Application Types

Unsigned ::= [APPLICATION 2] INTEGER (0..MAX)

Unsigned8 ::= Unsigned (0..255)

Unsigned16 ::= Unsigned (0..65535)

Unsigned32 ::= Unsigned (0..4294967295)

Unsigned64 ::= Unsigned (0.. 18446744073709551615) -- 0 .. 'the 64th power of two'-1
*/
