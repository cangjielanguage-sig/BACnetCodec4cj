public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum Action_Enum <: IFromUInt32<Action_Enum> & IToUInt32 & ToString & IFromString<Action_Enum> {
    | direct // (0)
    | reverse // (1)

    public static func fromUInt32(arg_tag: UInt32): Action_Enum {
        match (arg_tag) {
            case 0 => Action_Enum.direct
            case 1 => Action_Enum.reverse
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case Action_Enum.direct => 0
            case Action_Enum.reverse => 1
        }
    }

    public func toString(): String {
        match (this) {
            case Action_Enum.direct => "direct"
            case Action_Enum.reverse => "reverse"
        }
    }

    public static func fromString(arg_str: String): Action_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "direct" => Action_Enum.direct
            case "reverse" => Action_Enum.reverse
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_895
--21.6 Base Types

BACnetAction ::= ENUMERATED {
 direct (0),
 reverse (1)
 }
*/
