public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum DoorStatus_Enum <: IFromUInt32<DoorStatus_Enum> & IToUInt32 & ToString & IFromString<DoorStatus_Enum> {
    | closed // (0)
    | opened // (1)
    | unknown // (2)
    | door_fault // (3)
    | unused // (4)
    | none // (5)
    | closing // (6)
    | opening // (7)
    | safety_locked // (8)
    | limited_opened // (9)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): DoorStatus_Enum {
        match (arg_tag) {
            case 0 => DoorStatus_Enum.closed
            case 1 => DoorStatus_Enum.opened
            case 2 => DoorStatus_Enum.unknown
            case 3 => DoorStatus_Enum.door_fault
            case 4 => DoorStatus_Enum.unused
            case 5 => DoorStatus_Enum.none
            case 6 => DoorStatus_Enum.closing
            case 7 => DoorStatus_Enum.opening
            case 8 => DoorStatus_Enum.safety_locked
            case 9 => DoorStatus_Enum.limited_opened
            case x where x <= 1023 => DoorStatus_Enum.reserved(x)
            case y where y > 1023 && y <= 65535 => DoorStatus_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case DoorStatus_Enum.closed => 0
            case DoorStatus_Enum.opened => 1
            case DoorStatus_Enum.unknown => 2
            case DoorStatus_Enum.door_fault => 3
            case DoorStatus_Enum.unused => 4
            case DoorStatus_Enum.none => 5
            case DoorStatus_Enum.closing => 6
            case DoorStatus_Enum.opening => 7
            case DoorStatus_Enum.safety_locked => 8
            case DoorStatus_Enum.limited_opened => 9
            case DoorStatus_Enum.reserved(x) => x
            case DoorStatus_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case DoorStatus_Enum.closed => "closed"
            case DoorStatus_Enum.opened => "opened"
            case DoorStatus_Enum.unknown => "unknown"
            case DoorStatus_Enum.door_fault => "door_fault"
            case DoorStatus_Enum.unused => "unused"
            case DoorStatus_Enum.none => "none"
            case DoorStatus_Enum.closing => "closing"
            case DoorStatus_Enum.opening => "opening"
            case DoorStatus_Enum.safety_locked => "safety_locked"
            case DoorStatus_Enum.limited_opened => "limited_opened"
            case DoorStatus_Enum.reserved(x) => "reserved_${x}"
            case DoorStatus_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): DoorStatus_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "closed" => DoorStatus_Enum.closed
            case "opened" => DoorStatus_Enum.opened
            case "unknown" => DoorStatus_Enum.unknown
            case "door_fault" => DoorStatus_Enum.door_fault
            case "unused" => DoorStatus_Enum.unused
            case "none" => DoorStatus_Enum.none
            case "closing" => DoorStatus_Enum.closing
            case "opening" => DoorStatus_Enum.opening
            case "safety_locked" => DoorStatus_Enum.safety_locked
            case "limited_opened" => DoorStatus_Enum.limited_opened
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => DoorStatus_Enum.reserved(x)
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
                        case Some(x) => DoorStatus_Enum.non_standardized(x)
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

BACnetDoorStatus ::= ENUMERATED {
 closed (0),
 opened (1),
 unknown (2),
 door-fault (3),
 unused (4),
 none (5),
 closing (6),
 opening (7),
 safety-locked (8),
 limited-opened (9),
 ...
 } -- Enumerated values 0-1023 are reserved for definition by ASHRAE. Enumerated values -- 1024-65535 may be used by others subject to the procedures and constraints described -- in Clause 23.
*/
