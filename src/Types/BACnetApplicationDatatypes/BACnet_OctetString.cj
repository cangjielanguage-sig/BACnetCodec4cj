package BACnetCodec4cj.Types.BACnetApplicationDatatypes
import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetException.*
import BACnetCodec4cj.ByteBuf.*
import std.binary.*
import std.collection.*

public class BACnet_OctetString
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
        this.tagNumber = 6
        this.tagClass = BACnetTagClassChoice.applicationTag
        this._dataValue = ""
        this.applicationDatatype = BACnetApplicationDatatypesChoice.OctetString        
    }

    public init(arg_tagNumber:UInt8,
    arg_tagClass:BACnetTagClassChoice,
    arg_dataValue:String)
    {
        this.tagNumber = arg_tagNumber
        this.tagClass = arg_tagClass
        this.tagLength = 0
        this._dataValue = arg_dataValue
        this.applicationDatatype = BACnetApplicationDatatypesChoice.OctetString
    }

    public static func decodingPrimitiveDataFromArrayByte(packet:ByteBuf): BACnetApplicationDatatype{
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000)>>3
        if(_classBit == 1){
            throw BACnetDecodeErro("解码错误:使用原语类型解码函数解析上下文指定编码")
        }
        let _tagNum = (_appTag & 0b1111_0000)>>4
        if (_tagNum == 6) {
            //是String量
            var _rtu = BACnet_OctetString()
            _rtu.applicationDatatype = BACnetApplicationDatatypesChoice.OctetString
            _rtu.tagNumber = _tagNum
            _rtu.tagClass = BACnetTagClassChoice.applicationTag
            //var _len = _appTag & 0b0000_0111
            let _tagLen = read_BACnetApplicationDataLength(_appTag,packet)
            _rtu.tagLength = _tagLen
            let _dataOct = packet.read_FromBuff(Int64(_tagLen))
            _rtu.dataValue = convertArrayToHexString(_dataOct)
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

        let _tagNum = readContextSpecificTagNumber(_appTag, packet)
        this.tagNumber = _tagNum

        //var _len = _appTag & 0b0000_0111
        let _tagLen = read_BACnetApplicationDataLength(_appTag,packet)
        this.tagLength = _tagLen
        
        let _dataOct = packet.read_FromBuff(Int64(_tagLen))
        this.dataValue = convertArrayToHexString(_dataOct)

        this.applicationDatatype = BACnetApplicationDatatypesChoice.Double

        return
    }

    public func encodingToPrimitiveData():Array<Byte>{
        this.tagNumber = 6
        var _value_Array = convertHexStringToArray(this.dataValue)
        this.tagLength = UInt32(_value_Array.size)
        let _tagHead = encodingToApplicationDataTagHead(this.tagNumber, this.tagLength,BACnetTagClassChoice.applicationTag)
        let _rtu_len = _tagHead.size + _value_Array.size
        var _rtu:Array<Byte> = Array<Byte>(_rtu_len,repeat:0)
        _tagHead.copyTo(_rtu,0,0,_tagHead.size)
        _value_Array.copyTo(_rtu, 0, _tagHead.size, _value_Array.size)
        return _rtu        
    }

    public func encodingToContextSpecificData():Array<Byte>{
        var _value_Array = convertHexStringToArray(this.dataValue)
        this.tagLength = UInt32(_value_Array.size)
        let _tagHead = encodingToApplicationDataTagHead(this.tagNumber, this.tagLength,BACnetTagClassChoice.contextSpecificTag)
        let _rtu_len = _tagHead.size + _value_Array.size
        var _rtu:Array<Byte> = Array<Byte>(_rtu_len,repeat:0)
        _tagHead.copyTo(_rtu,0,0,_tagHead.size)
        _value_Array.copyTo(_rtu, 0, _tagHead.size, _value_Array.size)
        return _rtu 
    }
}
