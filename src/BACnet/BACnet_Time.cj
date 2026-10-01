package BACnetCodec4cj.BACnet

import BACnetCodec4cj.InterFaces.{ICodecContextSpecificData,ICodecPrimitiveData,IHaveTag,IHaveDataValue,BACnet_TagClass_Enum} 
import BACnetCodec4cj.BACnetCodecException.DecodeException.DecodeException
import BACnetCodec4cj.Utility.ByteBuf.ByteBuf
import std.time.{DateTime,TimeZone}

public class BACnet_Time <: ICodecPrimitiveData<BACnet_Time> 
& ICodecContextSpecificData<BACnet_Time>
& IHaveTag 
& IHaveDataValue<DateTime> 
{
    private var _tagNumber: UInt8 = 11
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

    private var _applicationDatatype: BACnet_ApplicationDataTypes_Enum = BACnet_ApplicationDataTypes_Enum.time
    public mut prop applicationDatatype: BACnet_ApplicationDataTypes_Enum {
        get() {
            return _applicationDatatype
        }
        set(arg_Value) {
            _applicationDatatype = arg_Value
        }
    }

    //使用系统自带日期时间定义，当试图使用一些非法的日期值会直接抛出异常
    private var _dataValue: DateTime = DateTime.now()
    public mut prop dataValue: DateTime {
        get() {
            return _dataValue
        }
        set(arg_Value) {
            _dataValue = arg_Value
        }
    }

    public init() {
        this.tagNumber = 11
        this.tagClass = BACnet_TagClass_Enum.application_tag
        this._dataValue = DateTime.now()
        this.tagLength = 4
        this.applicationDatatype = BACnet_ApplicationDataTypes_Enum.time
    }

    public init(arg_tagNumber: UInt8, arg_tagClass: BACnet_TagClass_Enum, arg_dataValue: DateTime) {
        this.tagNumber = arg_tagNumber
        this.tagClass = arg_tagClass
        this.tagLength = 4
        this._dataValue = arg_dataValue
        this.applicationDatatype = BACnet_ApplicationDataTypes_Enum.time
    }

    public static func decodingPrimitiveDataFromArrayByte(packet: ByteBuf): BACnet_Time {
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000) >> 3
        if (_classBit == 1) {
            throw DecodeException("解码错误:使用原语类型解码函数解析上下文指定编码")
        }
        let _tagNum = (_appTag & 0b1111_0000) >> 4
        if (_tagNum == 11) {
            //是Time量
            var _rtu = BACnet_Time()
            _rtu.applicationDatatype = BACnet_ApplicationDataTypes_Enum.time
            _rtu.tagNumber = _tagNum
            _rtu.tagClass = BACnet_TagClass_Enum.application_tag
            var _len = UInt32(_appTag & 0b0000_0111)
            _rtu.tagLength = _len

            if (_len != 4) {
                throw DecodeException("解码错误:无法识别长度为${_len}的BACnet_Time数据")
            }
            let _dataArray = packet.read_FromBuff(4)
            let _hour = Int64(_dataArray[0])
            let _minute = Int64(_dataArray[1])
            let _second = Int64(_dataArray[2])
            let _nanosecond = Int64(_dataArray[2]) * 10000000
            _rtu.dataValue = DateTime.of(year: 2025, month: 1, dayOfMonth: 1, hour: _hour, minute: _minute,
                second: _second, nanosecond: _nanosecond, timeZone: TimeZone.Local)
            return _rtu
        } else {
            throw DecodeException("解码错误:无法识别的BACnet_Time数据")
        }
    }

    public static func decodingContextSpecificDataFromArrayByte(packet: ByteBuf,arg_tagNumber: UInt8): BACnet_Time {
        let _appTag = packet.read_UInt8_FromBuf();

        let _classBit = (_appTag & 0b0000_1000) >> 3
        if (_classBit == 0) {
            throw DecodeException("解码错误:使用上下文指定类型解码函数解码原语类型")
        }
        var _rtu = BACnet_Time()
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
        let _dataArray = packet.read_FromBuff(4)
        let _hour = Int64(_dataArray[0])
        let _minute = Int64(_dataArray[1])
        let _second = Int64(_dataArray[2])
        let _nanosecond = Int64(_dataArray[2]) * 10000000
        _rtu.dataValue = DateTime.of(year: 2025, month: 1, dayOfMonth: 1, hour: _hour, minute: _minute, second: _second,
            nanosecond: _nanosecond, timeZone: TimeZone.Local)

        _rtu.applicationDatatype = BACnet_ApplicationDataTypes_Enum.time

        return _rtu
    }

    public func encodingToPrimitiveData(): Array<Byte> {
        let _tagNum: UInt8 = 11 << 4
        var _applicationTag = 0b0000_0000u8
        _applicationTag = _applicationTag | _tagNum
        _applicationTag = _applicationTag | 0b0000_0000
        let _len: UInt8 = 4

        this.tagLength = UInt32(_len)
        _applicationTag = _applicationTag | _len
        var _value_Array = Array<Byte>(4, repeat: 0)
        _value_Array[0] = UInt8(this.dataValue.hour & 0X00_00_00_00_00_00_00_FF)
        _value_Array[1] = UInt8(this.dataValue.minute & 0X00_00_00_00_00_00_00_FF)
        _value_Array[2] = UInt8(this.dataValue.second & 0X00_00_00_00_00_00_00_FF)
        _value_Array[3] = UInt8((this.dataValue.nanosecond / 10000000) & 0X00_00_00_00_00_00_00_FF)

        var _rtu: Array<Byte> = Array<Byte>(Int64(_len + 1), repeat: 0)
        _rtu[0] = _applicationTag
        _value_Array.copyTo(_rtu, Int64(4 - _len), 1, Int64(_len))
        return _rtu
    }

    public func encodingToContextSpecificData(): Array<Byte> {
        var _rtu: Array<Byte>
        this.tagLength = 4
        let _data_len = Int64(this.tagLength)
        let _taghead_buf = encodingToApplicationDataTagHead(this.tagNumber, this.tagLength,
            BACnet_TagClass_Enum.contextSpecific_tag)
        let _rtu_len = _taghead_buf.size + Int64(_data_len)
        _rtu = Array<Byte>(_rtu_len, repeat: 0u8)
        _taghead_buf.copyTo(_rtu, 0, 0, _taghead_buf.size)
        let _data_index = _rtu_len - _data_len

        var _value_Array = Array<Byte>(_data_len, repeat: 0)
        _value_Array[0] = UInt8(this.dataValue.hour & 0X00_00_00_00_00_00_00_FF)
        _value_Array[1] = UInt8(this.dataValue.minute & 0X00_00_00_00_00_00_00_FF)
        _value_Array[2] = UInt8(this.dataValue.second & 0X00_00_00_00_00_00_00_FF)
        _value_Array[3] = UInt8((this.dataValue.nanosecond / 10000000) & 0X00_00_00_00_00_00_00_FF)
        let _copyIndexStart = _value_Array.size - _data_len
        _value_Array.copyTo(_rtu, _copyIndexStart, _data_index, _data_len)
        return _rtu
    }
}

/*
--ISO_16484_5_2022_Page_891
--21.5 Application Types

Time ::= [APPLICATION 11] OCTET STRING (SIZE(4)) -- see Clause 20.2.13
-- first octet hour  (0..23), X'FF' = unspecified
-- second octet minute  (0..59), X'FF' = unspecified
-- third octet second  (0..59), X'FF' = unspecified
-- fourth octet hundredths (0..99) X'FF' = unspecified
*/
