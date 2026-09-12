public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum LifeSafetyMode_Enum <: IFromUInt32<LifeSafetyMode_Enum> & IToUInt32 & ToString & IFromString<LifeSafetyMode_Enum> {
    | off // (0)
    | on // (1)
    | test // (2)
    | manned // (3)
    | unmanned // (4)
    | armed // (5)
    | disarmed // (6)
    | prearmed // (7)
    | slow // (8)
    | fast // (9)
    | disconnected // (10)
    | enabled // (11)
    | disabled // (12)
    | automatic_release_disabled // (13)
    | default // (14)
    | activated_oeo_alarm // (15)
    | activated_oeo_evacuate // (16)
    | activated_oeo_phase1_recall // (17)
    | activated_oeo_unavailable // (18)
    | deactivated // (19)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): LifeSafetyMode_Enum {
        match (arg_tag) {
            case 0 => LifeSafetyMode_Enum.off
            case 1 => LifeSafetyMode_Enum.on
            case 2 => LifeSafetyMode_Enum.test
            case 3 => LifeSafetyMode_Enum.manned
            case 4 => LifeSafetyMode_Enum.unmanned
            case 5 => LifeSafetyMode_Enum.armed
            case 6 => LifeSafetyMode_Enum.disarmed
            case 7 => LifeSafetyMode_Enum.prearmed
            case 8 => LifeSafetyMode_Enum.slow
            case 9 => LifeSafetyMode_Enum.fast
            case 10 => LifeSafetyMode_Enum.disconnected
            case 11 => LifeSafetyMode_Enum.enabled
            case 12 => LifeSafetyMode_Enum.disabled
            case 13 => LifeSafetyMode_Enum.automatic_release_disabled
            case 14 => LifeSafetyMode_Enum.default
            case 15 => LifeSafetyMode_Enum.activated_oeo_alarm
            case 16 => LifeSafetyMode_Enum.activated_oeo_evacuate
            case 17 => LifeSafetyMode_Enum.activated_oeo_phase1_recall
            case 18 => LifeSafetyMode_Enum.activated_oeo_unavailable
            case 19 => LifeSafetyMode_Enum.deactivated
            case x where x <= 255 => LifeSafetyMode_Enum.reserved(x)
            case y where y > 255 && y <= 65535 => LifeSafetyMode_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case LifeSafetyMode_Enum.off => 0
            case LifeSafetyMode_Enum.on => 1
            case LifeSafetyMode_Enum.test => 2
            case LifeSafetyMode_Enum.manned => 3
            case LifeSafetyMode_Enum.unmanned => 4
            case LifeSafetyMode_Enum.armed => 5
            case LifeSafetyMode_Enum.disarmed => 6
            case LifeSafetyMode_Enum.prearmed => 7
            case LifeSafetyMode_Enum.slow => 8
            case LifeSafetyMode_Enum.fast => 9
            case LifeSafetyMode_Enum.disconnected => 10
            case LifeSafetyMode_Enum.enabled => 11
            case LifeSafetyMode_Enum.disabled => 12
            case LifeSafetyMode_Enum.automatic_release_disabled => 13
            case LifeSafetyMode_Enum.default => 14
            case LifeSafetyMode_Enum.activated_oeo_alarm => 15
            case LifeSafetyMode_Enum.activated_oeo_evacuate => 16
            case LifeSafetyMode_Enum.activated_oeo_phase1_recall => 17
            case LifeSafetyMode_Enum.activated_oeo_unavailable => 18
            case LifeSafetyMode_Enum.deactivated => 19
            case LifeSafetyMode_Enum.reserved(x) => x
            case LifeSafetyMode_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case LifeSafetyMode_Enum.off => "off"
            case LifeSafetyMode_Enum.on => "on"
            case LifeSafetyMode_Enum.test => "test"
            case LifeSafetyMode_Enum.manned => "manned"
            case LifeSafetyMode_Enum.unmanned => "unmanned"
            case LifeSafetyMode_Enum.armed => "armed"
            case LifeSafetyMode_Enum.disarmed => "disarmed"
            case LifeSafetyMode_Enum.prearmed => "prearmed"
            case LifeSafetyMode_Enum.slow => "slow"
            case LifeSafetyMode_Enum.fast => "fast"
            case LifeSafetyMode_Enum.disconnected => "disconnected"
            case LifeSafetyMode_Enum.enabled => "enabled"
            case LifeSafetyMode_Enum.disabled => "disabled"
            case LifeSafetyMode_Enum.automatic_release_disabled => "automatic_release_disabled"
            case LifeSafetyMode_Enum.default => "default"
            case LifeSafetyMode_Enum.activated_oeo_alarm => "activated_oeo_alarm"
            case LifeSafetyMode_Enum.activated_oeo_evacuate => "activated_oeo_evacuate"
            case LifeSafetyMode_Enum.activated_oeo_phase1_recall => "activated_oeo_phase1_recall"
            case LifeSafetyMode_Enum.activated_oeo_unavailable => "activated_oeo_unavailable"
            case LifeSafetyMode_Enum.deactivated => "deactivated"
            case LifeSafetyMode_Enum.reserved(x) => "reserved_${x}"
            case LifeSafetyMode_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): LifeSafetyMode_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "off" => LifeSafetyMode_Enum.off
            case "on" => LifeSafetyMode_Enum.on
            case "test" => LifeSafetyMode_Enum.test
            case "manned" => LifeSafetyMode_Enum.manned
            case "unmanned" => LifeSafetyMode_Enum.unmanned
            case "armed" => LifeSafetyMode_Enum.armed
            case "disarmed" => LifeSafetyMode_Enum.disarmed
            case "prearmed" => LifeSafetyMode_Enum.prearmed
            case "slow" => LifeSafetyMode_Enum.slow
            case "fast" => LifeSafetyMode_Enum.fast
            case "disconnected" => LifeSafetyMode_Enum.disconnected
            case "enabled" => LifeSafetyMode_Enum.enabled
            case "disabled" => LifeSafetyMode_Enum.disabled
            case "automatic_release_disabled" => LifeSafetyMode_Enum.automatic_release_disabled
            case "default" => LifeSafetyMode_Enum.default
            case "activated_oeo_alarm" => LifeSafetyMode_Enum.activated_oeo_alarm
            case "activated_oeo_evacuate" => LifeSafetyMode_Enum.activated_oeo_evacuate
            case "activated_oeo_phase1_recall" => LifeSafetyMode_Enum.activated_oeo_phase1_recall
            case "activated_oeo_unavailable" => LifeSafetyMode_Enum.activated_oeo_unavailable
            case "deactivated" => LifeSafetyMode_Enum.deactivated
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => LifeSafetyMode_Enum.reserved(x)
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
                        case Some(x) => LifeSafetyMode_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_919
--21.6 Base Types

BACnetLifeSafetyMode ::= ENUMERATED {
 off (0),
 on (1),
 test (2),
 manned (3),
 unmanned (4),
 armed (5),
 disarmed (6),
 prearmed (7),
 slow (8),
 fast (9),
 disconnected (10),
 enabled (11),
 disabled (12),
 automatic-release-disabled (13),
 default (14),
 activated-oeo-alarm (15),
 activated-oeo-evacuate (16),
 activated-oeo-phase1-recall (17),
 activated-oeo-unavailable (18),
 deactivated (19),
 ...
 }
 -- Enumerated values 0-255 are reserved for definition by ASHRAE. Enumerated values
 -- 256-65535 may be used by others subject to procedures and constraints described in Clause 23.
*/
