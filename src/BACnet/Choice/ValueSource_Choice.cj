public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum ValueSource_Choice <: IFromUInt8<ValueSource_Choice> & IToUInt8 & ToString & IFromString<ValueSource_Choice> {
    | none // none [0] NULL,
    | object // object [1] BACnetDeviceObjectReference,
    | address // address [2] BACnetAddress

    public static func fromUInt8(tag: UInt8): ValueSource_Choice {
        match (tag) {
            case 0 => ValueSource_Choice.none
            case 1 => ValueSource_Choice.object
            case 2 => ValueSource_Choice.address
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case ValueSource_Choice.none => 0
            case ValueSource_Choice.object => 1
            case ValueSource_Choice.address => 2
        }
    }

    public func toString(): String {
        match (this) {
            case ValueSource_Choice.none => "none"
            case ValueSource_Choice.object => "object"
            case ValueSource_Choice.address => "address"
        }
    }

    public static func fromString(arg_str: String): ValueSource_Choice {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "none" => ValueSource_Choice.none
            case "object" => ValueSource_Choice.object
            case "address" => ValueSource_Choice.address
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_958
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnetValueSource ::= CHOICE {
 none [0] NULL,
 object [1] BACnetDeviceObjectReference,
 address [2] BACnetAddress
 }
*/
