public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum ObjectSelector <: IFromUInt8<ObjectSelector> & IToUInt8 & ToString & IFromString<ObjectSelector> {
    | none // none NULL,
    | object_type // object-type BACnetObjectType
    | object // object BACnetObjectIdentifier,

    public static func fromUInt8(tag: UInt8): ObjectSelector {
        match (tag) {
            case 0 => ObjectSelector.none
            case 9 => ObjectSelector.object_type
            case 12 => ObjectSelector.object
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case ObjectSelector.none => 0
            case ObjectSelector.object_type => 9
            case ObjectSelector.object => 12
        }
    }

    public func toString(): String {
        match (this) {
            case ObjectSelector.none => "none"
            case ObjectSelector.object_type => "object_type"
            case ObjectSelector.object => "object"
        }
    }

    public static func fromString(arg_str: String): ObjectSelector {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "none" => ObjectSelector.none
            case "object_type" => ObjectSelector.object_type
            case "object" => ObjectSelector.object
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_928
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnetObjectSelector ::= CHOICE {
 none NULL,
 object BACnetObjectIdentifier,
 object-type BACnetObjectType
 }
*/
