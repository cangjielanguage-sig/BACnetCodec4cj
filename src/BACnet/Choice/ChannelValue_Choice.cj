public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum ChannelValue_Choice <: IFromUInt8<ChannelValue_Choice> & IToUInt8 & ToString & IFromString<ChannelValue_Choice> {
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
    | lighting_command // lighting-command [0] BACnetLightingCommand

    public static func fromUInt8(tag: UInt8): ChannelValue_Choice {
        match (tag) {
            case 0 => ChannelValue_Choice.null
            case 1 => ChannelValue_Choice.boolean
            case 2 => ChannelValue_Choice.unsigned
            case 3 => ChannelValue_Choice.integer
            case 4 => ChannelValue_Choice.real
            case 5 => ChannelValue_Choice.double
            case 6 => ChannelValue_Choice.octetstring
            case 7 => ChannelValue_Choice.characterstring
            case 8 => ChannelValue_Choice.bitstring
            case 9 => ChannelValue_Choice.enumerated
            case 10 => ChannelValue_Choice.date
            case 11 => ChannelValue_Choice.time
            case 12 => ChannelValue_Choice.objectidentifier
            case 128 => ChannelValue_Choice.lighting_command
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case ChannelValue_Choice.null => 0
            case ChannelValue_Choice.boolean => 1
            case ChannelValue_Choice.unsigned => 2
            case ChannelValue_Choice.integer => 3
            case ChannelValue_Choice.real => 4
            case ChannelValue_Choice.double => 5
            case ChannelValue_Choice.octetstring => 6
            case ChannelValue_Choice.characterstring => 7
            case ChannelValue_Choice.bitstring => 8
            case ChannelValue_Choice.enumerated => 9
            case ChannelValue_Choice.date => 10
            case ChannelValue_Choice.time => 11
            case ChannelValue_Choice.objectidentifier => 12
            case ChannelValue_Choice.lighting_command => 128
        }
    }

    public func toString(): String {
        match (this) {
            case ChannelValue_Choice.null => "null"
            case ChannelValue_Choice.boolean => "boolean"
            case ChannelValue_Choice.unsigned => "unsigned"
            case ChannelValue_Choice.integer => "integer"
            case ChannelValue_Choice.real => "real"
            case ChannelValue_Choice.double => "double"
            case ChannelValue_Choice.octetstring => "octetstring"
            case ChannelValue_Choice.characterstring => "characterstring"
            case ChannelValue_Choice.bitstring => "bitstring"
            case ChannelValue_Choice.enumerated => "enumerated"
            case ChannelValue_Choice.date => "date"
            case ChannelValue_Choice.time => "time"
            case ChannelValue_Choice.objectidentifier => "objectidentifier"
            case ChannelValue_Choice.lighting_command => "lighting_command"
        }
    }

    public static func fromString(arg_str: String): ChannelValue_Choice {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "null" => ChannelValue_Choice.null
            case "boolean" => ChannelValue_Choice.boolean
            case "unsigned" => ChannelValue_Choice.unsigned
            case "integer" => ChannelValue_Choice.integer
            case "real" => ChannelValue_Choice.real
            case "double" => ChannelValue_Choice.double
            case "octetstring" => ChannelValue_Choice.octetstring
            case "characterstring" => ChannelValue_Choice.characterstring
            case "bitstring" => ChannelValue_Choice.bitstring
            case "enumerated" => ChannelValue_Choice.enumerated
            case "date" => ChannelValue_Choice.date
            case "time" => ChannelValue_Choice.time
            case "objectidentifier" => ChannelValue_Choice.objectidentifier
            case "lighting_command" => ChannelValue_Choice.lighting_command
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_900
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnetChannelValue ::= CHOICE {
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
 lighting-command [0] BACnetLightingCommand
 }
*/
