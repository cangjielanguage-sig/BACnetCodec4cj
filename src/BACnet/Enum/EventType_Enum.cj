public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum EventType_Enum <: IFromUInt32<EventType_Enum> & IToUInt32 & ToString & IFromString<EventType_Enum> {
    | change_of_bitstring // (0)
    | change_of_state // (1)
    | change_of_value // (2)
    | command_failure // (3)
    | floating_limit // (4)
    | out_of_range // (5)
    | change_of_life_safety // (8)
    | extended // (9)
    | buffer_ready // (10)
    | unsigned_range // (11)
    | access_event // (13)
    | double_out_of_range // (14)
    | signed_out_of_range // (15)
    | unsigned_out_of_range // (16)
    | change_of_characterstring // (17)
    | change_of_status_flags // (18)
    | change_of_reliability // (19)
    | none // (20)
    | change_of_discrete_value // (21)
    | change_of_timer // (22)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): EventType_Enum {
        match (arg_tag) {
            case 0 => EventType_Enum.change_of_bitstring
            case 1 => EventType_Enum.change_of_state
            case 2 => EventType_Enum.change_of_value
            case 3 => EventType_Enum.command_failure
            case 4 => EventType_Enum.floating_limit
            case 5 => EventType_Enum.out_of_range
            case 8 => EventType_Enum.change_of_life_safety
            case 9 => EventType_Enum.extended
            case 10 => EventType_Enum.buffer_ready
            case 11 => EventType_Enum.unsigned_range
            case 13 => EventType_Enum.access_event
            case 14 => EventType_Enum.double_out_of_range
            case 15 => EventType_Enum.signed_out_of_range
            case 16 => EventType_Enum.unsigned_out_of_range
            case 17 => EventType_Enum.change_of_characterstring
            case 18 => EventType_Enum.change_of_status_flags
            case 19 => EventType_Enum.change_of_reliability
            case 20 => EventType_Enum.none
            case 21 => EventType_Enum.change_of_discrete_value
            case 22 => EventType_Enum.change_of_timer
            case x where x <= 63 => EventType_Enum.reserved(x)
            case y where y > 63 && y <= 65535 => EventType_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case EventType_Enum.change_of_bitstring => 0
            case EventType_Enum.change_of_state => 1
            case EventType_Enum.change_of_value => 2
            case EventType_Enum.command_failure => 3
            case EventType_Enum.floating_limit => 4
            case EventType_Enum.out_of_range => 5
            case EventType_Enum.change_of_life_safety => 8
            case EventType_Enum.extended => 9
            case EventType_Enum.buffer_ready => 10
            case EventType_Enum.unsigned_range => 11
            case EventType_Enum.access_event => 13
            case EventType_Enum.double_out_of_range => 14
            case EventType_Enum.signed_out_of_range => 15
            case EventType_Enum.unsigned_out_of_range => 16
            case EventType_Enum.change_of_characterstring => 17
            case EventType_Enum.change_of_status_flags => 18
            case EventType_Enum.change_of_reliability => 19
            case EventType_Enum.none => 20
            case EventType_Enum.change_of_discrete_value => 21
            case EventType_Enum.change_of_timer => 22
            case EventType_Enum.reserved(x) => x
            case EventType_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case EventType_Enum.change_of_bitstring => "change_of_bitstring"
            case EventType_Enum.change_of_state => "change_of_state"
            case EventType_Enum.change_of_value => "change_of_value"
            case EventType_Enum.command_failure => "command_failure"
            case EventType_Enum.floating_limit => "floating_limit"
            case EventType_Enum.out_of_range => "out_of_range"
            case EventType_Enum.change_of_life_safety => "change_of_life_safety"
            case EventType_Enum.extended => "extended"
            case EventType_Enum.buffer_ready => "buffer_ready"
            case EventType_Enum.unsigned_range => "unsigned_range"
            case EventType_Enum.access_event => "access_event"
            case EventType_Enum.double_out_of_range => "double_out_of_range"
            case EventType_Enum.signed_out_of_range => "signed_out_of_range"
            case EventType_Enum.unsigned_out_of_range => "unsigned_out_of_range"
            case EventType_Enum.change_of_characterstring => "change_of_characterstring"
            case EventType_Enum.change_of_status_flags => "change_of_status_flags"
            case EventType_Enum.change_of_reliability => "change_of_reliability"
            case EventType_Enum.none => "none"
            case EventType_Enum.change_of_discrete_value => "change_of_discrete_value"
            case EventType_Enum.change_of_timer => "change_of_timer"
            case EventType_Enum.reserved(x) => "reserved_${x}"
            case EventType_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): EventType_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "change_of_bitstring" => EventType_Enum.change_of_bitstring
            case "change_of_state" => EventType_Enum.change_of_state
            case "change_of_value" => EventType_Enum.change_of_value
            case "command_failure" => EventType_Enum.command_failure
            case "floating_limit" => EventType_Enum.floating_limit
            case "out_of_range" => EventType_Enum.out_of_range
            case "change_of_life_safety" => EventType_Enum.change_of_life_safety
            case "extended" => EventType_Enum.extended
            case "buffer_ready" => EventType_Enum.buffer_ready
            case "unsigned_range" => EventType_Enum.unsigned_range
            case "access_event" => EventType_Enum.access_event
            case "double_out_of_range" => EventType_Enum.double_out_of_range
            case "signed_out_of_range" => EventType_Enum.signed_out_of_range
            case "unsigned_out_of_range" => EventType_Enum.unsigned_out_of_range
            case "change_of_characterstring" => EventType_Enum.change_of_characterstring
            case "change_of_status_flags" => EventType_Enum.change_of_status_flags
            case "change_of_reliability" => EventType_Enum.change_of_reliability
            case "none" => EventType_Enum.none
            case "change_of_discrete_value" => EventType_Enum.change_of_discrete_value
            case "change_of_timer" => EventType_Enum.change_of_timer
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => EventType_Enum.reserved(x)
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
                        case Some(x) => EventType_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_916
--21.6 Base Types

BACnetEventType ::= ENUMERATED {
 change-of-bitstring (0),
 change-of-state (1),
 change-of-value (2),
 command-failure (3),
 floating-limit (4),
 out-of-range (5),
 -- complex-event-type (6),  see comment below
 -- context tag 7 is deprecated
 change-of-life-safety (8),
 extended (9),
 buffer-ready (10),
 unsigned-range (11),
 -- enumeration value 12 is reserved for future addenda
 access-event (13),
 double-out-of-range (14),
 signed-out-of-range (15),
 unsigned-out-of-range (16),
 change-of-characterstring  (17),
 change-of-status-flags (18),
 change-of-reliability (19),
 none (20),
 change-of-discrete-value (21),
 change-of-timer (22),
 ...
 }
 -- Enumerated values 0-63 are reserved for definition by ASHRAE. Enumerated values
 -- 64-65535 may be used by others subject to the procedures and constraints described
 -- in Clause 23. It is expected that these enumerated values will correspond to the use of the
 -- complex-event-type CHOICE [6] of the BACnetNotificationParameters production.
--ISO_16484_5_2022_Page_917
*/
