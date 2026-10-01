package BACnetCodec4cj.BACnet

import BACnetCodec4cj.InterFaces.{ICodecContextSpecificData,ICodecPrimitiveData,IHaveTag,IHaveDataValue,BACnet_TagClass_Enum} 
import BACnetCodec4cj.BACnetCodecException.DecodeException.DecodeException
import BACnetCodec4cj.Utility.ByteBuf.ByteBuf
import std.binary.*

public class BACnet_Real <: ICodecPrimitiveData<BACnet_Real> 
& ICodecContextSpecificData<BACnet_Real>
& IHaveTag 
& IHaveDataValue<Float32> 
{
    private var _tagNumber: UInt8 = 4
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

    private var _tagLength: UInt32 = 4
    public mut prop tagLength: UInt32 {
        get() {
            return _tagLength
        }
        set(arg_Value) {
            _tagLength = arg_Value
        }
    }

    private var _applicationDatatype: BACnet_ApplicationDataTypes_Enum = BACnet_ApplicationDataTypes_Enum.real
    public mut prop applicationDatatype: BACnet_ApplicationDataTypes_Enum {
        get() {
            return _applicationDatatype
        }
        set(arg_Value) {
            _applicationDatatype = arg_Value
        }
    }

    private var _dataValue: Float32 = 0.0
    public mut prop dataValue: Float32 {
        get() {
            return _dataValue
        }
        set(arg_Value) {
            _dataValue = arg_Value
        }
    }

    public init() {
        this.tagNumber = 4
        this.tagClass = BACnet_TagClass_Enum.application_tag
        this._dataValue = 0.0
        this.tagLength = 4
        this.applicationDatatype = BACnet_ApplicationDataTypes_Enum.real
    }

    public init(arg_tagNumber: UInt8, arg_tagClass: BACnet_TagClass_Enum, arg_dataValue: Float32) {
        this.tagNumber = arg_tagNumber
        this.tagClass = arg_tagClass
        this.tagLength = 4
        this._dataValue = arg_dataValue
        this.applicationDatatype = BACnet_ApplicationDataTypes_Enum.real
    }

    public static func decodingPrimitiveDataFromArrayByte(packet: ByteBuf): BACnet_Real {
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000) >> 3
        if (_classBit == 1) {
            throw DecodeException("解码错误:使用原语类型解码函数解析上下文指定编码")
        }
        let _tagNum = (_appTag & 0b1111_0000) >> 4
        if (_tagNum == 4) {
            //是Real量
            var _rtu = BACnet_Real()
            _rtu.applicationDatatype = BACnet_ApplicationDataTypes_Enum.real
            _rtu.tagNumber = _tagNum
            _rtu.tagClass = BACnet_TagClass_Enum.application_tag
            var _len = UInt32(_appTag & 0b0000_0111)
            _rtu.tagLength = _len

            if (_len != 4) {
                throw DecodeException("解码错误:无法识别长度为${_len}的BACnet_Real数据")
            }
            _rtu.dataValue = packet.read_Float32_FromBuff()
            return _rtu
        } else {
            throw DecodeException("解码错误:无法识别的BACnet_Real数据")
        }
    }

    public static func decodingContextSpecificDataFromArrayByte(packet: ByteBuf,arg_tagNumber: UInt8): BACnet_Real {
        let _appTag = packet.read_UInt8_FromBuf();

        let _classBit = (_appTag & 0b0000_1000) >> 3
        if (_classBit == 0) {
            throw DecodeException("解码错误:使用上下文指定类型解码函数解码原语类型")
        }
        var _rtu = BACnet_Real()
        _rtu.tagClass = BACnet_TagClass_Enum.contextSpecific_tag

        var _len = UInt32(_appTag & 0b0000_0111)
        if (_len != 4) {
            throw DecodeException("解码错误:无法识别长度为${_len}的UnsignedInteger数据")
        }

        let _tagNum = readContextSpecificTagNumber(_appTag, packet)
        _rtu.tagNumber = _tagNum
        if(_tagNum != arg_tagNumber){
            throw DecodeException("解码错误:上下文编号与预期不同")
        }

        _rtu.tagLength = _len
        _rtu.dataValue = packet.read_Float32_FromBuff()

        _rtu.applicationDatatype = BACnet_ApplicationDataTypes_Enum.real

        return _rtu
    }

    public func encodingToPrimitiveData(): Array<Byte> {
        let _tagNum: UInt8 = 4 << 4
        var _applicationTag = 0b0000_0000u8
        _applicationTag = _applicationTag | _tagNum
        _applicationTag = _applicationTag | 0b0000_0000
        let _len: UInt8 = 4

        this.tagLength = UInt32(_len)
        _applicationTag = _applicationTag | _len
        var _value_Array = Array<Byte>(4, repeat: 0)
        this.dataValue.writeBigEndian(_value_Array)

        var _rtu: Array<Byte> = Array<Byte>(Int64(_len + 1), repeat: 0)
        _rtu[0] = _applicationTag
        _value_Array.copyTo(_rtu, Int64(4 - _len), 1, Int64(_len))
        return _rtu
    }

    public func encodingToContextSpecificData(): Array<Byte> {
        var _rtu: Array<Byte>
        // if(this.tagLength != 4){
        //     throw  DecodeException("解码错误:检测到AppTag长度为${this.tagLength},BACnet的Real量长度固定为4,${this.tagLength}是个无法识别的Bool数据长度")
        // }
        this.tagLength = 4
        let _data_len = Int64(this.tagLength)
        let _taghead_buf = encodingToApplicationDataTagHead(this.tagNumber, this.tagLength,
            BACnet_TagClass_Enum.contextSpecific_tag)
        let _rtu_len = _taghead_buf.size + Int64(_data_len)
        _rtu = Array<Byte>(_rtu_len, repeat: 0u8)
        _taghead_buf.copyTo(_rtu, 0, 0, _taghead_buf.size)
        let _data_index = _rtu_len - _data_len

        var _value_Array = Array<Byte>(_data_len, repeat: 0)
        this.dataValue.writeBigEndian(_value_Array)
        let _copyIndexStart = _value_Array.size - _data_len
        _value_Array.copyTo(_rtu, _copyIndexStart, _data_index, _data_len)
        return _rtu
    }
}

/*
--ISO_16484_5_2022_Page_891
--21.5 Application Types

 -- REAL [APPLICATION 4], equivalent to [UNIVERSAL 9] ANSI/IEEE-754 single precision floating point
*/
