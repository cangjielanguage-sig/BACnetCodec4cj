public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum LightingOperation_Enum <: IFromUInt32<LightingOperation_Enum> & IToUInt32 & ToString & IFromString<LightingOperation_Enum> {
    | none // (0)
    | fade_to // (1)
    | ramp_to // (2)
    | step_up // (3)
    | step_down // (4)
    | step_on // (5)
    | step_off // (6)
    | warn // (7)
    | warn_off // (8)
    | warn_relinquish // (9)
    | stop // (10)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): LightingOperation_Enum {
        match (arg_tag) {
            case 0 => LightingOperation_Enum.none
            case 1 => LightingOperation_Enum.fade_to
            case 2 => LightingOperation_Enum.ramp_to
            case 3 => LightingOperation_Enum.step_up
            case 4 => LightingOperation_Enum.step_down
            case 5 => LightingOperation_Enum.step_on
            case 6 => LightingOperation_Enum.step_off
            case 7 => LightingOperation_Enum.warn
            case 8 => LightingOperation_Enum.warn_off
            case 9 => LightingOperation_Enum.warn_relinquish
            case 10 => LightingOperation_Enum.stop
            case x where x <= 255 => LightingOperation_Enum.reserved(x)
            case y where y > 255 && y <= 65535 => LightingOperation_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case LightingOperation_Enum.none => 0
            case LightingOperation_Enum.fade_to => 1
            case LightingOperation_Enum.ramp_to => 2
            case LightingOperation_Enum.step_up => 3
            case LightingOperation_Enum.step_down => 4
            case LightingOperation_Enum.step_on => 5
            case LightingOperation_Enum.step_off => 6
            case LightingOperation_Enum.warn => 7
            case LightingOperation_Enum.warn_off => 8
            case LightingOperation_Enum.warn_relinquish => 9
            case LightingOperation_Enum.stop => 10
            case LightingOperation_Enum.reserved(x) => x
            case LightingOperation_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case LightingOperation_Enum.none => "none"
            case LightingOperation_Enum.fade_to => "fade_to"
            case LightingOperation_Enum.ramp_to => "ramp_to"
            case LightingOperation_Enum.step_up => "step_up"
            case LightingOperation_Enum.step_down => "step_down"
            case LightingOperation_Enum.step_on => "step_on"
            case LightingOperation_Enum.step_off => "step_off"
            case LightingOperation_Enum.warn => "warn"
            case LightingOperation_Enum.warn_off => "warn_off"
            case LightingOperation_Enum.warn_relinquish => "warn_relinquish"
            case LightingOperation_Enum.stop => "stop"
            case LightingOperation_Enum.reserved(x) => "reserved_${x}"
            case LightingOperation_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): LightingOperation_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "none" => LightingOperation_Enum.none
            case "fade_to" => LightingOperation_Enum.fade_to
            case "ramp_to" => LightingOperation_Enum.ramp_to
            case "step_up" => LightingOperation_Enum.step_up
            case "step_down" => LightingOperation_Enum.step_down
            case "step_on" => LightingOperation_Enum.step_on
            case "step_off" => LightingOperation_Enum.step_off
            case "warn" => LightingOperation_Enum.warn
            case "warn_off" => LightingOperation_Enum.warn_off
            case "warn_relinquish" => LightingOperation_Enum.warn_relinquish
            case "stop" => LightingOperation_Enum.stop
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => LightingOperation_Enum.reserved(x)
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
                        case Some(x) => LightingOperation_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_922
--21.6 Base Types

BACnetLightingOperation ::= ENUMERATED {
 none (0),
 fade-to (1),
 ramp-to (2),
 step-up (3),
 step-down (4),
 step-on (5),
 step-off (6),
 warn (7),
 warn-off (8),
 warn-relinquish (9),
 stop (10),
 ...
 }
 -- Enumerated values 0-255 are reserved for definition by ASHRAE. Enumerated values 256-65535 may be used
*/
