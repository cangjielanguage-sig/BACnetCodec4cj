package BACnetCodec4cj.Types.BACnetApplicationDatatypes
import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetException.*
import BACnetCodec4cj.ByteBuf.*
import std.binary.*
import std.time.*

public class BACnet_Date
<: BACnetApplicationDatatype
& ICodecBACnetApplicationData<BACnetApplicationDatatype>
& IHaveDataValue<DateTime>
{
    //使用系统自带日期时间定义，当试图使用一些非法的日期值会直接抛出异常

    private var _dataValue:DateTime = DateTime.now()
    public mut prop dataValue:DateTime{
        get(){ return _dataValue}
        set(arg_Value){_dataValue = arg_Value}
    }

    public init(){
        this.tagNumber = 10
        this.tagClass = BACnetTagClassChoice.applicationTag
        this._dataValue = DateTime.now()
        this.tagLength = 4
        this.applicationDatatype = BACnetApplicationDatatypesChoice.Date    
    }

    public init(arg_tagNumber:UInt8,
    arg_tagClass:BACnetTagClassChoice,
    arg_dataValue:DateTime)
    {
        this.tagNumber = arg_tagNumber
        this.tagClass = arg_tagClass
        this.tagLength = 4
        this._dataValue = arg_dataValue
        this.applicationDatatype = BACnetApplicationDatatypesChoice.Date
    }

    public static func decodingPrimitiveDataFromArrayByte(packet:ByteBuf): BACnetApplicationDatatype{
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000)>>3
        if(_classBit == 1){
            throw BACnetDecodeErro("解码错误:使用原语类型解码函数解析上下文指定编码")
        }
        let _tagNum = (_appTag & 0b1111_0000)>>4
        if (_tagNum == 10) {
            //是Date量
            var _rtu = BACnet_Date()
            _rtu.applicationDatatype = BACnetApplicationDatatypesChoice.Date
            _rtu.tagNumber = _tagNum
            _rtu.tagClass = BACnetTagClassChoice.applicationTag
            var _len = UInt32(_appTag & 0b0000_0111)
            _rtu.tagLength = _len
            
            if(_len!=4){
                throw  BACnetDecodeErro("解码错误:无法识别长度为${_len}的Bacnet_Date数据")
            }
            let _dataArray = packet.read_FromBuff(4)
            let _year = 1900 + Int64(_dataArray[0])
            let _month = Int64(_dataArray[1])
            let _day = Int64(_dataArray[2])
            _rtu.dataValue = DateTime.of(year: _year, month: _month, dayOfMonth: _day, 
                                            hour: 0, minute: 0, second: 0, nanosecond: 0, 
                                            timeZone: TimeZone.Local)
            return _rtu
        }else{
            packet.cursorMoveBackward(1)
            let _rtu=BACnetApplicationDatatype.decodingFromArrayByte(packet)
            return _rtu
        }
    }

    public func decodingContextSpecificDataFromArrayByte(packet:ByteBuf): Unit{
        let _appTag = packet.read_UInt8_FromBuf();

        let _classBit = (_appTag & 0b0000_1000)>>3
        if(_classBit == 0){
            throw BACnetDecodeErro("解码错误:使用上下文指定类型解码函数解码原语类型")
        }
        this.tagClass = BACnetTagClassChoice.contextSpecificTag

        var _len = UInt32(_appTag & 0b0000_0111)
        if(_len!=4){
            throw  BACnetDecodeErro("解码错误:无法识别长度为${_len}的UnsignedInteger数据")
        }

        let _tagNum = readContextSpecificTagNumber(_appTag, packet)
        this.tagNumber = _tagNum

        this.tagLength = _len
        let _dataArray = packet.read_FromBuff(4)
        let _year = 1900 + Int64(_dataArray[0])
        let _month = Int64(_dataArray[1])
        let _day = Int64(_dataArray[2])
        this.dataValue = DateTime.of(year: _year, month: _month, dayOfMonth: _day, 
                                        hour: 0, minute: 0, second: 0, nanosecond: 0, 
                                        timeZone: TimeZone.Local)
        
        this.applicationDatatype = BACnetApplicationDatatypesChoice.Date

        return
    }

    public func encodingToPrimitiveData():Array<Byte>{
        let _tagNum:UInt8 = 10 << 4
        var _applicationTag = 0b0000_0000u8
        _applicationTag = _applicationTag | _tagNum
        _applicationTag = _applicationTag | 0b0000_0000
        let _len:UInt8 = 4

        this.tagLength = UInt32(_len)
        _applicationTag = _applicationTag | _len
        var _value_Array = Array<Byte>(4,repeat:0)
        _value_Array[0] = UInt8( (this.dataValue.year -1900) & 0X00_00_00_00_00_00_00_FF)
        _value_Array[1] = UInt8(this.dataValue.month.toInteger() & 0X00_00_00_00_00_00_00_FF)
        _value_Array[2] = UInt8(this.dataValue.dayOfMonth & 0X00_00_00_00_00_00_00_FF)
        _value_Array[3] = UInt8(this.dataValue.dayOfWeek.toInteger() & 0X00_00_00_00_00_00_00_FF)

        var _rtu:Array<Byte> = Array<Byte>(Int64(_len+1),repeat:0)
        _rtu[0] = _applicationTag
        _value_Array.copyTo(_rtu, Int64(4-_len), 1, Int64(_len))
        return _rtu        
    }

    public func encodingToContextSpecificData():Array<Byte>{
        var _rtu:Array<Byte>
        this.tagLength = 4
        let _data_len = Int64(this.tagLength)
        let _taghead_buf = encodingToApplicationDataTagHead(this.tagNumber, this.tagLength,BACnetTagClassChoice.contextSpecificTag)
        let _rtu_len = _taghead_buf.size + Int64(_data_len)
        _rtu = Array<Byte>(_rtu_len,repeat:0u8)
        _taghead_buf.copyTo(_rtu, 0, 0, _taghead_buf.size)
        let _data_index = _rtu_len - _data_len

        var _value_Array = Array<Byte>(_data_len,repeat:0)
        _value_Array[0] = UInt8( (this.dataValue.year -1900) & 0X00_00_00_00_00_00_00_FF)
        _value_Array[1] = UInt8(this.dataValue.month.toInteger() & 0X00_00_00_00_00_00_00_FF)
        _value_Array[2] = UInt8(this.dataValue.dayOfMonth & 0X00_00_00_00_00_00_00_FF)
        _value_Array[3] = UInt8(this.dataValue.dayOfWeek.toInteger() & 0X00_00_00_00_00_00_00_FF)
        let _copyIndexStart = _value_Array.size - _data_len
        _value_Array.copyTo(_rtu, _copyIndexStart, _data_index, _data_len)
        return _rtu 
    }
}