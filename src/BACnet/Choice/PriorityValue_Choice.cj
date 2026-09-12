public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum PriorityValue_Choice <: IFromUInt8<PriorityValue_Choice> & IToUInt8 & ToString & IFromString<PriorityValue_Choice> {
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

    public static func fromUInt8(tag: UInt8): PriorityValue_Choice {
        match (tag) {
            case 0 => PriorityValue_Choice.null
            case 1 => PriorityValue_Choice.boolean
            case 2 => PriorityValue_Choice.unsigned
            case 3 => PriorityValue_Choice.integer
            case 4 => PriorityValue_Choice.real
            case 5 => PriorityValue_Choice.double
            case 6 => PriorityValue_Choice.octetstring
            case 7 => PriorityValue_Choice.characterstring
            case 8 => PriorityValue_Choice.bitstring
            case 9 => PriorityValue_Choice.enumerated
            case 10 => PriorityValue_Choice.date
            case 11 => PriorityValue_Choice.time
            case 12 => PriorityValue_Choice.objectidentifier
            case 128 => PriorityValue_Choice.constructed_value
            case 129 => PriorityValue_Choice.datetime
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case PriorityValue_Choice.null => 0
            case PriorityValue_Choice.boolean => 1
            case PriorityValue_Choice.unsigned => 2
            case PriorityValue_Choice.integer => 3
            case PriorityValue_Choice.real => 4
            case PriorityValue_Choice.double => 5
            case PriorityValue_Choice.octetstring => 6
            case PriorityValue_Choice.characterstring => 7
            case PriorityValue_Choice.bitstring => 8
            case PriorityValue_Choice.enumerated => 9
            case PriorityValue_Choice.date => 10
            case PriorityValue_Choice.time => 11
            case PriorityValue_Choice.objectidentifier => 12
            case PriorityValue_Choice.constructed_value => 128
            case PriorityValue_Choice.datetime => 129
        }
    }

    public func toString(): String {
        match (this) {
            case PriorityValue_Choice.null => "null"
            case PriorityValue_Choice.boolean => "boolean"
            case PriorityValue_Choice.unsigned => "unsigned"
            case PriorityValue_Choice.integer => "integer"
            case PriorityValue_Choice.real => "real"
            case PriorityValue_Choice.double => "double"
            case PriorityValue_Choice.octetstring => "octetstring"
            case PriorityValue_Choice.characterstring => "characterstring"
            case PriorityValue_Choice.bitstring => "bitstring"
            case PriorityValue_Choice.enumerated => "enumerated"
            case PriorityValue_Choice.date => "date"
            case PriorityValue_Choice.time => "time"
            case PriorityValue_Choice.objectidentifier => "objectidentifier"
            case PriorityValue_Choice.constructed_value => "constructed_value"
            case PriorityValue_Choice.datetime => "datetime"
        }
    }

    public static func fromString(arg_str: String): PriorityValue_Choice {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "null" => PriorityValue_Choice.null
            case "boolean" => PriorityValue_Choice.boolean
            case "unsigned" => PriorityValue_Choice.unsigned
            case "integer" => PriorityValue_Choice.integer
            case "real" => PriorityValue_Choice.real
            case "double" => PriorityValue_Choice.double
            case "octetstring" => PriorityValue_Choice.octetstring
            case "characterstring" => PriorityValue_Choice.characterstring
            case "bitstring" => PriorityValue_Choice.bitstring
            case "enumerated" => PriorityValue_Choice.enumerated
            case "date" => PriorityValue_Choice.date
            case "time" => PriorityValue_Choice.time
            case "objectidentifier" => PriorityValue_Choice.objectidentifier
            case "constructed_value" => PriorityValue_Choice.constructed_value
            case "datetime" => PriorityValue_Choice.datetime
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
