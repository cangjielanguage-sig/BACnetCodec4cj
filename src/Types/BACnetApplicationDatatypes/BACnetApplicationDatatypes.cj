package BACnetCodec4cj.Types.BACnetApplicationDatatypes
import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetException.*
import BACnetCodec4cj.ByteBuf.*
import std.binary.*

public enum BACnetApplicationDatatypesChoice
<: IFromUInt8<BACnetApplicationDatatypesChoice> 
& IToUInt8 
{
    //20.2.1.4 Application Tags 
    //The Tag Number field of an encoded BACnet application tag shall specify the application datatype as follows: 
    |Null                   //0
    |Boolean                //1 
    |UnsignedInteger        //2 
    |SignedInteger          //3 (2's complement notation) 
    |Real                   //4 (ANSI/IEEE-754 floating point) 
    |Double                 //5 (ANSI/IEEE-754 double precision floating point) 
    |OctetString            //6 
    |CharacterString        //7 
    |BitString              //8 
    |Enumerated             //9 
    |Date                   //10 
    |Time                   //11 
    |BACnetObjectIdentifier //12  
    |ReservedForASHRAE13    //13
    |ReservedForASHRAE14    //14
    |ReservedForASHRAE15    //15

    public static func 从UInt8转换而来(标签: UInt8): BACnetApplicationDatatypesChoice 
    {
        match (标签) 
        {
            case 0  => BACnetApplicationDatatypesChoice.Null
            case 1  => BACnetApplicationDatatypesChoice.Boolean
            case 2  => BACnetApplicationDatatypesChoice.UnsignedInteger
            case 3  => BACnetApplicationDatatypesChoice.SignedInteger
            case 4  => BACnetApplicationDatatypesChoice.Real
            case 5  => BACnetApplicationDatatypesChoice.Double
            case 6  => BACnetApplicationDatatypesChoice.OctetString
            case 7  => BACnetApplicationDatatypesChoice.CharacterString
            case 8  => BACnetApplicationDatatypesChoice.BitString
            case 9  => BACnetApplicationDatatypesChoice.Enumerated
            case 10  => BACnetApplicationDatatypesChoice.Date
            case 11  => BACnetApplicationDatatypesChoice.Time
            case 12  => BACnetApplicationDatatypesChoice.BACnetObjectIdentifier
            case 13  => BACnetApplicationDatatypesChoice.ReservedForASHRAE13
            case 14  => BACnetApplicationDatatypesChoice.ReservedForASHRAE14
            case 15  => BACnetApplicationDatatypesChoice.ReservedForASHRAE15
            
            case _ => throw BACnetDecodeErro("协议错误.无效标签")
        }
    }

    public static func fromUInt8(tag: UInt8): BACnetApplicationDatatypesChoice 
    {
        match (tag) 
        {
            case 0  => BACnetApplicationDatatypesChoice.Null
            case 1  => BACnetApplicationDatatypesChoice.Boolean
            case 2  => BACnetApplicationDatatypesChoice.UnsignedInteger
            case 3  => BACnetApplicationDatatypesChoice.SignedInteger
            case 4  => BACnetApplicationDatatypesChoice.Real
            case 5  => BACnetApplicationDatatypesChoice.Double
            case 6  => BACnetApplicationDatatypesChoice.OctetString
            case 7  => BACnetApplicationDatatypesChoice.CharacterString
            case 8  => BACnetApplicationDatatypesChoice.BitString
            case 9  => BACnetApplicationDatatypesChoice.Enumerated
            case 10  => BACnetApplicationDatatypesChoice.Date
            case 11  => BACnetApplicationDatatypesChoice.Time
            case 12  => BACnetApplicationDatatypesChoice.BACnetObjectIdentifier
            case 13  => BACnetApplicationDatatypesChoice.ReservedForASHRAE13
            case 14  => BACnetApplicationDatatypesChoice.ReservedForASHRAE14
            case 15  => BACnetApplicationDatatypesChoice.ReservedForASHRAE15
            
            case _ => throw BACnetDecodeErro("协议错误.无效标签")
        }
    }

    public func 转换到UInt8(): UInt8 
    {
        match (this) 
        {
            case BACnetApplicationDatatypesChoice.Null                  => 0
            case BACnetApplicationDatatypesChoice.Boolean               => 1
            case BACnetApplicationDatatypesChoice.UnsignedInteger       => 2
            case BACnetApplicationDatatypesChoice.SignedInteger         => 3
            case BACnetApplicationDatatypesChoice.Real                  => 4
            case BACnetApplicationDatatypesChoice.Double                => 5
            case BACnetApplicationDatatypesChoice.OctetString           => 6
            case BACnetApplicationDatatypesChoice.CharacterString       => 7
            case BACnetApplicationDatatypesChoice.BitString             => 8
            case BACnetApplicationDatatypesChoice.Enumerated            => 9
            case BACnetApplicationDatatypesChoice.Date                  => 10
            case BACnetApplicationDatatypesChoice.Time                  => 11
            case BACnetApplicationDatatypesChoice.BACnetObjectIdentifier  => 12
            case BACnetApplicationDatatypesChoice.ReservedForASHRAE13   => 13
            case BACnetApplicationDatatypesChoice.ReservedForASHRAE14   => 14
            case BACnetApplicationDatatypesChoice.ReservedForASHRAE15   => 15
        }
    }

    public func toUInt8(): UInt8 
    {
        match (this) 
        {
            case BACnetApplicationDatatypesChoice.Null                  => 0
            case BACnetApplicationDatatypesChoice.Boolean               => 1
            case BACnetApplicationDatatypesChoice.UnsignedInteger       => 2
            case BACnetApplicationDatatypesChoice.SignedInteger         => 3
            case BACnetApplicationDatatypesChoice.Real                  => 4
            case BACnetApplicationDatatypesChoice.Double                => 5
            case BACnetApplicationDatatypesChoice.OctetString           => 6
            case BACnetApplicationDatatypesChoice.CharacterString       => 7
            case BACnetApplicationDatatypesChoice.BitString             => 8
            case BACnetApplicationDatatypesChoice.Enumerated            => 9
            case BACnetApplicationDatatypesChoice.Date                  => 10
            case BACnetApplicationDatatypesChoice.Time                  => 11
            case BACnetApplicationDatatypesChoice.BACnetObjectIdentifier  => 12
            case BACnetApplicationDatatypesChoice.ReservedForASHRAE13   => 13
            case BACnetApplicationDatatypesChoice.ReservedForASHRAE14   => 14
            case BACnetApplicationDatatypesChoice.ReservedForASHRAE15   => 15
        }
    }
}

