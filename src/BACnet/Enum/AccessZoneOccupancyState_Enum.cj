public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum AccessZoneOccupancyState_Enum <: IFromUInt32<AccessZoneOccupancyState_Enum> & IToUInt32 & ToString & IFromString<AccessZoneOccupancyState_Enum> {
    | normal // (0)
    | below_lower_limit // (1)
    | at_lower_limit // (2)
    | at_upper_limit // (3)
    | above_upper_limit // (4)
    | disabled // (5)
    | not_supported // (6)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): AccessZoneOccupancyState_Enum {
        match (arg_tag) {
            case 0 => AccessZoneOccupancyState_Enum.normal
            case 1 => AccessZoneOccupancyState_Enum.below_lower_limit
            case 2 => AccessZoneOccupancyState_Enum.at_lower_limit
            case 3 => AccessZoneOccupancyState_Enum.at_upper_limit
            case 4 => AccessZoneOccupancyState_Enum.above_upper_limit
            case 5 => AccessZoneOccupancyState_Enum.disabled
            case 6 => AccessZoneOccupancyState_Enum.not_supported
            case x where x <= 63 => AccessZoneOccupancyState_Enum.reserved(x)
            case y where y > 63 && y <= 65535 => AccessZoneOccupancyState_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case AccessZoneOccupancyState_Enum.normal => 0
            case AccessZoneOccupancyState_Enum.below_lower_limit => 1
            case AccessZoneOccupancyState_Enum.at_lower_limit => 2
            case AccessZoneOccupancyState_Enum.at_upper_limit => 3
            case AccessZoneOccupancyState_Enum.above_upper_limit => 4
            case AccessZoneOccupancyState_Enum.disabled => 5
            case AccessZoneOccupancyState_Enum.not_supported => 6
            case AccessZoneOccupancyState_Enum.reserved(x) => x
            case AccessZoneOccupancyState_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case AccessZoneOccupancyState_Enum.normal => "normal"
            case AccessZoneOccupancyState_Enum.below_lower_limit => "below_lower_limit"
            case AccessZoneOccupancyState_Enum.at_lower_limit => "at_lower_limit"
            case AccessZoneOccupancyState_Enum.at_upper_limit => "at_upper_limit"
            case AccessZoneOccupancyState_Enum.above_upper_limit => "above_upper_limit"
            case AccessZoneOccupancyState_Enum.disabled => "disabled"
            case AccessZoneOccupancyState_Enum.not_supported => "not_supported"
            case AccessZoneOccupancyState_Enum.reserved(x) => "reserved_${x}"
            case AccessZoneOccupancyState_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): AccessZoneOccupancyState_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "normal" => AccessZoneOccupancyState_Enum.normal
            case "below_lower_limit" => AccessZoneOccupancyState_Enum.below_lower_limit
            case "at_lower_limit" => AccessZoneOccupancyState_Enum.at_lower_limit
            case "at_upper_limit" => AccessZoneOccupancyState_Enum.at_upper_limit
            case "above_upper_limit" => AccessZoneOccupancyState_Enum.above_upper_limit
            case "disabled" => AccessZoneOccupancyState_Enum.disabled
            case "not_supported" => AccessZoneOccupancyState_Enum.not_supported
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => AccessZoneOccupancyState_Enum.reserved(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _n where _n.startsWith("non_standardized_") =>
                let _numStr = _n.removePrefix("non_standardized_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => AccessZoneOccupancyState_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_894
--21.6 Base Types

BACnetAccessZoneOccupancyState ::= ENUMERATED {
 normal (0),
 below-lower-limit (1),
 at-lower-limit (2),
 at-upper-limit (3),
 above-upper-limit (4),
 disabled (5),
 not-supported (6),
 ...
 }
 -- Enumerated values 0-63 are reserved for definition by ASHRAE. Enumerated values
 -- 64-65535 may be used by others subject to the procedures and constraints described
 -- in Clause 23.
*/
