public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum BinaryLightingPV_Enum <: IFromUInt32<BinaryLightingPV_Enum> & IToUInt32 & ToString & IFromString<BinaryLightingPV_Enum> {
    | off // (0)
    | on // (1)
    | warn // (2)
    | warn_off // (3)
    | warn_relinquish // (4)
    | stop // (5)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): BinaryLightingPV_Enum {
        match (arg_tag) {
            case 0 => BinaryLightingPV_Enum.off
            case 1 => BinaryLightingPV_Enum.on
            case 2 => BinaryLightingPV_Enum.warn
            case 3 => BinaryLightingPV_Enum.warn_off
            case 4 => BinaryLightingPV_Enum.warn_relinquish
            case 5 => BinaryLightingPV_Enum.stop
            case x where x <= 63 => BinaryLightingPV_Enum.reserved(x)
            case y where y > 63 && y <= 255 => BinaryLightingPV_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case BinaryLightingPV_Enum.off => 0
            case BinaryLightingPV_Enum.on => 1
            case BinaryLightingPV_Enum.warn => 2
            case BinaryLightingPV_Enum.warn_off => 3
            case BinaryLightingPV_Enum.warn_relinquish => 4
            case BinaryLightingPV_Enum.stop => 5
            case BinaryLightingPV_Enum.reserved(x) => x
            case BinaryLightingPV_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case BinaryLightingPV_Enum.off => "off"
            case BinaryLightingPV_Enum.on => "on"
            case BinaryLightingPV_Enum.warn => "warn"
            case BinaryLightingPV_Enum.warn_off => "warn_off"
            case BinaryLightingPV_Enum.warn_relinquish => "warn_relinquish"
            case BinaryLightingPV_Enum.stop => "stop"
            case BinaryLightingPV_Enum.reserved(x) => "reserved_${x}"
            case BinaryLightingPV_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): BinaryLightingPV_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "off" => BinaryLightingPV_Enum.off
            case "on" => BinaryLightingPV_Enum.on
            case "warn" => BinaryLightingPV_Enum.warn
            case "warn_off" => BinaryLightingPV_Enum.warn_off
            case "warn_relinquish" => BinaryLightingPV_Enum.warn_relinquish
            case "stop" => BinaryLightingPV_Enum.stop
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => BinaryLightingPV_Enum.reserved(x)
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
                        case Some(x) => BinaryLightingPV_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_899
--21.6 Base Types

BACnetBinaryLightingPV ::= ENUMERATED {
 off (0),
 on (1),
 warn (2),
 warn-off (3),
 warn-relinquish   (4),
 stop (5),
 ...
 }
 -- Enumerated values 0-63 are reserved for definition by ASHRAE. Enumerated values 64-255 may be used by
 -- others subject to the procedures and constraints described in Clause 23.
*/
