package BACnetCodec4cj.BACnet

import BACnetCodec4cj.InterFaces.{ICodecContextSpecificData,ICodecPrimitiveData,IHaveTag,IHaveDataValue,BACnet_TagClass_Enum} 
import BACnetCodec4cj.BACnetCodecException.DecodeException.DecodeException
import BACnetCodec4cj.Utility.ByteBuf.ByteBuf
import std.binary.*

//BACnet 2022版里21.5 Application Types 第891页列出了具体的用户数据支持的类型
//注意，Int类型在BACnet 2022版里仅使用了Int16
//本库中使用了与UInt类型对称的范围，都支持到了64位整数，支持到了Int64
//实际使用时请使用Int16

public class BACnet_SignedInteger <: ICodecPrimitiveData<BACnet_SignedInteger> 
& ICodecContextSpecificData<BACnet_SignedInteger>
& IHaveTag
& IHaveDataValue<Int64> {
    private var _tagNumber: UInt8 = 3
    public mut prop tagNumber: UInt8 {
        get() {
            return _tagNumber
        }
        set(arg_Value) {
            _tagNumber = arg_Value
        }
    }

    private var _tagClass: BACnet_TagClass_Enum = BACnet_TagClass_Enum.application_tag
    public mut prop tagClass: BACnet_TagClass_Enum {
        get() {
            return _tagClass
        }
        set(arg_Value) {
            _tagClass = arg_Value
        }
    }

    private var _tagLength: UInt32 = 1
    public mut prop tagLength: UInt32 {
        get() {
            return _tagLength
        }
        set(arg_Value) {
            _tagLength = arg_Value
        }
    }

    private var _applicationDatatype: BACnet_ApplicationDataTypes_Enum = BACnet_ApplicationDataTypes_Enum.signed_integer
    public mut prop applicationDatatype: BACnet_ApplicationDataTypes_Enum {
        get() {
            return _applicationDatatype
        }
        set(arg_Value) {
            _applicationDatatype = arg_Value
        }
    }

    private var _dataValue: Int64 = 0
    public mut prop dataValue: Int64 {
        get() {
            return _dataValue
        }
        set(arg_Value) {
            _dataValue = arg_Value
        }
    }

    public init() {
        this.tagNumber = 3
        this.tagClass = BACnet_TagClass_Enum.application_tag
        this._dataValue = 0
        this.tagLength = 1
        this.applicationDatatype = BACnet_ApplicationDataTypes_Enum.signed_integer
    }

    public init(arg_tagNumber: UInt8, arg_tagClass: BACnet_TagClass_Enum, arg_dataValue: Int64) {
        this.tagNumber = arg_tagNumber
        this.tagClass = arg_tagClass
        this.tagLength = 1
        this._dataValue = arg_dataValue
        this.applicationDatatype = BACnet_ApplicationDataTypes_Enum.signed_integer
    }

    public static func decodingPrimitiveDataFromArrayByte(packet: ByteBuf): BACnet_SignedInteger {
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000) >> 3
        if (_classBit == 1) {
            throw DecodeException("解码错误:使用原语类型解码函数解析上下文指定编码")
        }
        let _tagNum = (_appTag & 0b1111_0000) >> 4
        if (_tagNum == 3) {
            //是BACnet_SignedInteger量
            var _rtu = BACnet_SignedInteger()
            _rtu.applicationDatatype = BACnet_ApplicationDataTypes_Enum.signed_integer
            _rtu.tagNumber = _tagNum
            _rtu.tagClass = BACnet_TagClass_Enum.application_tag

            let _tagLen = readBACnetApplicationDataLength(_appTag, packet)
            _rtu.tagLength = _tagLen

            if (_tagLen >= 1 && _tagLen <= 8) {
                _rtu.dataValue = packet.read_Int64_WithLength_FromBuff(Int64(_tagLen))
            } else {
                throw DecodeException("解码错误:无法识别长度为${_tagLen}的SignedInteger数据")
            }
            return _rtu
        } else {
            throw DecodeException("解码错误:无法识别的SignedInteger数据")
        }
    }

    public static func decodingContextSpecificDataFromArrayByte(packet: ByteBuf,arg_tagNumber: UInt8): BACnet_SignedInteger {
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000) >> 3
        if (_classBit == 0) {
            throw DecodeException("解码错误:使用上下文指定类型解码函数解码原语类型")
        }
        var _rtu = BACnet_SignedInteger()
        _rtu.tagClass = BACnet_TagClass_Enum.contextSpecific_tag

        let _tagNum = readContextSpecificTagNumber(_appTag, packet)
        _rtu.tagNumber = _tagNum
        if(_tagNum != arg_tagNumber){
            throw DecodeException("解码错误:上下文编号与预期不同")
        }

        let _tagLen = readBACnetApplicationDataLength(_appTag, packet)
        _rtu.tagLength = _tagLen

        if (_tagLen < 1 || _tagLen > 8) {
            throw DecodeException("解码错误:无法识别长度为${_tagLen}的SignedInteger数据")
        }

        _rtu.dataValue = packet.read_Int64_WithLength_FromBuff(Int64(_rtu.tagLength))

        _rtu.applicationDatatype = BACnet_ApplicationDataTypes_Enum.signed_integer

        return _rtu
    }

    public func encodingToPrimitiveData(): Array<Byte> {
        let _tagNum: UInt8 = 3 << 4
        var _applicationTag = 0u8
        _applicationTag = _applicationTag | _tagNum
        _applicationTag = _applicationTag | 0b0000_0000
        var _len: UInt8 = 1
        var _rtu: Array<Byte>

        if (dataValue >= -128 && dataValue <= 127) {
            //1字节数
            _len = 1
        } else if ((dataValue >= -32768 && dataValue < -128) || (dataValue > 127 && dataValue <= 32767)) {
            //2字节数
            _len = 2
        } else if ((dataValue >= -8388608 && dataValue < -32768) || (dataValue > 32767 && dataValue <= 8388607)) {
            //3字节数
            _len = 3
        } else if ((dataValue >= -2147483648 && dataValue < -8388608) || (dataValue > 8388607 && dataValue <= 2147483647)) {
            //4字节
            _len = 4
        } else if ((dataValue >= -549755813888 && dataValue < -2147483648) || (dataValue > 2147483647 && dataValue <=
            549755813887)) {
            //5字节
            _len = 5
        } else if ((dataValue >= -140737488355328 && dataValue < -549755813888) || (dataValue > 549755813887 &&
            dataValue <= 140737488355327)) {
            //6字节
            _len = 6
        } else if ((dataValue >= -36028797018963968 && dataValue < -140737488355328) || (dataValue > 140737488355327 &&
            dataValue <= 36028797018963967)) {
            //7字节
            _len = 7
        } else if ((dataValue >= -9223372036854775808 && dataValue < -36028797018963968) || (dataValue >
            36028797018963967 && dataValue <= 9223372036854775807)) {
            //8字节
            _len = 8
        }

        this.tagLength = UInt32(_len)
        var _data_len = Int64(this.tagLength)
        var _taghead_buf = encodingToApplicationDataTagHead(this.tagNumber, this.tagLength,
            BACnet_TagClass_Enum.application_tag)
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
        if (dataValue >= -128 && dataValue <= 127) {
            //1字节数
            _len = 1
        } else if ((dataValue >= -32768 && dataValue < -128) || (dataValue > 127 && dataValue <= 32767)) {
            //2字节数
            _len = 2
        } else if ((dataValue >= -8388608 && dataValue < -32768) || (dataValue > 32767 && dataValue <= 8388607)) {
            //3字节数
            _len = 3
        } else if ((dataValue >= -2147483648 && dataValue < -8388608) || (dataValue > 8388607 && dataValue <= 2147483647)) {
            //4字节
            _len = 4
        } else if ((dataValue >= -549755813888 && dataValue < -2147483648) || (dataValue > 2147483647 && dataValue <=
            549755813887)) {
            //5字节
            _len = 5
        } else if ((dataValue >= -140737488355328 && dataValue < -549755813888) || (dataValue > 549755813887 &&
            dataValue <= 140737488355327)) {
            //6字节
            _len = 6
        } else if ((dataValue >= -36028797018963968 && dataValue < -140737488355328) || (dataValue > 140737488355327 &&
            dataValue <= 36028797018963967)) {
            //7字节
            _len = 7
        } else if ((dataValue >= -9223372036854775808 && dataValue < -36028797018963968) || (dataValue >
            36028797018963967 && dataValue <= 9223372036854775807)) {
            //8字节
            _len = 8
        }

        //BACnet_SignedInteger的数据长度是随着值的大小不固定的,但不超过8字节
        this.tagLength = UInt32(_len)
        var _data_len = Int64(this.tagLength)
        var _taghead_buf = encodingToApplicationDataTagHead(this.tagNumber, this.tagLength,
            BACnet_TagClass_Enum.contextSpecific_tag)
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

 -- INTEGER [APPLICATION 3], equivalent to [UNIVERSAL 2]

INTEGER16 ::= INTEGER (-32768..32767)
*/
