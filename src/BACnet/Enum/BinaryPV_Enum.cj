public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum BinaryPV_Enum <: IFromUInt32<BinaryPV_Enum> & IToUInt32 & ToString & IFromString<BinaryPV_Enum> {
    | inactive // (0)
    | active // (1)

    public static func fromUInt32(arg_tag: UInt32): BinaryPV_Enum {
        match (arg_tag) {
            case 0 => BinaryPV_Enum.inactive
            case 1 => BinaryPV_Enum.active
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case BinaryPV_Enum.inactive => 0
            case BinaryPV_Enum.active => 1
        }
    }

    public func toString(): String {
        match (this) {
            case BinaryPV_Enum.inactive => "inactive"
            case BinaryPV_Enum.active => "active"
        }
    }

    public static func fromString(arg_str: String): BinaryPV_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "inactive" => BinaryPV_Enum.inactive
            case "active" => BinaryPV_Enum.active
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_899
--21.6 Base Types

BACnetBinaryPV ::= ENUMERATED {
 inactive (0),
 active (1)
 }
*/
