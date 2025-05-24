package BACnetCodec4cj.Types.BACnetApplicationDatatypes
import BACnetCodec4cj.*
import BACnetCodec4cj.BACnetException.*

public enum BACnetApplicationDatatypesChoice  <: IFromUInt8<BACnetApplicationDatatypesChoice> & IToUInt8<BACnetApplicationDatatypesChoice>{
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

    public static func 从UInt8转换而来(标签: UInt8): BACnetApplicationDatatypesChoice {
        match (标签) {
            // Alarm and Event Services
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
            
            case _ => throw BacnetDecodeErro("协议错误.无效标签")
        }
    }

    public static func fromUInt8(tag: UInt8): BACnetApplicationDatatypesChoice {
        match (tag) {
            // Alarm and Event Services
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
            
            case _ => throw BacnetDecodeErro("协议错误.无效标签")
        }
    }

    public func 转换到UInt8(pdu: BACnetApplicationDatatypesChoice): UInt8 {
        match (pdu) {
            // Alarm and Event Services
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

    public func toUInt8(pdu: BACnetApplicationDatatypesChoice): UInt8 {
        match (pdu) {
            // Alarm and Event Services
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
//Bacnet的空值
public class BACnet_NULL{
    public init() {
    }
    public func encodeToSimplCode():Byte{
        return 0b000_0000
    }
    public func encodeToStructCode():Byte{
        return 0b0101_1000
    }
     
}

public class BACnet_BOOLEAN{
    public var value:Bool
    public init(){
        value = false;
    }
}
public class BACnet_Real{
    public var value:Float32
    public init() {
        value = 0.0
    }
}
type BACnet_Double = Float64