public enum BACnetTagClassChoice
<: IFromUInt8<BACnetTagClassChoice> 
& IToUInt8
{
    |applicationTag
    |contextSpecificTag

    public static func 从UInt8转换而来(标签: UInt8): BACnetTagClassChoice 
    {
        match (标签) {
            case 0b0000_0000  => BACnetTagClassChoice.applicationTag
            case 0b0000_1000  => BACnetTagClassChoice.contextSpecificTag
            
            case _ => throw BACnetDecodeErro("协议错误.无效标签")
        }
    }

    public static func fromUInt8(tag: UInt8): BACnetTagClassChoice 
    {
        match (tag) {
            case 0b0000_0000  => BACnetTagClassChoice.applicationTag
            case 0b0000_1000  => BACnetTagClassChoice.contextSpecificTag
            
            case _ => throw BACnetDecodeErro("协议错误.无效标签")
        }
    }

    public func 转换到UInt8(): UInt8 
    {
        match (this) 
        {
            case BACnetTagClassChoice.applicationTag       => 0b0000_0000
            case BACnetTagClassChoice.contextSpecificTag   => 0b0000_1000
        }
    }

    public func toUInt8(): UInt8 
    {
        match (this) 
        {
            case BACnetTagClassChoice.applicationTag       => 0b0000_0000
            case BACnetTagClassChoice.contextSpecificTag   => 0b0000_1000
        }
    }

    public func toUint8this():UInt8
    {
        match (this) 
        {
            case BACnetTagClassChoice.applicationTag       => 0b0000_0000
            case BACnetTagClassChoice.contextSpecificTag   => 0b0000_1000
        }

    }
}

