package BACnetCodec4cj.Types.BACnetApplicationDatatypes
import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetException.*
import BACnetCodec4cj.ByteBuf.*
import std.binary.*
import std.collection.enumerate
import std.convert.*
import std.collection.*

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

    public static func decodingFromArrayByte(packet:ByteBuf):BACnetApplicationDatatype
    {
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000)>>3
        if(_classBit == 1){
            throw BACnetDecodeErro("解码错误:使用原语类型解码函数解析上下文指定编码")
        }
        let _tagNum = (_appTag & 0b1111_0000)>>4
        var _appDataType = BACnetApplicationDatatypesChoice.fromUInt8(_tagNum)
        packet.cursorMoveBackward(1)
        var _rtu = match (_appDataType) 
        {
            case BACnetApplicationDatatypesChoice.Null                  => BACnet_Null.decodingPrimitiveDataFromArrayByte(packet)
            case BACnetApplicationDatatypesChoice.Boolean               => BACnet_Boolean.decodingPrimitiveDataFromArrayByte(packet)
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


public func convertArrayToHexString(arg_array:Array<Byte>):String{
    var _rtu:String = ""
    for(bitem in arg_array){
        _rtu += bitem.format("02X")
    }
    return _rtu
}

public func convertHexStringToArray(arg_str:String):Array<Byte>{
    var _rtu:Array<Byte>
    var _str_Size = arg_str.size
    let _index_max = _str_Size -1
    var _arrSize = 0
    if(_str_Size%2 == 0){
        _arrSize = _str_Size/2
    }else{
        _arrSize = _str_Size/2 +1
    }
    _rtu = Array<Byte>(_arrSize,repeat:0)
    var _byte_buf:Byte = 0
    var _str_buf:StringBuilder = StringBuilder(2)
    for ((_index,_item) in arg_str |> enumerate) {        
        if (_index<_index_max) {
            if (_index==0 || (_index % 2 == 0)) {
                _str_buf.append(Rune(_item))
            }else{
                _str_buf.append(Rune(_item))
                let _byteIndex = _index/2
                _byte_buf = Byte.parse(_str_buf.toString(), radix: 16)
                _rtu[_byteIndex] = _byte_buf
                _str_buf.reset()
            }
        }else{
            if (_index % 2 == 0) {
                _str_buf.append("0")
                _str_buf.append(Rune(_item))
                let _byteIndex = _index/2
                _byte_buf = Byte.parse(_str_buf.toString(), radix: 16)
                _rtu[_byteIndex] = _byte_buf
            }else{
                _str_buf.append(Rune(_item))
                let _byteIndex = _index/2
                _byte_buf = Byte.parse(_str_buf.toString(), radix: 16)
                _rtu[_byteIndex] = _byte_buf
            }
        }
    }
    return _rtu
}

public func redaLengthFromArray(arg_packet:ByteBuf):UInt32{
    var _rtu:UInt32 = 0
    let _lenth_1_Byte = arg_packet.read_UInt8_FromBuf()
    if(_lenth_1_Byte < 0XFEu8){
        //数据长度为5~253
        _rtu = UInt32(_lenth_1_Byte)
    }else if(_lenth_1_Byte == 0XFEu8){
        //数据长度为254~65535时
        let _lenth_2_3_Byte = arg_packet.read_Int16_FromBuff()
        _rtu = UInt32(_lenth_2_3_Byte)
    }else if(_lenth_1_Byte == 0XFFu8){

    }

    return _rtu
}

public func readContextSpecificTagNumber(arg_tag:Byte,arg_packet:ByteBuf):UInt8{
    var _rtu:UInt8 = 0
    let _tagNum = arg_tag>>4
    if(_tagNum<15){
        _rtu = _tagNum
    }else{
        //_tagNum == 0b0000_1111时，表明tag后的一个字节是tagNum
        _rtu = arg_packet.read_UInt8_FromBuf()
    }
    return _rtu
}

public func encodingToContextSpecificDataTagHead(arg_tagNum:UInt8,arg_tagLength:UInt32):Array<Byte>{
    var _rtu:Array<Byte>
    var _array_buf:ArrayList<Byte> = ArrayList<Byte>()
    var _SDContextTag = 0b0000_0000u8
    //ContextSpecificDataTag在tagClass位是1
    _SDContextTag = _SDContextTag | 0b0000_1000
    _array_buf.add(_SDContextTag)
    if(arg_tagNum<15){
        //tagnum小于15时，上下文标记号直接写在标记域，没有额外标记号字节
        let _tagNum = arg_tagNum << 4   
        _SDContextTag = _SDContextTag | _tagNum
        _array_buf[0] = _SDContextTag
    }else{
        //tagNum大于等于15小于255时（U8就限制了不能大于255），有一字节的额外标记号字节
        //BACnet不支持大于255的上下文标记
        //The encoding does not allow, nor does BACnet require, tag numbers larger than 254. The value B'11111111' of the subsequent octet is reserved by ASHRAE. 
        //只是说保留，没说是255是错误，所以这里不去区分是不是等于255，不报错
        //_tagNum >= 时，表明tag后的一个字节是tagNum
        _SDContextTag = _SDContextTag | 0b1111_0000u8
        _array_buf[0] = _SDContextTag
        _array_buf.add(arg_tagNum)        
    }

    if (arg_tagLength<5) {//没有额外上下文标号字节
        //没有额外长度字节
        _SDContextTag = _SDContextTag | UInt8(arg_tagLength)
        _array_buf[0] = _SDContextTag
    }else if (arg_tagLength >= 5 && arg_tagLength<=253) {
        //额外一字节长度
        _SDContextTag = _SDContextTag | 0b0000_0101u8
        _array_buf[0] = _SDContextTag
        //增加1字节长度
        _array_buf.add(UInt8(arg_tagLength))
    }else if (arg_tagLength >= 254 && arg_tagLength<=65535) {
        //额外1字节标记，2字节长度
        _SDContextTag = _SDContextTag | 0b0000_0101u8
        _array_buf[0] = _SDContextTag
        //额外1字节标记，值位0XFE
        _array_buf.add(0XFEu8)
        let _lenArray = Array<Byte>(2,repeat:0)
        let _lenth_U16 = UInt16(arg_tagLength)
        _lenth_U16.writeBigEndian(_lenArray)
        _array_buf.add(_lenArray[0])
        _array_buf.add(_lenArray[1])
    }else if (arg_tagLength >= 65536 && arg_tagLength<=4294967295) {
        //额外1字节标记，4字节长度
        _SDContextTag = _SDContextTag | 0b0000_0101u8
        _array_buf[0] = _SDContextTag
        //额外1字节标记，值位0XFF
        _array_buf.add(0XFFu8)
        let _lenArray = Array<Byte>(4,repeat:0)
        let _lenth_U32 = arg_tagLength
        _lenth_U32.writeBigEndian(_lenArray)
        _array_buf.add(_lenArray[0])
        _array_buf.add(_lenArray[1])
        _array_buf.add(_lenArray[2])
        _array_buf.add(_lenArray[3])
    }
    _rtu = _array_buf.toArray()
    return _rtu
}
