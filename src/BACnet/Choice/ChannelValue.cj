public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum ChannelValue <: IFromUInt8<ChannelValue> & IToUInt8 & ToString & IFromString<ChannelValue> {
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

    public static func fromUInt8(tag: UInt8): ChannelValue {
        match (tag) {
            case 0 => ChannelValue.null
            case 1 => ChannelValue.boolean
            case 2 => ChannelValue.unsigned
            case 3 => ChannelValue.integer
            case 4 => ChannelValue.real
            case 5 => ChannelValue.double
            case 6 => ChannelValue.octetstring
            case 7 => ChannelValue.characterstring
            case 8 => ChannelValue.bitstring
            case 9 => ChannelValue.enumerated
            case 10 => ChannelValue.date
            case 11 => ChannelValue.time
            case 12 => ChannelValue.objectidentifier
            case 128 => ChannelValue.lighting_command
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case ChannelValue.null => 0
            case ChannelValue.boolean => 1
            case ChannelValue.unsigned => 2
            case ChannelValue.integer => 3
            case ChannelValue.real => 4
            case ChannelValue.double => 5
            case ChannelValue.octetstring => 6
            case ChannelValue.characterstring => 7
            case ChannelValue.bitstring => 8
            case ChannelValue.enumerated => 9
            case ChannelValue.date => 10
            case ChannelValue.time => 11
            case ChannelValue.objectidentifier => 12
            case ChannelValue.lighting_command => 128
        }
    }

    public func toString(): String {
        match (this) {
            case ChannelValue.null => "null"
            case ChannelValue.boolean => "boolean"
            case ChannelValue.unsigned => "unsigned"
            case ChannelValue.integer => "integer"
            case ChannelValue.real => "real"
            case ChannelValue.double => "double"
            case ChannelValue.octetstring => "octetstring"
            case ChannelValue.characterstring => "characterstring"
            case ChannelValue.bitstring => "bitstring"
            case ChannelValue.enumerated => "enumerated"
            case ChannelValue.date => "date"
            case ChannelValue.time => "time"
            case ChannelValue.objectidentifier => "objectidentifier"
            case ChannelValue.lighting_command => "lighting_command"
        }
    }

    public static func fromString(arg_str: String): ChannelValue {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "null" => ChannelValue.null
            case "boolean" => ChannelValue.boolean
            case "unsigned" => ChannelValue.unsigned
            case "integer" => ChannelValue.integer
            case "real" => ChannelValue.real
            case "double" => ChannelValue.double
            case "octetstring" => ChannelValue.octetstring
            case "characterstring" => ChannelValue.characterstring
            case "bitstring" => ChannelValue.bitstring
            case "enumerated" => ChannelValue.enumerated
            case "date" => ChannelValue.date
            case "time" => ChannelValue.time
            case "objectidentifier" => ChannelValue.objectidentifier
            case "lighting_command" => ChannelValue.lighting_command
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
