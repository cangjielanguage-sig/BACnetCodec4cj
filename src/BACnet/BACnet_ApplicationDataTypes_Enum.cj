public package BACnetCodec4cj.BACnet

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum BACnet_ApplicationDataTypes_Enum <:  ToString 
& IToUInt32
& IFromUInt32<BACnet_ApplicationDataTypes_Enum>
& IFromString<BACnet_ApplicationDataTypes_Enum>  
{
    //20.2.1.4 Application Tags 
    //The Tag Number field of an encoded BACnet application tag shall specify the application datatype as follows: 
    | null //0
    | boolean //1 
    | unsigned_integer //2 
    | signed_integer //3 (2's complement notation) 
    | real //4 (ANSI/IEEE-754 floating point) 
    | double //5 (ANSI/IEEE-754 double precision floating point) 
    | octet_string //6 
    | character_string //7 
    | bit_string //8 
    | enumerated //9 
    | date //10 
    | time //11 
    | bacnet_object_identifier //12  


    public static func fromUInt32(tag: UInt32): BACnet_ApplicationDataTypes_Enum {
        match (tag) {
            case 0 => BACnet_ApplicationDataTypes_Enum.null
            case 1 => BACnet_ApplicationDataTypes_Enum.boolean
            case 2 => BACnet_ApplicationDataTypes_Enum.unsigned_integer
            case 3 => BACnet_ApplicationDataTypes_Enum.signed_integer
            case 4 => BACnet_ApplicationDataTypes_Enum.real
            case 5 => BACnet_ApplicationDataTypes_Enum.double
            case 6 => BACnet_ApplicationDataTypes_Enum.octet_string
            case 7 => BACnet_ApplicationDataTypes_Enum.character_string
            case 8 => BACnet_ApplicationDataTypes_Enum.bit_string
            case 9 => BACnet_ApplicationDataTypes_Enum.enumerated
            case 10 => BACnet_ApplicationDataTypes_Enum.date
            case 11 => BACnet_ApplicationDataTypes_Enum.time
            case 12 => BACnet_ApplicationDataTypes_Enum.bacnet_object_identifier

            case _ => throw DecodeException("协议解析错误.无效原始数据标签")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case BACnet_ApplicationDataTypes_Enum.null => 0
            case BACnet_ApplicationDataTypes_Enum.boolean => 1
            case BACnet_ApplicationDataTypes_Enum.unsigned_integer => 2
            case BACnet_ApplicationDataTypes_Enum.signed_integer => 3
            case BACnet_ApplicationDataTypes_Enum.real => 4
            case BACnet_ApplicationDataTypes_Enum.double => 5
            case BACnet_ApplicationDataTypes_Enum.octet_string => 6
            case BACnet_ApplicationDataTypes_Enum.character_string => 7
            case BACnet_ApplicationDataTypes_Enum.bit_string => 8
            case BACnet_ApplicationDataTypes_Enum.enumerated => 9
            case BACnet_ApplicationDataTypes_Enum.date => 10
            case BACnet_ApplicationDataTypes_Enum.time => 11
            case BACnet_ApplicationDataTypes_Enum.bacnet_object_identifier => 12
        }
    }

        public func toString(): String {
        match (this) {
            case BACnet_ApplicationDataTypes_Enum.null => "null"
            case BACnet_ApplicationDataTypes_Enum.boolean => "boolean"
            case BACnet_ApplicationDataTypes_Enum.unsigned_integer => "unsigned_integer"
            case BACnet_ApplicationDataTypes_Enum.signed_integer => "signed_integer"
            case BACnet_ApplicationDataTypes_Enum.real => "real"
            case BACnet_ApplicationDataTypes_Enum.double => "double"
            case BACnet_ApplicationDataTypes_Enum.octet_string => "octet_string"
            case BACnet_ApplicationDataTypes_Enum.character_string => "character_string"
            case BACnet_ApplicationDataTypes_Enum.bit_string => "bit_string"
            case BACnet_ApplicationDataTypes_Enum.enumerated => "enumerated"
            case BACnet_ApplicationDataTypes_Enum.date => "date"
            case BACnet_ApplicationDataTypes_Enum.time => "time"
            case BACnet_ApplicationDataTypes_Enum.bacnet_object_identifier => "batnet_object_identifier"

        }
    }

    public static func fromString(arg_str: String): BACnet_ApplicationDataTypes_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "null" => BACnet_ApplicationDataTypes_Enum.null
            case "boolean" => BACnet_ApplicationDataTypes_Enum.boolean
            case "unsigned_integer" => BACnet_ApplicationDataTypes_Enum.unsigned_integer
            case "signed_integer" => BACnet_ApplicationDataTypes_Enum.signed_integer
            case "real" => BACnet_ApplicationDataTypes_Enum.real
            case "double" => BACnet_ApplicationDataTypes_Enum.double
            case "octet_string" => BACnet_ApplicationDataTypes_Enum.octet_string
            case "character_string" => BACnet_ApplicationDataTypes_Enum.character_string
            case "bit_string" => BACnet_ApplicationDataTypes_Enum.bit_string
            case "enumerated" => BACnet_ApplicationDataTypes_Enum.enumerated
            case "date" => BACnet_ApplicationDataTypes_Enum.date
            case "time" => BACnet_ApplicationDataTypes_Enum.time
            case "batnet_object_identifier" => BACnet_ApplicationDataTypes_Enum.bacnet_object_identifier

            case "unsignedinteger" => BACnet_ApplicationDataTypes_Enum.unsigned_integer
            case "signedinteger" => BACnet_ApplicationDataTypes_Enum.signed_integer
            case "octetstring" => BACnet_ApplicationDataTypes_Enum.octet_string
            case "characterstring" => BACnet_ApplicationDataTypes_Enum.character_string
            case "bitstring" => BACnet_ApplicationDataTypes_Enum.bit_string
            case "batnetobjectidentifier" => BACnet_ApplicationDataTypes_Enum.bacnet_object_identifier

            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
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