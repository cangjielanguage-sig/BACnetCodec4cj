package BACnetCodec4cj.Types.BACnetApplicationDatatypes
import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetException.*
import BACnetCodec4cj.ByteBuf.*
import std.binary.*

public class BACnet_UnsignedInteger
<: BACnetApplicationDatatype
& ICodecBACnetApplicationData<BACnetApplicationDatatype>
& IHaveDataValue<UInt32>
{
    private var _dataValue:UInt32 = 0
    public mut prop dataValue:UInt32{
        get(){ return _dataValue}
        set(arg_Value){_dataValue = arg_Value}
    }

    public init(){
        this.tagNumber = 2
        this.tagClass = BACnetTagClassChoice.applicationTag
        this._dataValue = 0
        this.tagLength = 1
        this.applicationDatatype = BACnetApplicationDatatypesChoice.UnsignedInteger        
    }

    public init(arg_tagNumber:UInt8,
    arg_tagClass:BACnetTagClassChoice,
    arg_dataValue:UInt32)
    {
        this.tagNumber = arg_tagNumber
        this.tagClass = arg_tagClass
        this.tagLength = 1
        this._dataValue = arg_dataValue
        this.applicationDatatype = BACnetApplicationDatatypesChoice.UnsignedInteger
    }

    public static func decodingPrimitiveDataFromArrayByte(packet:ByteBuf): BACnetApplicationDatatype{
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000)>>3
        if(_classBit == 1){
            throw BACnetDecodeErro("解码错误:使用原语类型解码函数解析上下文指定编码")
        }
        let _tagNum = (_appTag & 0b1111_0000)>>4
        if (_tagNum == 2) {
            //是UnsignedInteger量
            var _rtu = BACnet_UnsignedInteger()
            _rtu.applicationDatatype = BACnetApplicationDatatypesChoice.UnsignedInteger
            _rtu.tagNumber = _tagNum
            _rtu.tagClass = BACnetTagClassChoice.applicationTag
            var _len = UInt32(_appTag & 0b0000_0111)
            _rtu.tagLength = _len
            
            if(_len>=1 && _len<=4){
                _rtu.dataValue = packet.read_UInt32_WithLenth_FromBuff(Int64(_len))
            }else{
                throw  BACnetDecodeErro("解码错误:无法识别长度为${_len}的UnsignedInteger数据")
            }
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
        if(_len<1 || _len>4){
            throw  BACnetDecodeErro("解码错误:无法识别长度为${_len}的UnsignedInteger数据")
        }

        let _tagNum = readContextSpecificTagNumber(_appTag, packet)
        this.tagNumber = _tagNum

        this.tagLength = _len
        this.dataValue = packet.read_UInt32_WithLenth_FromBuff(Int64(_len))
        
        this.applicationDatatype = BACnetApplicationDatatypesChoice.UnsignedInteger

        return
    }

    public func encodingToPrimitiveData():Array<Byte>{
        let _tagNum:UInt8 = 2 << 4
        var _applicationTag = 0u8
        _applicationTag = _applicationTag | _tagNum
        _applicationTag = _applicationTag | 0b0000_0000
        var _len:UInt8 = 1
        
        if (dataValue<=255) {
            //1字节数
            _len = 1
        }else if (dataValue>255 && dataValue<=65535) {
            //2字节数
            _len = 2
        }else if (dataValue>65535 && dataValue<=16777215) {
            //3字节数
            _len = 3
        }else if (dataValue>16777215 && dataValue<=4294967295) {
            //4字节数
            _len = 4
        }

        this.tagLength = UInt32(_len)
        _applicationTag = _applicationTag | _len
        var _value_Array = Array<Byte>(4,repeat:0)
        this.dataValue.writeBigEndian(_value_Array)

        var _rtu:Array<Byte> = Array<Byte>(Int64(_len+1),repeat:0)
        _rtu[0] = _applicationTag
        _value_Array.copyTo(_rtu, Int64(4-_len), 1, Int64(_len))
        return _rtu        
    }

    public func encodingToContextSpecificData():Array<Byte>{
        var _rtu:Array<Byte>
        var _len:UInt8 = 1
        if (dataValue<=255) {
            //1字节数
            _len = 1
        }else if (dataValue>255 && dataValue<=65535) {
            //2字节数
            _len = 2
        }else if (dataValue>65535 && dataValue<=16777215) {
            //3字节数
            _len = 3
        }else if (dataValue>16777215 && dataValue<=4294967295) {
            //4字节数
            _len = 4
        }
        //BACnet_SignedInteger的数据长度是随着值的大小不固定的,但不超过4字节
        this.tagLength = UInt32(_len)

        var _data_len = Int64(this.tagLength)
        var _taghead_buf = encodingToContextSpecificDataTagHead(this.tagNumber, this.tagLength)
        let _rtu_len = _taghead_buf.size + Int64(_data_len)
        _rtu = Array<Byte>(_rtu_len,repeat:0u8)
        _taghead_buf.copyTo(_rtu, 0, 0, _taghead_buf.size)
        let _data_index = _rtu_len - _data_len

        var _value_Array = Array<Byte>(4,repeat:0)
        let _copyIndexStart = _value_Array.size - _data_len
        this.dataValue.writeBigEndian(_value_Array)
        _value_Array.copyTo(_rtu, _copyIndexStart, _data_index, _data_len)
        return _rtu
    }
}