public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum EventParameter_Choice <: IFromUInt8<EventParameter_Choice> & IToUInt8 & ToString & IFromString<EventParameter_Choice> {
    | change_of_bitstring // change-of-bitstring [0] SEQUENCE {
    | change_of_state // change-of-state  [1] SEQUENCE {
    | change_of_value // change-of-value  [2] SEQUENCE {
    | command_failure // command-failure  [3] SEQUENCE {
    | floating_limit // floating-limit  [4] SEQUENCE {
    | out_of_range // out-of-range  [5] SEQUENCE {
    | change_of_life_safety // change-of-life-safety [8] SEQUENCE {
    | extended // extended  [9] SEQUENCE {
    | buffer_ready // buffer-ready  [10] SEQUENCE {
    | unsigned_range // unsigned-range  [11] SEQUENCE {
    | access_event // access-event  [13] SEQUENCE {
    | double_out_of_range // double-out-of-range [14] SEQUENCE {
    | signed_out_of_range // signed-out-of-range [15] SEQUENCE {
    | unsigned_out_of_range // unsigned-out-of-range [16] SEQUENCE {
    | change_of_characterstring // change-of-characterstring [17] SEQUENCE {
    | change_of_status_flags // change-of-status-flags [18] SEQUENCE {
    | none // None  [20] NULL,
    | change_of_discrete_value // change-of-discrete-value [21] SEQUENCE {
    | change_of_timer // change-of-timer  [22] SEQUENCE {
    | reserved(UInt8) // 协议中保留(reserved)但未定义的兼容值
    | remove(UInt8) // 协议中已删除(removed)且无旧版本标记的兼容值

    public static func fromUInt8(tag: UInt8): EventParameter_Choice {
        match (tag) {
            case 0 => EventParameter_Choice.change_of_bitstring
            case 1 => EventParameter_Choice.change_of_state
            case 2 => EventParameter_Choice.change_of_value
            case 3 => EventParameter_Choice.command_failure
            case 4 => EventParameter_Choice.floating_limit
            case 5 => EventParameter_Choice.out_of_range
            case 8 => EventParameter_Choice.change_of_life_safety
            case 9 => EventParameter_Choice.extended
            case 10 => EventParameter_Choice.buffer_ready
            case 11 => EventParameter_Choice.unsigned_range
            case 13 => EventParameter_Choice.access_event
            case 14 => EventParameter_Choice.double_out_of_range
            case 15 => EventParameter_Choice.signed_out_of_range
            case 16 => EventParameter_Choice.unsigned_out_of_range
            case 17 => EventParameter_Choice.change_of_characterstring
            case 18 => EventParameter_Choice.change_of_status_flags
            case 20 => EventParameter_Choice.none
            case 21 => EventParameter_Choice.change_of_discrete_value
            case 22 => EventParameter_Choice.change_of_timer
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case EventParameter_Choice.change_of_bitstring => 0
            case EventParameter_Choice.change_of_state => 1
            case EventParameter_Choice.change_of_value => 2
            case EventParameter_Choice.command_failure => 3
            case EventParameter_Choice.floating_limit => 4
            case EventParameter_Choice.out_of_range => 5
            case EventParameter_Choice.change_of_life_safety => 8
            case EventParameter_Choice.extended => 9
            case EventParameter_Choice.buffer_ready => 10
            case EventParameter_Choice.unsigned_range => 11
            case EventParameter_Choice.access_event => 13
            case EventParameter_Choice.double_out_of_range => 14
            case EventParameter_Choice.signed_out_of_range => 15
            case EventParameter_Choice.unsigned_out_of_range => 16
            case EventParameter_Choice.change_of_characterstring => 17
            case EventParameter_Choice.change_of_status_flags => 18
            case EventParameter_Choice.none => 20
            case EventParameter_Choice.change_of_discrete_value => 21
            case EventParameter_Choice.change_of_timer => 22
            case EventParameter_Choice.reserved(x) => x
            case EventParameter_Choice.remove(x) => x
        }
    }

    public func toString(): String {
        match (this) {
            case EventParameter_Choice.change_of_bitstring => "change_of_bitstring"
            case EventParameter_Choice.change_of_state => "change_of_state"
            case EventParameter_Choice.change_of_value => "change_of_value"
            case EventParameter_Choice.command_failure => "command_failure"
            case EventParameter_Choice.floating_limit => "floating_limit"
            case EventParameter_Choice.out_of_range => "out_of_range"
            case EventParameter_Choice.change_of_life_safety => "change_of_life_safety"
            case EventParameter_Choice.extended => "extended"
            case EventParameter_Choice.buffer_ready => "buffer_ready"
            case EventParameter_Choice.unsigned_range => "unsigned_range"
            case EventParameter_Choice.access_event => "access_event"
            case EventParameter_Choice.double_out_of_range => "double_out_of_range"
            case EventParameter_Choice.signed_out_of_range => "signed_out_of_range"
            case EventParameter_Choice.unsigned_out_of_range => "unsigned_out_of_range"
            case EventParameter_Choice.change_of_characterstring => "change_of_characterstring"
            case EventParameter_Choice.change_of_status_flags => "change_of_status_flags"
            case EventParameter_Choice.none => "none"
            case EventParameter_Choice.change_of_discrete_value => "change_of_discrete_value"
            case EventParameter_Choice.change_of_timer => "change_of_timer"
            case EventParameter_Choice.reserved(x) => "reserved_${x}"
            case EventParameter_Choice.remove(x) => "remove_${x}"
        }
    }

    public static func fromString(arg_str: String): EventParameter_Choice {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "change_of_bitstring" => EventParameter_Choice.change_of_bitstring
            case "change_of_state" => EventParameter_Choice.change_of_state
            case "change_of_value" => EventParameter_Choice.change_of_value
            case "command_failure" => EventParameter_Choice.command_failure
            case "floating_limit" => EventParameter_Choice.floating_limit
            case "out_of_range" => EventParameter_Choice.out_of_range
            case "change_of_life_safety" => EventParameter_Choice.change_of_life_safety
            case "extended" => EventParameter_Choice.extended
            case "buffer_ready" => EventParameter_Choice.buffer_ready
            case "unsigned_range" => EventParameter_Choice.unsigned_range
            case "access_event" => EventParameter_Choice.access_event
            case "double_out_of_range" => EventParameter_Choice.double_out_of_range
            case "signed_out_of_range" => EventParameter_Choice.signed_out_of_range
            case "unsigned_out_of_range" => EventParameter_Choice.unsigned_out_of_range
            case "change_of_characterstring" => EventParameter_Choice.change_of_characterstring
            case "change_of_status_flags" => EventParameter_Choice.change_of_status_flags
            case "none" => EventParameter_Choice.none
            case "change_of_discrete_value" => EventParameter_Choice.change_of_discrete_value
            case "change_of_timer" => EventParameter_Choice.change_of_timer
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt8.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => EventParameter_Choice.reserved(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _r where _r.startsWith("remove_") =>
                let _numStr = _r.removePrefix("remove_")
                try {
                    let _num_Option = UInt8.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => EventParameter_Choice.remove(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_914
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnetEventParameter ::= CHOICE {
 -- These choices have a one-to-one correspondence with the Event_Type enumeration with the  exception of the -- complex-event-type, which is used for proprietary event types.

 change-of-bitstring [0] SEQUENCE {
    time-delay  [0] Unsigned,
    bitmask   [1] BIT STRING,
    list-of-bitstring-values [2] SEQUENCE OF BIT STRING
    },
 change-of-state  [1] SEQUENCE {
    time-delay [0] Unsigned,
    list-of-values [1] SEQUENCE OF BACnetPropertyStates
    },
 change-of-value  [2] SEQUENCE {
    time-delay  [0] Unsigned,
    cov-criteria  [1] CHOICE {
     bitmask    [0] BIT STRING,
     referenced-property-increment [1] REAL
     }
    },
 command-failure  [3] SEQUENCE {
    time-delay   [0] Unsigned,
    feedback-property-reference [1] BACnetDeviceObjectPropertyReference
    },
 floating-limit  [4] SEQUENCE {
    time-delay  [0] Unsigned,
    setpoint-reference [1] BACnetDeviceObjectPropertyReference,
    low-diff-limit  [2] REAL,
    high-diff-limit  [3] REAL,
    deadband  [4] REAL
    },
 out-of-range  [5] SEQUENCE {
    time-delay [0] Unsigned,
    low-limit [1] REAL,
    high-limit [2] REAL,
    deadband [3] REAL
    },
 -- context tag 7 is deprecated
 change-of-life-safety [8] SEQUENCE {
    time-delay   [0] Unsigned,
    list-of-life-safety-alarm-values [1] SEQUENCE OF BACnetLifeSafetyState,
    list-of-alarm-values  [2] SEQUENCE OF BACnetLifeSafetyState,
    mode-property-reference  [3] BACnetDeviceObjectPropertyReference
    },
 extended  [9] SEQUENCE {
    vendor-id  [0] Unsigned16,
    extended-event-type [1] Unsigned,
    parameters  [2] SEQUENCE OF CHOICE {
     null   NULL,
     real   REAL,
     unsigned  Unsigned,
     boolean   BOOLEAN,
     integer   INTEGER,
     double   Double,
     octetstring  OCTET STRING,
     characterstring  CharacterString,
     bitstring   BIT STRING,
     enumerated  ENUMERATED,
     date   Date,
     time   Time,
     objectidentifier  BACnetObjectIdentifier,
     reference  [0] BACnetDeviceObjectPropertyReference
     }
    },
 buffer-ready  [10] SEQUENCE {
    notification-threshold  [0] Unsigned,
    previous-notification-count [1] Unsigned32
    },
 unsigned-range  [11] SEQUENCE {
    time-delay [0] Unsigned,
    low-limit [1] Unsigned,
    high-limit [2] Unsigned
    },
 -- context tag 12 is reserved for future addenda
 access-event  [13] SEQUENCE {
    list-of-access-events  [0] SEQUENCE OF BACnetAccessEvent,
    access-event-time-reference [1] BACnetDeviceObjectPropertyReference
    },
 double-out-of-range [14] SEQUENCE {
    time-delay [0] Unsigned,
    low-limit [1] Double,
    high-limit [2] Double,
    deadband [3] Double
    },
 signed-out-of-range [15] SEQUENCE {
    time-delay [0] Unsigned,
    low-limit [1] INTEGER,
    high-limit [2] INTEGER,
    deadband [3] Unsigned
    },
 unsigned-out-of-range [16] SEQUENCE {
    time-delay [0] Unsigned,
    low-limit [1] Unsigned,
    high-limit [2] Unsigned,
    deadband [3] Unsigned
    },
 change-of-characterstring [17] SEQUENCE {
    time-delay  [0] Unsigned,
    list-of-alarm-values [1] SEQUENCE OF CharacterString
    },
 change-of-status-flags [18] SEQUENCE {
    time-delay [0] Unsigned,
    selected-flags [1] BACnetStatusFlags
    },
 -- context tag [19] is not used, see note below
 None  [20] NULL,
 change-of-discrete-value [21] SEQUENCE {
    time-delay [0] Unsigned
    },
 change-of-timer  [22] SEQUENCE {
    time-delay  [0] Unsigned,
    alarm-values  [1] SEQUENCE OF BACnetTimerState,
    update-time-reference [2] BACnetDeviceObjectPropertyReference
    }
 }
*/
