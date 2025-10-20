package BACnetCodec4cj.Types.BACnetApplicationDatatypes
import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetException.*
import BACnetCodec4cj.ByteBuf.*
import std.convert.*

public class BACnet_BitString
<: BACnetApplicationDatatype
& ICodecBACnetApplicationData<BACnetApplicationDatatype>
& IHaveDataValue<String>
{
    private var _dataValue:String = ""
    public mut prop dataValue:String{
        get(){ return _dataValue}
        set(arg_Value){_dataValue = arg_Value}
    }

    public init(){
        this.tagNumber = 8
        this.tagClass = BACnetTagClassChoice.applicationTag
        this._dataValue = ""
        this.applicationDatatype = BACnetApplicationDatatypesChoice.BitString        
    }

    public init(arg_tagNumber:UInt8,
    arg_tagClass:BACnetTagClassChoice,
    arg_dataValue:String)
    {
        this.tagNumber = arg_tagNumber
        this.tagClass = arg_tagClass
        this.tagLength = 0
        this._dataValue = arg_dataValue
        this.applicationDatatype = BACnetApplicationDatatypesChoice.BitString
    }

        
    

    public static func decodingArrayToBitString(arg_array:Array<Byte>):String{
        var _rtu:String = ""
        let _bute_toRight = arg_array[0]
        let _value_Array = arg_array[1..]
        var _rtu_builder:StringBuilder = StringBuilder(_value_Array.size*8)
        for(bitem in _value_Array){
            _rtu_builder.append(bitem.format("08B"))
        }
        _rtu = _rtu_builder.toString()[0.._rtu_builder.size - Int64(_bute_toRight)]
        return _rtu
    }

    public func encodingBitStringToArray(arg_str:String):Array<Byte>{
        var _rtu:Array<Byte>
        var _str_Size = arg_str.size
        var _arrSize = 0
        var _byte_left = 0
        if(_str_Size > 8){
            _byte_left = (8 - _str_Size%8)
            if (_byte_left == 8) {
                _arrSize = _str_Size/8
            }else{
                _arrSize = _str_Size/8+1
            }
        }else{
            _byte_left = 8 - _str_Size
            _arrSize =  1
        }
        var _str_full_builder:StringBuilder = StringBuilder(arg_str)
        for(_ in 0.._byte_left){
            _str_full_builder.append(0)
        }
        let _value_str = _str_full_builder.toString()
        _rtu = Array<Byte>(_arrSize+1,repeat:0)

        _rtu[0] = UInt8(_byte_left)
        for(_i in 0.._arrSize){
            let _start = _i *8
            let _stop = _start +8
            let _str_buf = _value_str[_start.._stop]
            let _byte_buf = UInt8.parse(_str_buf, radix: 2)
            _rtu[_i+1] = _byte_buf
        }
        return _rtu
    }


    public static func decodingPrimitiveDataFromArrayByte(packet:ByteBuf): BACnetApplicationDatatype{
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000)>>3
        if(_classBit == 1){
            throw BACnetDecodeErro("解码错误:使用原语类型解码函数解析上下文指定编码")
        }
        let _tagNum = (_appTag & 0b1111_0000)>>4
        if (_tagNum == 8) {
            //是BitString量
            var _rtu = BACnet_BitString()
            _rtu.applicationDatatype = BACnetApplicationDatatypesChoice.BitString
            _rtu.tagNumber = _tagNum
            _rtu.tagClass = BACnetTagClassChoice.applicationTag
            //var _len = _appTag & 0b0000_0111
            let _tagLen = readBACnetApplicationDataLength(_appTag,packet)
            _rtu.tagLength = _tagLen
            let _dataOct = packet.read_FromBuff(Int64(_tagLen))
            _rtu.dataValue = decodingArrayToBitString(_dataOct)
            return _rtu
        }else{
            packet.cursorMoveBackward(1)
            let _rtu=BACnetApplicationDatatype.decodingFromArrayByte(packet)
            return _rtu
        }
    }

    public func decodingContextSpecificDataFromArrayByte(packet:ByteBuf): Unit{
        //实际不该有此函数的调用场景，协议文档里写明BitString只有原生类型编码。
        let _appTag = packet.read_UInt8_FromBuf();

        let _classBit = (_appTag & 0b0000_1000)>>3
        if(_classBit == 0){
            throw BACnetDecodeErro("解码错误:使用上下文指定类型解码函数解码原语类型")
        }
        this.tagClass = BACnetTagClassChoice.contextSpecificTag

        let _tagNum = readContextSpecificTagNumber(_appTag, packet)
        this.tagNumber = _tagNum

        //var _len = _appTag & 0b0000_0111
        let _tagLen = readBACnetApplicationDataLength(_appTag,packet)
        this.tagLength = _tagLen
        
        let _dataOct = packet.read_FromBuff(Int64(_tagLen))
        this.dataValue = decodingArrayToBitString(_dataOct)

        this.applicationDatatype = BACnetApplicationDatatypesChoice.BitString

        return
    }

    public func encodingToPrimitiveData():Array<Byte>{
        this.tagNumber = 8
        var _value_Array = encodingBitStringToArray(this.dataValue)
        this.tagLength = UInt32(_value_Array.size)
        let _tagHead = encodingToApplicationDataTagHead(this.tagNumber, this.tagLength,BACnetTagClassChoice.applicationTag)
        let _rtu_len = _tagHead.size + _value_Array.size
        var _rtu:Array<Byte> = Array<Byte>(_rtu_len,repeat:0)
        _tagHead.copyTo(_rtu,0,0,_tagHead.size)
        _value_Array.copyTo(_rtu, 0, _tagHead.size, _value_Array.size)
        return _rtu        
    }

    public func encodingToContextSpecificData():Array<Byte>{
        var _value_Array = encodingBitStringToArray(this.dataValue)
        this.tagLength = UInt32(_value_Array.size)
        let _tagHead = encodingToApplicationDataTagHead(this.tagNumber, this.tagLength,BACnetTagClassChoice.contextSpecificTag)
        let _rtu_len = _tagHead.size + _value_Array.size
        var _rtu:Array<Byte> = Array<Byte>(_rtu_len,repeat:0)
        _tagHead.copyTo(_rtu,0,0,_tagHead.size)
        _value_Array.copyTo(_rtu, 0, _tagHead.size, _value_Array.size)
        return _rtu 
    }

}
