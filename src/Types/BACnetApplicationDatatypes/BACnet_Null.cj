package BACnetCodec4cj.Types.BACnetApplicationDatatypes
import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetException.*
import BACnetCodec4cj.ByteBuf.*
import std.binary.*


//Bacnet的空值
public class BACnet_Null 
<: BACnetApplicationDatatype
& ICodecBACnetApplicationData<BACnetApplicationDatatype>
& IHaveDataValue<Option<Bool>>
{
    private var _dataValue:Option<Bool> = None
    public mut prop dataValue:Option<Bool>{
        get(){ return None}
        set(_){_dataValue = None}
    }

    public init() {
        tagNumber = 0
        tagClass = BACnetTagClassChoice.applicationTag
        tagLength = 0
        this.applicationDatatype = BACnetApplicationDatatypesChoice.Null
    }

    public static func decodingPrimitiveDataFromArrayByte(packet:ByteBuf): BACnetApplicationDatatype{
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000)>>3
        if(_classBit == 1){
            throw BACnetDecodeErro("解码错误:使用原语类型解码函数解析上下文指定编码")
        }
        let _tagNum = (_appTag & 0b1111_0000)>>4
        if (_tagNum == 0) {
            //是Bool量
            var _rtu = BACnet_Null()
            _rtu.applicationDatatype = BACnetApplicationDatatypesChoice.Null
            _rtu.tagNumber = _tagNum
            _rtu.tagClass = BACnetTagClassChoice.applicationTag
            _rtu.tagLength = UInt32(_appTag & 0b0000_0111)
            
            if (_rtu.tagLength != 0) {
                throw  BACnetDecodeErro("解码错误:检测到AppTag长度为${_rtu.tagLength},BACnet的Null量长度固定为0，这是个无法识别的Null数据")
            }
            return _rtu
        }else{
            packet.cursorMoveBackward(1)
            let _rtu=BACnetApplicationDatatype.decodingFromArrayByte(packet)
            return _rtu 
        }
    }

    public func decodingContextSpecificDataFromArrayByte(packet:ByteBuf): Unit{
        // let _tag = packet.read_UInt8_FromBuf();
        // if(_tag != 0b0000_0000){
        //     throw BACnetDecodeErro("BACnet_Null数据只有0b0000_0000一种形式")
        // }
        // return BACnet_Null()

        //实际不应出现，BACnet_Null数据只有0b0000_0000一种形式,没有上下文指定形式
        //但抛异常可能导致后续解码中断，所以留此函数作为预防
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000)>>3
        if(_classBit == 0){
            throw BACnetDecodeErro("解码错误:使用上下文指定类型解码函数解码原语类型")
        }

        this.tagLength = UInt32(_appTag & 0b0000_0111)
        if (this.tagLength != 0) {
                throw  BACnetDecodeErro("解码错误:检测到AppTag长度为${this.tagLength},BACnet的Null量长度固定为0，这是个无法识别的Null数据")
        }

        let _tagNum = readContextSpecificTagNumber(_appTag, packet)
        this.tagNumber = _tagNum
        
        this.applicationDatatype = BACnetApplicationDatatypesChoice.Null
        this.tagClass = BACnetTagClassChoice.contextSpecificTag
        
        return 
    }

    public func encodingToPrimitiveData():Array<Byte>{
        //Null的简单代码固定
        return [0b0000_0000]
    }

    public func encodingToContextSpecificData():Array<Byte>{
        // Null的简单代码固定
        // return [0b0000_0000]
        //实际不应该有调用此函数的机会
        var _rtu:Array<Byte>
        // if(this.tagLength != 0){
        //     throw  BACnetDecodeErro("编码错误:BACnet的Null量长度必须为0")
        // }
        this.tagLength = 0
        var _taghead_buf = encodingToApplicationDataTagHead(this.tagNumber, this.tagLength,BACnetTagClassChoice.contextSpecificTag)
        let _rtu_len = _taghead_buf.size
        _rtu = Array<Byte>(_rtu_len,repeat:0u8)
        _taghead_buf.copyTo(_rtu, 0, 0, _taghead_buf.size)
        return _rtu
    }
}