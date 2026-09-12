public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum Polarity_Enum <: IFromUInt32<Polarity_Enum> & IToUInt32 & ToString & IFromString<Polarity_Enum> {
    | normal // (0)
    | reverse // (1)

    public static func fromUInt32(arg_tag: UInt32): Polarity_Enum {
        match (arg_tag) {
            case 0 => Polarity_Enum.normal
            case 1 => Polarity_Enum.reverse
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case Polarity_Enum.normal => 0
            case Polarity_Enum.reverse => 1
        }
    }

    public func toString(): String {
        match (this) {
            case Polarity_Enum.normal => "normal"
            case Polarity_Enum.reverse => "reverse"
        }
    }

    public static func fromString(arg_str: String): Polarity_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "normal" => Polarity_Enum.normal
            case "reverse" => Polarity_Enum.reverse
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_932
--21.6 Base Types

BACnetPolarity ::= ENUMERATED {
 normal (0),
 reverse (1)
 }
*/
