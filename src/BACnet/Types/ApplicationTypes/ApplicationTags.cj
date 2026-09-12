public package BACnetCodec4cj.BACnet.Types.ApplicationTypes


import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum ApplicationTags <: IFromUInt8<ApplicationTags> & IToUInt8 {
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

    public static func fromUInt8(tag: UInt8): ApplicationTags {
        match (tag) {
            case 0 => ApplicationTags.Null
            case 1 => ApplicationTags.Boolean
            case 2 => ApplicationTags.UnsignedInteger
            case 3 => ApplicationTags.SignedInteger
            case 4 => ApplicationTags.Real
            case 5 => ApplicationTags.Double
            case 6 => ApplicationTags.OctetString
            case 7 => ApplicationTags.CharacterString
            case 8 => ApplicationTags.BitString
            case 9 => ApplicationTags.Enumerated
            case 10 => ApplicationTags.Date
            case 11 => ApplicationTags.Time
            case 12 => ApplicationTags.BACnetObjectIdentifier
            case 13 => ApplicationTags.ReservedForASHRAE13
            case 14 => ApplicationTags.ReservedForASHRAE14
            case 15 => ApplicationTags.ReservedForASHRAE15
            case _ => throw DecodeException("协议错误.无效标签")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case ApplicationTags.Null => 0
            case ApplicationTags.Boolean => 1
            case ApplicationTags.UnsignedInteger => 2
            case ApplicationTags.SignedInteger => 3
            case ApplicationTags.Real => 4
            case ApplicationTags.Double => 5
            case ApplicationTags.OctetString => 6
            case ApplicationTags.CharacterString => 7
            case ApplicationTags.BitString => 8
            case ApplicationTags.Enumerated => 9
            case ApplicationTags.Date => 10
            case ApplicationTags.Time => 11
            case ApplicationTags.BACnetObjectIdentifier => 12
            case ApplicationTags.ReservedForASHRAE13 => 13
            case ApplicationTags.ReservedForASHRAE14 => 14
            case ApplicationTags.ReservedForASHRAE15 => 15
        }
    }
}

/*
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

/*协议原文，
--ISO_16484_5_2022_Page_891
--21.5 Application Types 

-- The following productions are the definitions of the Application datatypes. 
-- See Clause 20.2.1.4. 

-- NULL [APPLICATION 0], equivalent to [UNIVERSAL 5] 

-- BOOLEAN [APPLICATION 1], equivalent to [UNIVERSAL 1] 
 
Unsigned ::= [APPLICATION 2] INTEGER (0..MAX) 
 
Unsigned8 ::= Unsigned (0..255) 
 
Unsigned16 ::= Unsigned (0..65535) 
 
Unsigned32 ::= Unsigned (0..4294967295) 
 
Unsigned64 ::= Unsigned (0.. 18446744073709551615) -- 0 .. 'the 64th power of two'-1 

 -- INTEGER [APPLICATION 3], equivalent to [UNIVERSAL 2] 
 
INTEGER16 ::= INTEGER (-32768..32767) 
 
 -- REAL [APPLICATION 4], equivalent to [UNIVERSAL 9] ANSI/IEEE-754 single precision floating point 
 
Double ::=  [APPLICATION 5] OCTET STRING (SIZE(8)) -- ANSI/IEEE-754 double precision floating point 
 
 -- OCTET STRING [APPLICATION 6], equivalent to [UNIVERSAL 4] 
 
CharacterString ::=  [APPLICATION 7] OCTET STRING -- see Clause 20.2.9 for supported types 
 
 -- BIT STRING [APPLICATION 8], equivalent to [UNIVERSAL 3] 
 
 -- ENUMERATED [APPLICATION 9], equivalent to [UNIVERSAL 10] 
 
Date ::= [APPLICATION 10] OCTET STRING (SIZE(4)) -- see Clause 20.2.12 
-- first octet year minus 1900,  X'FF' = unspecified 
-- second octet month  (1.. 14), 	1   = January 
--      				13 = odd months 
--      				14 = even months 
--      				X'FF' = unspecified 
-- third octet day of month  (1..34), 	32 = last day of month 
--      				33 = odd days of month 
--      				34 = even days of month 
--      				X'FF' = unspecified 
-- fourth octet day of week  (1..7) 	1 = Monday 
--      				7 = Sunday 
--      				X'FF' = unspecified 
 
Time ::= [APPLICATION 11] OCTET STRING (SIZE(4)) -- see Clause 20.2.13 
-- first octet hour  (0..23), X'FF' = unspecified 
-- second octet minute  (0..59), X'FF' = unspecified 
-- third octet second  (0..59), X'FF' = unspecified 
-- fourth octet hundredths (0..99) X'FF' = unspecified 
 
BACnetObjectIdentifier ::= [APPLICATION 12] OCTET STRING (SIZE(4)) -- see Clause 20.2.14 
 
*/