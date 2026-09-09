public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum TimerStateChangeValue <: IFromUInt8<TimerStateChangeValue> & IToUInt8 & ToString & IFromString<TimerStateChangeValue> {
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

    public static func fromUInt8(tag: UInt8): TimerStateChangeValue {
        match (tag) {
            case 0 => TimerStateChangeValue.null
            case 1 => TimerStateChangeValue.boolean
            case 2 => TimerStateChangeValue.unsigned
            case 3 => TimerStateChangeValue.integer
            case 4 => TimerStateChangeValue.real
            case 5 => TimerStateChangeValue.double
            case 6 => TimerStateChangeValue.octetstring
            case 7 => TimerStateChangeValue.characterstring
            case 8 => TimerStateChangeValue.bitstring
            case 9 => TimerStateChangeValue.enumerated
            case 10 => TimerStateChangeValue.date
            case 11 => TimerStateChangeValue.time
            case 12 => TimerStateChangeValue.objectidentifier
            case 128 => TimerStateChangeValue.no_value
            case 129 => TimerStateChangeValue.constructed_value
            case 130 => TimerStateChangeValue.datetime
            case 131 => TimerStateChangeValue.lighting_command
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case TimerStateChangeValue.null => 0
            case TimerStateChangeValue.boolean => 1
            case TimerStateChangeValue.unsigned => 2
            case TimerStateChangeValue.integer => 3
            case TimerStateChangeValue.real => 4
            case TimerStateChangeValue.double => 5
            case TimerStateChangeValue.octetstring => 6
            case TimerStateChangeValue.characterstring => 7
            case TimerStateChangeValue.bitstring => 8
            case TimerStateChangeValue.enumerated => 9
            case TimerStateChangeValue.date => 10
            case TimerStateChangeValue.time => 11
            case TimerStateChangeValue.objectidentifier => 12
            case TimerStateChangeValue.no_value => 128
            case TimerStateChangeValue.constructed_value => 129
            case TimerStateChangeValue.datetime => 130
            case TimerStateChangeValue.lighting_command => 131
        }
    }

    public func toString(): String {
        match (this) {
            case TimerStateChangeValue.null => "null"
            case TimerStateChangeValue.boolean => "boolean"
            case TimerStateChangeValue.unsigned => "unsigned"
            case TimerStateChangeValue.integer => "integer"
            case TimerStateChangeValue.real => "real"
            case TimerStateChangeValue.double => "double"
            case TimerStateChangeValue.octetstring => "octetstring"
            case TimerStateChangeValue.characterstring => "characterstring"
            case TimerStateChangeValue.bitstring => "bitstring"
            case TimerStateChangeValue.enumerated => "enumerated"
            case TimerStateChangeValue.date => "date"
            case TimerStateChangeValue.time => "time"
            case TimerStateChangeValue.objectidentifier => "objectidentifier"
            case TimerStateChangeValue.no_value => "no_value"
            case TimerStateChangeValue.constructed_value => "constructed_value"
            case TimerStateChangeValue.datetime => "datetime"
            case TimerStateChangeValue.lighting_command => "lighting_command"
        }
    }

    public static func fromString(arg_str: String): TimerStateChangeValue {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "null" => TimerStateChangeValue.null
            case "boolean" => TimerStateChangeValue.boolean
            case "unsigned" => TimerStateChangeValue.unsigned
            case "integer" => TimerStateChangeValue.integer
            case "real" => TimerStateChangeValue.real
            case "double" => TimerStateChangeValue.double
            case "octetstring" => TimerStateChangeValue.octetstring
            case "characterstring" => TimerStateChangeValue.characterstring
            case "bitstring" => TimerStateChangeValue.bitstring
            case "enumerated" => TimerStateChangeValue.enumerated
            case "date" => TimerStateChangeValue.date
            case "time" => TimerStateChangeValue.time
            case "objectidentifier" => TimerStateChangeValue.objectidentifier
            case "no_value" => TimerStateChangeValue.no_value
            case "constructed_value" => TimerStateChangeValue.constructed_value
            case "datetime" => TimerStateChangeValue.datetime
            case "lighting_command" => TimerStateChangeValue.lighting_command
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
