public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum SuccessFilter_Enum <: IFromUInt32<SuccessFilter_Enum> & IToUInt32 & ToString & IFromString<SuccessFilter_Enum> {
    | all // (0)
    | successes_only // (1)
    | failures_only // (2)

    public static func fromUInt32(arg_tag: UInt32): SuccessFilter_Enum {
        match (arg_tag) {
            case 0 => SuccessFilter_Enum.all
            case 1 => SuccessFilter_Enum.successes_only
            case 2 => SuccessFilter_Enum.failures_only
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case SuccessFilter_Enum.all => 0
            case SuccessFilter_Enum.successes_only => 1
            case SuccessFilter_Enum.failures_only => 2
        }
    }

    public func toString(): String {
        match (this) {
            case SuccessFilter_Enum.all => "all"
            case SuccessFilter_Enum.successes_only => "successes_only"
            case SuccessFilter_Enum.failures_only => "failures_only"
        }
    }

    public static func fromString(arg_str: String): SuccessFilter_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "all" => SuccessFilter_Enum.all
            case "successes_only" => SuccessFilter_Enum.successes_only
            case "failures_only" => SuccessFilter_Enum.failures_only
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_957
--21.6 Base Types

BACnetSuccessFilter ::= ENUMERATED {
 all (0),
 successes-only (1),
 failures-only (2)
 }
*/