//用户数据类型父类
public open class BACnetApplicationDatatype
{
    private var _tagNumber:UInt8 = 0
    public mut prop tagNumber:UInt8{
        get(){ return _tagNumber}
        set(arg_Value){_tagNumber = arg_Value}
    }

    private var _tagClass:BACnetTagClassChoice =BACnetTagClassChoice.applicationTag
    public mut prop tagClass:BACnetTagClassChoice{
        get(){ return _tagClass}
        set(arg_Value){_tagClass = arg_Value}
    }

    private var _tagLength:UInt32 =0
    public mut prop tagLength:UInt32{
        get(){ return _tagLength}
        set(arg_Value){_tagLength = arg_Value}
    }

    private var _applicationDatatype:BACnetApplicationDatatypesChoice = BACnetApplicationDatatypesChoice.Null
    public mut prop applicationDatatype:BACnetApplicationDatatypesChoice{
        get(){ return _applicationDatatype}
        set(arg_Value){this._applicationDatatype = arg_Value}
    }

    public init(){}
}


//Bacnet的空值
public class BACnet_Null 
<: BACnetApplicationDatatype
& ICodecBACnetApplicationData<BACnetApplicationDatatype>
{
    public init() {
        tagNumber = 0
        tagClass = BACnetTagClassChoice.applicationTag
        tagLength = 0
    }

    public static func decodingPrimitiveDataFromArrayByte(packet:ByteBuf): BACnetApplicationDatatype{
        let _tag = packet.read_UInt8_FromBuf();
        if(_tag != 0b0000_0000){
            throw BACnetDecodeErro("BACnet_Null数据只有0b0000_0000一种形式")
        }
        return BACnet_Null()
    }

    public static func decodingContextSpecificDataFromArrayByte(packet:ByteBuf): BACnetApplicationDatatype{
        let _tag = packet.read_UInt8_FromBuf();
        if(_tag != 0b0000_0000){
            throw BACnetDecodeErro("BACnet_Null数据只有0b0000_0000一种形式")
        }
        return BACnet_Null()
    }

    public func encodingToPrimitiveData():Array<Byte>{
        //Null的简单代码固定
        return [0b0000_0000]
    }

    public func encodingToContextSpecificData():Array<Byte>{
        //Null的简单代码固定
        return [0b0000_0000]
    }
}

