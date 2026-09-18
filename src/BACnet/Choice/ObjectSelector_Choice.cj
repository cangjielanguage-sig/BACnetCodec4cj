public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum ObjectSelector_Choice <: IFromUInt8<ObjectSelector_Choice> & IToUInt8 & ToString & IFromString<ObjectSelector_Choice> {
    | none // none NULL,
    | object_type // object-type BACnetObjectType
    | object // object BACnetObjectIdentifier,

    public static func fromUInt8(tag: UInt8): ObjectSelector_Choice {
        match (tag) {
            case 0 => ObjectSelector_Choice.none
            case 9 => ObjectSelector_Choice.object_type
            case 12 => ObjectSelector_Choice.object
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case ObjectSelector_Choice.none => 0
            case ObjectSelector_Choice.object_type => 9
            case ObjectSelector_Choice.object => 12
        }
    }

    public func toString(): String {
        match (this) {
            case ObjectSelector_Choice.none => "none"
            case ObjectSelector_Choice.object_type => "object_type"
            case ObjectSelector_Choice.object => "object"
        }
    }

    public static func fromString(arg_str: String): ObjectSelector_Choice {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "none" => ObjectSelector_Choice.none
            case "object_type" => ObjectSelector_Choice.object_type
            case "object" => ObjectSelector_Choice.object
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
