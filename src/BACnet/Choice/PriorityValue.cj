public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum PriorityValue <: IFromUInt8<PriorityValue> & IToUInt8 & ToString & IFromString<PriorityValue> {
    | null // null NULL,
    | boolean // boolean BOOLEAN,
    | unsigned // unsigned Unsigned,
    | integer // integer INTEGER,
    | real // real REAL,
    | double // double Double,
    | octetstring // octetstring OCTET STRING,
    | characterstring // characterstring CharacterString,
    | bitstring // bitstring BIT STRING,
    | enumerated // enumerated ENUMERATED,
    | date // date Date,
    | time // time Time,
    | objectidentifier // objectidentifier BACnetObjectIdentifier,
    | constructed_value // constructed-value [0] ABSTRACT-SYNTAX.&Type,
    | datetime // datetime [1] BACnetDateTime

    public static func fromUInt8(tag: UInt8): PriorityValue {
        match (tag) {
            case 0 => PriorityValue.null
            case 1 => PriorityValue.boolean
            case 2 => PriorityValue.unsigned
            case 3 => PriorityValue.integer
            case 4 => PriorityValue.real
            case 5 => PriorityValue.double
            case 6 => PriorityValue.octetstring
            case 7 => PriorityValue.characterstring
            case 8 => PriorityValue.bitstring
            case 9 => PriorityValue.enumerated
            case 10 => PriorityValue.date
            case 11 => PriorityValue.time
            case 12 => PriorityValue.objectidentifier
            case 128 => PriorityValue.constructed_value
            case 129 => PriorityValue.datetime
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case PriorityValue.null => 0
            case PriorityValue.boolean => 1
            case PriorityValue.unsigned => 2
            case PriorityValue.integer => 3
            case PriorityValue.real => 4
            case PriorityValue.double => 5
            case PriorityValue.octetstring => 6
            case PriorityValue.characterstring => 7
            case PriorityValue.bitstring => 8
            case PriorityValue.enumerated => 9
            case PriorityValue.date => 10
            case PriorityValue.time => 11
            case PriorityValue.objectidentifier => 12
            case PriorityValue.constructed_value => 128
            case PriorityValue.datetime => 129
        }
    }

    public func toString(): String {
        match (this) {
            case PriorityValue.null => "null"
            case PriorityValue.boolean => "boolean"
            case PriorityValue.unsigned => "unsigned"
            case PriorityValue.integer => "integer"
            case PriorityValue.real => "real"
            case PriorityValue.double => "double"
            case PriorityValue.octetstring => "octetstring"
            case PriorityValue.characterstring => "characterstring"
            case PriorityValue.bitstring => "bitstring"
            case PriorityValue.enumerated => "enumerated"
            case PriorityValue.date => "date"
            case PriorityValue.time => "time"
            case PriorityValue.objectidentifier => "objectidentifier"
            case PriorityValue.constructed_value => "constructed_value"
            case PriorityValue.datetime => "datetime"
        }
    }

    public static func fromString(arg_str: String): PriorityValue {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "null" => PriorityValue.null
            case "boolean" => PriorityValue.boolean
            case "unsigned" => PriorityValue.unsigned
            case "integer" => PriorityValue.integer
            case "real" => PriorityValue.real
            case "double" => PriorityValue.double
            case "octetstring" => PriorityValue.octetstring
            case "characterstring" => PriorityValue.characterstring
            case "bitstring" => PriorityValue.bitstring
            case "enumerated" => PriorityValue.enumerated
            case "date" => PriorityValue.date
            case "time" => PriorityValue.time
            case "objectidentifier" => PriorityValue.objectidentifier
            case "constructed_value" => PriorityValue.constructed_value
            case "datetime" => PriorityValue.datetime
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_933
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnetPriorityValue ::= CHOICE {
 null NULL,
 real REAL,
 enumerated ENUMERATED,
 unsigned Unsigned,
 boolean BOOLEAN,
 integer INTEGER,
 double Double,
 time Time,
 characterstring CharacterString,
 octetstring OCTET STRING,
 bitstring BIT STRING,
 date Date,
 objectidentifier BACnetObjectIdentifier,
 constructed-value [0] ABSTRACT-SYNTAX.&Type,
 datetime [1] BACnetDateTime
 }
*/