public class BACnet_Boolean
<: BACnetApplicationDatatype
& ICodecBACnetApplicationData<BACnetApplicationDatatype>
{
    private var _dataValue:Bool = false
    public mut prop dataValue:Bool{
        get(){ return _dataValue}
        set(arg_Value){_dataValue = arg_Value}
    }

    public init(){
        this.tagNumber = 1
        this.tagClass = BACnetTagClassChoice.applicationTag
        this._dataValue = false
        this.applicationDatatype = BACnetApplicationDatatypesChoice.Boolean        
    }

    public init(arg_tagNumber:UInt8,
    arg_tagClass:BACnetTagClassChoice,
    arg_tagLength:UInt32,
    arg_dataValue:Bool)
    {
        this.tagNumber = arg_tagNumber
        this.tagClass = arg_tagClass
        this.tagLength = arg_tagLength
        this._dataValue = arg_dataValue
    }

    public static func decodingPrimitiveDataFromArrayByte(packet:ByteBuf): BACnetApplicationDatatype{
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000)>>3
        if(_classBit == 1){
            throw BACnetDecodeErro("解码错误:使用原语类型解码函数解析上下文指定编码")
        }
        let _tagNum = (_appTag & 0b1111_0000)>>4
        if (_tagNum == 1) {
            //是Bool量
            var _rtu = BACnet_Boolean()
            _rtu.applicationDatatype = BACnetApplicationDatatypesChoice.Boolean
            _rtu.tagNumber = _tagNum
            _rtu.tagClass = BACnetTagClassChoice.applicationTag
            _rtu.tagLength = UInt32(_appTag & 0b0000_0111)
            
            if (_rtu.tagLength == 0) {
                _rtu.dataValue = false
            }else if(_rtu.tagLength == 1){
                _rtu.dataValue = true
            }else{
                throw  BACnetDecodeErro("解码错误:无法识别的Bool数据")
            }
            return _rtu
        }else{
            packet.cursorMoveBackward(1)
            var _appDataType = BACnetApplicationDatatypesChoice.fromUInt8(_tagNum)
            var _rtu = match (_appDataType) 
            {
                case BACnetApplicationDatatypesChoice.Null                  => BACnet_Null.decodingPrimitiveDataFromArrayByte(packet)
                //case BACnetApplicationDatatypesChoice.Boolean               => 1
                case BACnetApplicationDatatypesChoice.UnsignedInteger       => BACnet_UnsignedInteger.decodingPrimitiveDataFromArrayByte(packet)
                // case BACnetApplicationDatatypesChoice.SignedInteger         => 3
                // case BACnetApplicationDatatypesChoice.Real                  => 4
                // case BACnetApplicationDatatypesChoice.Double                => 5
                // case BACnetApplicationDatatypesChoice.OctetString           => 6
                // case BACnetApplicationDatatypesChoice.CharacterString       => 7
                // case BACnetApplicationDatatypesChoice.BitString             => 8
                // case BACnetApplicationDatatypesChoice.Enumerated            => 9
                // case BACnetApplicationDatatypesChoice.Date                  => 10
                // case BACnetApplicationDatatypesChoice.Time                  => 11
                // case BACnetApplicationDatatypesChoice.BACnetObjectIdentifier  => 12
                // case BACnetApplicationDatatypesChoice.ReservedForASHRAE13   => 13
                // case BACnetApplicationDatatypesChoice.ReservedForASHRAE14   => 14
                // case BACnetApplicationDatatypesChoice.ReservedForASHRAE15   => 15
                case _=>throw  BACnetDecodeErro("解码错误:无法识别的类型数据")
            }
            return _rtu
        }
    }

    public static func decodingContextSpecificDataFromArrayByte(packet:ByteBuf): BACnetApplicationDatatype{
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000)>>3
        if(_classBit == 0){
            throw BACnetDecodeErro("解码错误:使用上下文指定类型解码函数解码原语类型")
        }
        let _tagNum = (_appTag & 0b1111_0000)>>4
        
        var _rtu = BACnet_Boolean()
        _rtu.applicationDatatype = BACnetApplicationDatatypesChoice.Boolean
        _rtu.tagNumber = _tagNum
        _rtu.tagClass = BACnetTagClassChoice.contextSpecificTag
        _rtu.tagLength = UInt32(_appTag & 0b0000_0111)
        
        if (_rtu.tagLength == 1) {
            let _value = packet.read_UInt8_FromBuf();
            if (_value == 0b0000_0000) {
                _rtu.dataValue = false
            }else if (_value == 0b0000_0001) {
                _rtu.dataValue = true
            }else{
                throw  BACnetDecodeErro("解码错误:无法识别的Bool数据")
            }
            
        }else{
            throw  BACnetDecodeErro("解码错误:检测到AppTag长度为${_rtu.tagLength},BACnet的Bool量长度固定为1，这是个无法识别的Bool数据长度")
        }
        return _rtu
    }

    public func encodingToPrimitiveData():Array<Byte>{
        var _rtu:Array<Byte> = [0b0000_0000]
        if (this.dataValue == true) {
            _rtu[0] = 0b0001_0000
        }else{
            _rtu[0] = 0b0001_0001
        }
        return _rtu        
    }

    public func encodingToContextSpecificData():Array<Byte>{
        var _rtu:Array<Byte> = [0b0000_0000,0b0000_0000]
        let _tagNum = this.tagNumber << 4
        var _SDContextTag = 0u8
        _SDContextTag = _SDContextTag | _tagNum
        _SDContextTag = _SDContextTag | 0b0000_1001
        _rtu[0] = _SDContextTag
        if (this.dataValue == true) {
            _rtu[1] = 0b0000_0001
        }else{
            _rtu[1] = 0b0000_0000
        }
        return _rtu
    }
}

