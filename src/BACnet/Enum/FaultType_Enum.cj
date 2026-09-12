public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum FaultType_Enum <: IFromUInt32<FaultType_Enum> & IToUInt32 & ToString & IFromString<FaultType_Enum> {
    | none // (0)
    | fault_characterstring // (1)
    | fault_extended // (2)
    | fault_life_safety // (3)
    | fault_state // (4)
    | fault_status_flags // (5)
    | fault_out_of_range // (6)
    | fault_listed // (7)

    public static func fromUInt32(arg_tag: UInt32): FaultType_Enum {
        match (arg_tag) {
            case 0 => FaultType_Enum.none
            case 1 => FaultType_Enum.fault_characterstring
            case 2 => FaultType_Enum.fault_extended
            case 3 => FaultType_Enum.fault_life_safety
            case 4 => FaultType_Enum.fault_state
            case 5 => FaultType_Enum.fault_status_flags
            case 6 => FaultType_Enum.fault_out_of_range
            case 7 => FaultType_Enum.fault_listed
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case FaultType_Enum.none => 0
            case FaultType_Enum.fault_characterstring => 1
            case FaultType_Enum.fault_extended => 2
            case FaultType_Enum.fault_life_safety => 3
            case FaultType_Enum.fault_state => 4
            case FaultType_Enum.fault_status_flags => 5
            case FaultType_Enum.fault_out_of_range => 6
            case FaultType_Enum.fault_listed => 7
        }
    }

    public func toString(): String {
        match (this) {
            case FaultType_Enum.none => "none"
            case FaultType_Enum.fault_characterstring => "fault_characterstring"
            case FaultType_Enum.fault_extended => "fault_extended"
            case FaultType_Enum.fault_life_safety => "fault_life_safety"
            case FaultType_Enum.fault_state => "fault_state"
            case FaultType_Enum.fault_status_flags => "fault_status_flags"
            case FaultType_Enum.fault_out_of_range => "fault_out_of_range"
            case FaultType_Enum.fault_listed => "fault_listed"
        }
    }

    public static func fromString(arg_str: String): FaultType_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "none" => FaultType_Enum.none
            case "fault_characterstring" => FaultType_Enum.fault_characterstring
            case "fault_extended" => FaultType_Enum.fault_extended
            case "fault_life_safety" => FaultType_Enum.fault_life_safety
            case "fault_state" => FaultType_Enum.fault_state
            case "fault_status_flags" => FaultType_Enum.fault_status_flags
            case "fault_out_of_range" => FaultType_Enum.fault_out_of_range
            case "fault_listed" => FaultType_Enum.fault_listed
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_918
--21.6 Base Types

BACnetFaultType ::= ENUMERATED {
 none (0),
 fault-characterstring (1),
 fault-extended (2),
 fault-life-safety (3),
 fault-state (4),
 fault-status-flags (5),
 fault-out-of-range (6),
 fault-listed (7)
 }
*/
