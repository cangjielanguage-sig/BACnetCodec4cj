package BACnetCodec4cj.BACnet

import BACnetCodec4cj.InterFaces.{ICodecContextSpecificData,ICodecPrimitiveData,IHaveTag,IHaveDataValue,BACnet_TagClass_Enum} 
import BACnetCodec4cj.BACnetCodecException.DecodeException.DecodeException
import BACnetCodec4cj.Utility.ByteBuf.ByteBuf
import std.binary.*

public class BACnet_Double <: ICodecPrimitiveData<BACnet_Double> 
& ICodecContextSpecificData<BACnet_Double>
& IHaveTag
& IHaveDataValue<Float64> 
{
    private var _tagNumber: UInt8 = 5
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

    private var _tagLength: UInt32 = 8
    public mut prop tagLength: UInt32 {
        get() {
            return _tagLength
        }
        set(arg_Value) {
            _tagLength = arg_Value
        }
    }

    private var _applicationDatatype: BACnet_ApplicationDataTypes_Enum = BACnet_ApplicationDataTypes_Enum.double
    public mut prop applicationDatatype: BACnet_ApplicationDataTypes_Enum {
        get() {
            return _applicationDatatype
        }
        set(arg_Value) {
            _applicationDatatype = arg_Value
        }
    }

    private var _dataValue: Float64 = 0.0
    public mut prop dataValue: Float64 {
        get() {
            return _dataValue
        }
        set(arg_Value) {
            _dataValue = arg_Value
        }
    }

    public init() {
        this.tagNumber = 5
        this.tagClass = BACnet_TagClass_Enum.application_tag
        this._dataValue = 0.0
        this.tagLength = 8
        this.applicationDatatype = BACnet_ApplicationDataTypes_Enum.double
    }

    public init(arg_tagNumber: UInt8, arg_tagClass: BACnet_TagClass_Enum, arg_dataValue: Float64) {
        this.tagNumber = arg_tagNumber
        this.tagClass = arg_tagClass
        this.tagLength = 8
        this._dataValue = arg_dataValue
        this.applicationDatatype = BACnet_ApplicationDataTypes_Enum.double
    }

    public static func decodingPrimitiveDataFromArrayByte(packet: ByteBuf): BACnet_Double {
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000) >> 3
        if (_classBit == 1) {
            throw DecodeException("解码错误:使用原语类型解码函数解析上下文指定编码")
        }
        let _tagNum = (_appTag & 0b1111_0000) >> 4
        if (_tagNum == 5) {
            //是Double量
            var _rtu = BACnet_Double()
            _rtu.applicationDatatype = BACnet_ApplicationDataTypes_Enum.double
            _rtu.tagNumber = _tagNum
            _rtu.tagClass = BACnet_TagClass_Enum.application_tag
            var _len = _appTag & 0b0000_0111
            if (_len != 0b0000_0101) {
                throw DecodeException("解码错误:BACnet_Double数据的Tag_length域必须是0b0000_0101")
            }
            let _tagLen = UInt32(packet.read_UInt8_FromBuf());
            _rtu.tagLength = _tagLen

            if (_rtu.tagLength != 8) {
                throw DecodeException("解码错误:无法识别长度为${_rtu.tagLength}的BACnet_Double数据")
            }
            _rtu.dataValue = packet.read_Float64_FromBuff()
            return _rtu
        } else {
            throw DecodeException("解码错误:无法识别的BACnet_Double数据")
        }
    }

    public static func decodingContextSpecificDataFromArrayByte(packet: ByteBuf,arg_tagNumber: UInt8): BACnet_Double {
        let _appTag = packet.read_UInt8_FromBuf();

        let _classBit = (_appTag & 0b0000_1000) >> 3
        if (_classBit == 0) {
            throw DecodeException("解码错误:使用上下文指定类型解码函数解码原语类型")
        }
        var _rtu = BACnet_Double()
        _rtu.tagClass = BACnet_TagClass_Enum.contextSpecific_tag

        var _len = _appTag & 0b0000_0111
        if (_len != 0b0000_0101) {
            throw DecodeException("解码错误:BACnet_Double数据的Tag_length域必须是0b0000_0101")
        }

        let _tagNum = readContextSpecificTagNumber(_appTag, packet)
        _rtu.tagNumber = _tagNum
        if(_tagNum != arg_tagNumber){
            throw DecodeException("解码错误:上下文编号与预期不同")
        }

        let _tagLen = UInt32(packet.read_UInt8_FromBuf());
        _rtu.tagLength = _tagLen

        if (_rtu.tagLength != 8) {
            throw DecodeException("解码错误:无法识别长度为${_rtu.tagLength}的BACnet_Double数据")
        }
        _rtu.dataValue = packet.read_Float64_FromBuff()

        _rtu.applicationDatatype = BACnet_ApplicationDataTypes_Enum.double

        return _rtu
    }

    public func encodingToPrimitiveData(): Array<Byte> {
        let _tagNum: UInt8 = 5 << 4
        var _applicationTag = 0b0000_0000u8
        _applicationTag = _applicationTag | _tagNum
        _applicationTag = _applicationTag | 0b0000_0000
        let _len: UInt8 = 8

        this.tagLength = UInt32(_len)
        var _value_Array = Array<Byte>(8, repeat: 0)
        this.dataValue.writeBigEndian(_value_Array)
        //因为长度固定为8，在5~253范围内，所以tagLength域
        //固定为0b0101,并在随后的一个字节里标实际长度
        _applicationTag = _applicationTag | 0b0000_0101
        var _rtu: Array<Byte> = Array<Byte>(Int64(_len + 2), repeat: 0)
        _rtu[0] = _applicationTag
        _rtu[1] = _len
        _value_Array.copyTo(_rtu, Int64(8 - _len), 2, Int64(_len))
        return _rtu
    }

    public func encodingToContextSpecificData(): Array<Byte> {
        var _rtu: Array<Byte>
        this.tagLength = 8
        var _taghead_buf = encodingToApplicationDataTagHead(this.tagNumber, this.tagLength,
            BACnet_TagClass_Enum.contextSpecific_tag)
        let _rtu_len = _taghead_buf.size + 8
        _rtu = Array<Byte>(_rtu_len, repeat: 0u8)
        _taghead_buf.copyTo(_rtu, 0, 0, _taghead_buf.size)
        let _data_index = _rtu_len - 8
        var _value_Array = Array<Byte>(8, repeat: 0)
        this.dataValue.writeBigEndian(_value_Array)
        _value_Array.copyTo(_rtu, 0, _data_index, 8)
        return _rtu
    }
}

/*
--ISO_16484_5_2022_Page_891
--21.5 Application Types

Double ::=  [APPLICATION 5] OCTET STRING (SIZE(8)) -- ANSI/IEEE-754 double precision floating point
*/