public class BACnet_UnsignedInteger
<: BACnetApplicationDatatype
& ICodecBACnetApplicationData<BACnetApplicationDatatype>
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
        this.applicationDatatype = BACnetApplicationDatatypesChoice.UnsignedInteger        
    }

    public init(arg_tagNumber:UInt8,
    arg_tagClass:BACnetTagClassChoice,
    arg_tagLength:UInt32,
    arg_dataValue:UInt32)
    {
        this.tagNumber = arg_tagNumber
        this.tagClass = arg_tagClass
        this.tagLength = arg_tagLength
        this._dataValue = arg_dataValue
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
            var _appDataType = BACnetApplicationDatatypesChoice.fromUInt8(_tagNum)
            var _rtu = match (_appDataType) 
            {
                case BACnetApplicationDatatypesChoice.Null                  => BACnet_Null.decodingPrimitiveDataFromArrayByte(packet)
                case BACnetApplicationDatatypesChoice.Boolean               => BACnet_Boolean.decodingPrimitiveDataFromArrayByte(packet)
                // case BACnetApplicationDatatypesChoice.UnsignedInteger       => 2
                // case BACnetApplicationDatatypesChoice.SignedInteger         => 3
                // case BACnetApplicationDatatypesChoice.Real                  => 4
                // case BACnetApplicationDatatypesChoice.Double                => 5
                // case BACnetApplicationDatatypesChoice.OctetString           => 6
                // case BACnetApplicationDatatypesChoice.CharacterString       => 7
                // case BACnetApplicationDatatypesChoice.BitString             => 8
                // case BACnetApplicationDatatypesChoice.Enumerated            => 9
                // case BACnetApplicationDatatypesChoice.Date                  => 10
                // case BACnetApplicationDatatypesChoice.Time                  => 11
                // case BACnetApplicationDatatypesChoice.BACnetObjectIdentifier  => 12
                // case BACnetApplicationDatatypesChoice.ReservedForASHRAE13   => 13
                // case BACnetApplicationDatatypesChoice.ReservedForASHRAE14   => 14
                // case BACnetApplicationDatatypesChoice.ReservedForASHRAE15   => 15
                case _=>throw  BACnetDecodeErro("解码错误:无法识别的类型数据")
            }
            return _rtu
        }
    }

    public static func decodingContextSpecificDataFromArrayByte(packet:ByteBuf): BACnetApplicationDatatype{
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000)>>3
        if(_classBit == 0){
            throw BACnetDecodeErro("解码错误:使用上下文指定类型解码函数解码原语类型")
        }
        let _tagNum = (_appTag & 0b1111_0000)>>4
        
        var _rtu = BACnet_UnsignedInteger()
        _rtu.applicationDatatype = BACnetApplicationDatatypesChoice.UnsignedInteger
        _rtu.tagNumber = _tagNum
        _rtu.tagClass = BACnetTagClassChoice.contextSpecificTag
        var _len = UInt32(_appTag & 0b0000_0111)
        _rtu.tagLength = _len

        if(_len>=1 && _len<=4){
            _rtu.dataValue = packet.read_UInt32_WithLenth_FromBuff(Int64(_len))
        }else{
            throw  BACnetDecodeErro("解码错误:无法识别长度为${_len}的UnsignedInteger数据")
        }
        return _rtu
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
        this.tagLength.writeBigEndian(_value_Array)

        var _rtu:Array<Byte> = Array<Byte>(Int64(_len+1),repeat:0)
        _rtu[0] = _applicationTag
        _value_Array.copyTo(_rtu, Int64(4-_len), 1, Int64(_len))
        return _rtu        
    }

    public func encodingToContextSpecificData():Array<Byte>{
        let _tagNum:UInt8 = this.tagNumber << 4
        var _applicationTag = 0u8
        _applicationTag = _applicationTag | _tagNum
        _applicationTag = _applicationTag | 0b0000_1000
        
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
        this.tagLength.writeBigEndian(_value_Array)

        var _rtu:Array<Byte> = Array<Byte>(Int64(_len+1),repeat:0)
        _rtu[0] = _applicationTag
        _value_Array.copyTo(_rtu, Int64(4-_len), 1, Int64(_len))
        return _rtu 
    }
}

public class BACnet_Real{
    public var value:Float32
    public init() {
        value = 0.0
    }
}
type BACnet_Double = Float64
