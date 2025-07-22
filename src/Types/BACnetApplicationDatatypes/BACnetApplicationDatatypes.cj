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

public func readContextSpecificTagNumber(arg_tag:Byte,arg_packet:ByteBuf):UInt8{
    //若存在扩展tagNumber字节，则游标会前进一步
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

public func readBACnetApplicationDataLength(arg_tag:Byte,arg_packet:ByteBuf):UInt32{
    //读取数据的可变长度
    //只适用于PrimitiveData
    //应该在读取完tagNumber域的值，若存在扩展tagNumber字节则指针已过该字节后再调用本函数读取用户数据的长度
    //若存在扩展dataLength字节，则游标会前进1到4步，最多4步
    var _rtu:UInt32 = 0
    var _len = arg_tag & 0b0000_0111
    if (_len < 0b0000_0101u8) {
        //0~4间无需扩展dataLength字节
        _rtu = UInt32(_len)
        return _rtu
    }else if (_len > 0b0000_0111u8) {
        throw  BACnetDecodeErro("解码错误:无法识别的类型数据")
    }else if (_len == 0b0000_0110u8) {
        //ConstructedData 的 Opening Tag ，无可用长度信息
        //因为ConstructedData应该是要预先知道那个位置是构造数据，主动去解析的，所以实际上不应该调用到此函数
        throw  BACnetDecodeErro("解码错误:得到ConstructedData 的 Opening Tag ，无可用长度信息")
    }else if (_len == 0b0000_0111u8) {
        //ConstructedData 的 Closeing Tag ，无可用长度信息
        //因为ConstructedData应该是要预先知道那个位置是构造数据，主动去解析的，所以实际上不应该调用到此函数
        throw  BACnetDecodeErro("解码错误:得到ConstructedData 的 Opening Tag ，无可用长度信息")
    }

    //_len == 0b0000_0111u8 有扩展长度字节
    //读取1字节数，游标+1
    let _len_add_1 = arg_packet.read_UInt8_FromBuf()
    if(_len < 254){
        //只有1个扩展长度字节
        _rtu = UInt32(_len_add_1)
        return _rtu
    }else if (_len == 254) {
        //后跟2个字节的扩展长度
        //读取2字节数，游标加2
        let _len_add_2_3 = arg_packet.read_UInt16_FromBuff()
        _rtu = UInt32(_len_add_2_3)
        return _rtu
    }else if (_len == 255) {
        //后跟4个字节的扩展长度
        //读取4字节数，游标加4
        _rtu = arg_packet.read_UInt32_FromBuff()
        return _rtu
    }

    return _rtu
}

public func encodingToApplicationDataTagHead(arg_tagNum:UInt8,arg_tagLength:UInt32,arg_tagClass:BACnetTagClassChoice):Array<Byte>{
    var _rtu:Array<Byte>
    var _array_buf:ArrayList<Byte> = ArrayList<Byte>()
    var _SDContextTag = 0b0000_0000u8
    let arg_tagClass_mask = arg_tagClass.toUInt8()
    _SDContextTag = _SDContextTag | arg_tagClass_mask
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
