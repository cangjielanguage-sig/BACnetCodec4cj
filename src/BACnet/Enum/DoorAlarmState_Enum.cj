public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum DoorAlarmState_Enum <: IFromUInt32<DoorAlarmState_Enum> & IToUInt32 & ToString & IFromString<DoorAlarmState_Enum> {
    | normal // (0)
    | alarm // (1)
    | door_open_too_long // (2)
    | forced_open // (3)
    | tamper // (4)
    | door_fault // (5)
    | lock_down // (6)
    | free_access // (7)
    | egress_open // (8)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): DoorAlarmState_Enum {
        match (arg_tag) {
            case 0 => DoorAlarmState_Enum.normal
            case 1 => DoorAlarmState_Enum.alarm
            case 2 => DoorAlarmState_Enum.door_open_too_long
            case 3 => DoorAlarmState_Enum.forced_open
            case 4 => DoorAlarmState_Enum.tamper
            case 5 => DoorAlarmState_Enum.door_fault
            case 6 => DoorAlarmState_Enum.lock_down
            case 7 => DoorAlarmState_Enum.free_access
            case 8 => DoorAlarmState_Enum.egress_open
            case x where x <= 255 => DoorAlarmState_Enum.reserved(x)
            case y where y > 255 && y <= 65535 => DoorAlarmState_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case DoorAlarmState_Enum.normal => 0
            case DoorAlarmState_Enum.alarm => 1
            case DoorAlarmState_Enum.door_open_too_long => 2
            case DoorAlarmState_Enum.forced_open => 3
            case DoorAlarmState_Enum.tamper => 4
            case DoorAlarmState_Enum.door_fault => 5
            case DoorAlarmState_Enum.lock_down => 6
            case DoorAlarmState_Enum.free_access => 7
            case DoorAlarmState_Enum.egress_open => 8
            case DoorAlarmState_Enum.reserved(x) => x
            case DoorAlarmState_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case DoorAlarmState_Enum.normal => "normal"
            case DoorAlarmState_Enum.alarm => "alarm"
            case DoorAlarmState_Enum.door_open_too_long => "door_open_too_long"
            case DoorAlarmState_Enum.forced_open => "forced_open"
            case DoorAlarmState_Enum.tamper => "tamper"
            case DoorAlarmState_Enum.door_fault => "door_fault"
            case DoorAlarmState_Enum.lock_down => "lock_down"
            case DoorAlarmState_Enum.free_access => "free_access"
            case DoorAlarmState_Enum.egress_open => "egress_open"
            case DoorAlarmState_Enum.reserved(x) => "reserved_${x}"
            case DoorAlarmState_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): DoorAlarmState_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "normal" => DoorAlarmState_Enum.normal
            case "alarm" => DoorAlarmState_Enum.alarm
            case "door_open_too_long" => DoorAlarmState_Enum.door_open_too_long
            case "forced_open" => DoorAlarmState_Enum.forced_open
            case "tamper" => DoorAlarmState_Enum.tamper
            case "door_fault" => DoorAlarmState_Enum.door_fault
            case "lock_down" => DoorAlarmState_Enum.lock_down
            case "free_access" => DoorAlarmState_Enum.free_access
            case "egress_open" => DoorAlarmState_Enum.egress_open
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => DoorAlarmState_Enum.reserved(x)
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
                        case Some(x) => DoorAlarmState_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_902
--21.6 Base Types

BACnetDoorAlarmState ::= ENUMERATED {
 normal (0),
 alarm (1),
 door-open-too-long (2),
 forced-open (3),
 tamper (4),
 door-fault (5),
 lock-down (6),
 free-access (7),
 egress-open (8),
 ...
 }
 -- Enumerated values 0-255 are reserved for definition by ASHRAE. Enumerated values
 -- 256-65535 may be used by others subject to the procedures and constraints described
 -- in Clause 23.
*/
