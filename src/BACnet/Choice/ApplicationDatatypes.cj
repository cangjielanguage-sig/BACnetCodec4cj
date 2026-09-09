public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum ApplicationDatatypes <: IFromUInt8<ApplicationDatatypes> & IToUInt8 {
    //20.2.1.4 Application Tags 
    //The Tag Number field of an encoded BACnet application tag shall specify the application datatype as follows: 
    | Null //0
    | Boolean //1 
    | UnsignedInteger //2 
    | SignedInteger //3 (2's complement notation) 
    | Real //4 (ANSI/IEEE-754 floating point) 
    | Double //5 (ANSI/IEEE-754 double precision floating point) 
    | OctetString //6 
    | CharacterString //7 
    | BitString //8 
    | Enumerated //9 
    | Date //10 
    | Time //11 
    | BACnetObjectIdentifier //12  
    | ReservedForASHRAE13 //13
    | ReservedForASHRAE14 //14
    | ReservedForASHRAE15 //15

    public static func fromUInt8(tag: UInt8): ApplicationDatatypes {
        match (tag) {
            case 0 => ApplicationDatatypes.Null
            case 1 => ApplicationDatatypes.Boolean
            case 2 => ApplicationDatatypes.UnsignedInteger
            case 3 => ApplicationDatatypes.SignedInteger
            case 4 => ApplicationDatatypes.Real
            case 5 => ApplicationDatatypes.Double
            case 6 => ApplicationDatatypes.OctetString
            case 7 => ApplicationDatatypes.CharacterString
            case 8 => ApplicationDatatypes.BitString
            case 9 => ApplicationDatatypes.Enumerated
            case 10 => ApplicationDatatypes.Date
            case 11 => ApplicationDatatypes.Time
            case 12 => ApplicationDatatypes.BACnetObjectIdentifier
            case 13 => ApplicationDatatypes.ReservedForASHRAE13
            case 14 => ApplicationDatatypes.ReservedForASHRAE14
            case 15 => ApplicationDatatypes.ReservedForASHRAE15
            case _ => throw DecodeException("协议错误.无效标签")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case ApplicationDatatypes.Null => 0
            case ApplicationDatatypes.Boolean => 1
            case ApplicationDatatypes.UnsignedInteger => 2
            case ApplicationDatatypes.SignedInteger => 3
            case ApplicationDatatypes.Real => 4
            case ApplicationDatatypes.Double => 5
            case ApplicationDatatypes.OctetString => 6
            case ApplicationDatatypes.CharacterString => 7
            case ApplicationDatatypes.BitString => 8
            case ApplicationDatatypes.Enumerated => 9
            case ApplicationDatatypes.Date => 10
            case ApplicationDatatypes.Time => 11
            case ApplicationDatatypes.BACnetObjectIdentifier => 12
            case ApplicationDatatypes.ReservedForASHRAE13 => 13
            case ApplicationDatatypes.ReservedForASHRAE14 => 14
            case ApplicationDatatypes.ReservedForASHRAE15 => 15
        }
    }
}

/*协议原文，这个没有ASN1.0格式的正式定义
20.2.1.4 Application Tags 
The Tag Number field of an encoded BACnet application tag shall specify the application datatype as follows: 
Tag Number: 
    0 = Null 
    1 = Boolean 
    2 = Unsigned Integer
    3 = Signed Integer (2's complement notation) 
    4 = Real (ANSI/IEEE-754 floating point) 
    5 = Double (ANSI/IEEE-754 double precision floating point) 
    6 = Octet String 
    7 = Character String 
    8 = Bit String 
    9 = Enumerated 
    10 = Date 
    11 = Time 
    12 = BACnetObjectIdentifier 
    13, 14, 15 = Reserved for ASHRAE
*/