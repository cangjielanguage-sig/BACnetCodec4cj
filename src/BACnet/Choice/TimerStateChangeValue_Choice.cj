public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum TimerStateChangeValue_Choice <: IFromUInt8<TimerStateChangeValue_Choice> & IToUInt8 & ToString & IFromString<TimerStateChangeValue_Choice> {
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
    | no_value // no-value [0] NULL,
    | constructed_value // constructed-value [1] ABSTRACT-SYNTAX.&Type,
    | datetime // datetime [2] BACnetDateTime,
    | lighting_command // lighting-command [3] BACnetLightingCommand

    public static func fromUInt8(tag: UInt8): TimerStateChangeValue_Choice {
        match (tag) {
            case 0 => TimerStateChangeValue_Choice.null
            case 1 => TimerStateChangeValue_Choice.boolean
            case 2 => TimerStateChangeValue_Choice.unsigned
            case 3 => TimerStateChangeValue_Choice.integer
            case 4 => TimerStateChangeValue_Choice.real
            case 5 => TimerStateChangeValue_Choice.double
            case 6 => TimerStateChangeValue_Choice.octetstring
            case 7 => TimerStateChangeValue_Choice.characterstring
            case 8 => TimerStateChangeValue_Choice.bitstring
            case 9 => TimerStateChangeValue_Choice.enumerated
            case 10 => TimerStateChangeValue_Choice.date
            case 11 => TimerStateChangeValue_Choice.time
            case 12 => TimerStateChangeValue_Choice.objectidentifier
            case 128 => TimerStateChangeValue_Choice.no_value
            case 129 => TimerStateChangeValue_Choice.constructed_value
            case 130 => TimerStateChangeValue_Choice.datetime
            case 131 => TimerStateChangeValue_Choice.lighting_command
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case TimerStateChangeValue_Choice.null => 0
            case TimerStateChangeValue_Choice.boolean => 1
            case TimerStateChangeValue_Choice.unsigned => 2
            case TimerStateChangeValue_Choice.integer => 3
            case TimerStateChangeValue_Choice.real => 4
            case TimerStateChangeValue_Choice.double => 5
            case TimerStateChangeValue_Choice.octetstring => 6
            case TimerStateChangeValue_Choice.characterstring => 7
            case TimerStateChangeValue_Choice.bitstring => 8
            case TimerStateChangeValue_Choice.enumerated => 9
            case TimerStateChangeValue_Choice.date => 10
            case TimerStateChangeValue_Choice.time => 11
            case TimerStateChangeValue_Choice.objectidentifier => 12
            case TimerStateChangeValue_Choice.no_value => 128
            case TimerStateChangeValue_Choice.constructed_value => 129
            case TimerStateChangeValue_Choice.datetime => 130
            case TimerStateChangeValue_Choice.lighting_command => 131
        }
    }

    public func toString(): String {
        match (this) {
            case TimerStateChangeValue_Choice.null => "null"
            case TimerStateChangeValue_Choice.boolean => "boolean"
            case TimerStateChangeValue_Choice.unsigned => "unsigned"
            case TimerStateChangeValue_Choice.integer => "integer"
            case TimerStateChangeValue_Choice.real => "real"
            case TimerStateChangeValue_Choice.double => "double"
            case TimerStateChangeValue_Choice.octetstring => "octetstring"
            case TimerStateChangeValue_Choice.characterstring => "characterstring"
            case TimerStateChangeValue_Choice.bitstring => "bitstring"
            case TimerStateChangeValue_Choice.enumerated => "enumerated"
            case TimerStateChangeValue_Choice.date => "date"
            case TimerStateChangeValue_Choice.time => "time"
            case TimerStateChangeValue_Choice.objectidentifier => "objectidentifier"
            case TimerStateChangeValue_Choice.no_value => "no_value"
            case TimerStateChangeValue_Choice.constructed_value => "constructed_value"
            case TimerStateChangeValue_Choice.datetime => "datetime"
            case TimerStateChangeValue_Choice.lighting_command => "lighting_command"
        }
    }

    public static func fromString(arg_str: String): TimerStateChangeValue_Choice {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "null" => TimerStateChangeValue_Choice.null
            case "boolean" => TimerStateChangeValue_Choice.boolean
            case "unsigned" => TimerStateChangeValue_Choice.unsigned
            case "integer" => TimerStateChangeValue_Choice.integer
            case "real" => TimerStateChangeValue_Choice.real
            case "double" => TimerStateChangeValue_Choice.double
            case "octetstring" => TimerStateChangeValue_Choice.octetstring
            case "characterstring" => TimerStateChangeValue_Choice.characterstring
            case "bitstring" => TimerStateChangeValue_Choice.bitstring
            case "enumerated" => TimerStateChangeValue_Choice.enumerated
            case "date" => TimerStateChangeValue_Choice.date
            case "time" => TimerStateChangeValue_Choice.time
            case "objectidentifier" => TimerStateChangeValue_Choice.objectidentifier
            case "no_value" => TimerStateChangeValue_Choice.no_value
            case "constructed_value" => TimerStateChangeValue_Choice.constructed_value
            case "datetime" => TimerStateChangeValue_Choice.datetime
            case "lighting_command" => TimerStateChangeValue_Choice.lighting_command
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_957
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnetTimerStateChangeValue ::= CHOICE {
 null NULL,
 boolean BOOLEAN,
 unsigned Unsigned,
 integer INTEGER,
 real REAL,
 double Double,
 octetstring OCTET STRING,
 characterstring CharacterString,
 bitstring BIT STRING,
 enumerated ENUMERATED,
 date Date,
 time Time,
 objectidentifier BACnetObjectIdentifier,
 no-value [0] NULL,
 constructed-value [1] ABSTRACT-SYNTAX.&Type,
 datetime [2] BACnetDateTime,
 lighting-command [3] BACnetLightingCommand
 }
*/
