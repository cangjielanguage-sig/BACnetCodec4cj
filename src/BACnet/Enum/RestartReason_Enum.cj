public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum RestartReason_Enum <: IFromUInt32<RestartReason_Enum> & IToUInt32 & ToString & IFromString<RestartReason_Enum> {
    | unknown // (0)
    | coldstart // (1)
    | warmstart // (2)
    | detected_power_lost // (3)
    | detected_powered_off // (4)
    | hardware_watchdog // (5)
    | software_watchdog // (6)
    | suspended // (7)
    | activate_changes // (8)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): RestartReason_Enum {
        match (arg_tag) {
            case 0 => RestartReason_Enum.unknown
            case 1 => RestartReason_Enum.coldstart
            case 2 => RestartReason_Enum.warmstart
            case 3 => RestartReason_Enum.detected_power_lost
            case 4 => RestartReason_Enum.detected_powered_off
            case 5 => RestartReason_Enum.hardware_watchdog
            case 6 => RestartReason_Enum.software_watchdog
            case 7 => RestartReason_Enum.suspended
            case 8 => RestartReason_Enum.activate_changes
            case x where x <= 63 => RestartReason_Enum.reserved(x)
            case y where y > 63 && y <= 255 => RestartReason_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case RestartReason_Enum.unknown => 0
            case RestartReason_Enum.coldstart => 1
            case RestartReason_Enum.warmstart => 2
            case RestartReason_Enum.detected_power_lost => 3
            case RestartReason_Enum.detected_powered_off => 4
            case RestartReason_Enum.hardware_watchdog => 5
            case RestartReason_Enum.software_watchdog => 6
            case RestartReason_Enum.suspended => 7
            case RestartReason_Enum.activate_changes => 8
            case RestartReason_Enum.reserved(x) => x
            case RestartReason_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case RestartReason_Enum.unknown => "unknown"
            case RestartReason_Enum.coldstart => "coldstart"
            case RestartReason_Enum.warmstart => "warmstart"
            case RestartReason_Enum.detected_power_lost => "detected_power_lost"
            case RestartReason_Enum.detected_powered_off => "detected_powered_off"
            case RestartReason_Enum.hardware_watchdog => "hardware_watchdog"
            case RestartReason_Enum.software_watchdog => "software_watchdog"
            case RestartReason_Enum.suspended => "suspended"
            case RestartReason_Enum.activate_changes => "activate_changes"
            case RestartReason_Enum.reserved(x) => "reserved_${x}"
            case RestartReason_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): RestartReason_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "unknown" => RestartReason_Enum.unknown
            case "coldstart" => RestartReason_Enum.coldstart
            case "warmstart" => RestartReason_Enum.warmstart
            case "detected_power_lost" => RestartReason_Enum.detected_power_lost
            case "detected_powered_off" => RestartReason_Enum.detected_powered_off
            case "hardware_watchdog" => RestartReason_Enum.hardware_watchdog
            case "software_watchdog" => RestartReason_Enum.software_watchdog
            case "suspended" => RestartReason_Enum.suspended
            case "activate_changes" => RestartReason_Enum.activate_changes
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => RestartReason_Enum.reserved(x)
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
                        case Some(x) => RestartReason_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_953
--21.6 Base Types

BACnetRestartReason ::= ENUMERATED {
 unknown (0),
 coldstart (1),
 warmstart (2),
 detected-power-lost (3),
 detected-powered-off (4),
 hardware-watchdog (5),
 software-watchdog (6),
 suspended (7),
 activate-changes (8),
 ...
 }
 -- Enumerated values 0-63 are reserved for definition by ASHRAE. Enumerated values 64-255
 -- may be used by others subject to the procedures and constraints described in Clause 23.
--ISO_16484_5_2022_Page_954
*/
