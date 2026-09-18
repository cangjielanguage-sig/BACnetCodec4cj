public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum IPMode_Enum <: IFromUInt32<IPMode_Enum> & IToUInt32 & ToString & IFromString<IPMode_Enum> {
    | normal // (0)
    | `foreign` // (1)
    | bbmd // (2)

    public static func fromUInt32(arg_tag: UInt32): IPMode_Enum {
        match (arg_tag) {
            case 0 => IPMode_Enum.normal
            case 1 => IPMode_Enum.`foreign`
            case 2 => IPMode_Enum.bbmd
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case IPMode_Enum.normal => 0
            case IPMode_Enum.`foreign` => 1
            case IPMode_Enum.bbmd => 2
        }
    }

    public func toString(): String {
        match (this) {
            case IPMode_Enum.normal => "normal"
            case IPMode_Enum.`foreign` => "foreign"
            case IPMode_Enum.bbmd => "bbmd"
        }
    }

    public static func fromString(arg_str: String): IPMode_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "normal" => IPMode_Enum.normal
            case "foreign" => IPMode_Enum.`foreign`
            case "bbmd" => IPMode_Enum.bbmd
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_918
--21.6 Base Types

BACnetIPMode ::= ENUMERATED {
 normal (0),
 foreign (1),
 bbmd (2)
 }
*/
