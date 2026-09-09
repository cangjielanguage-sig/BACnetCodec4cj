public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum NotificationParameters <: IFromUInt8<NotificationParameters> & IToUInt8 & ToString & IFromString<NotificationParameters> {
    | change_of_bitstring // change-of-bitstring [0] SEQUENCE {
    | change_of_state // change-of-state  [1] SEQUENCE {
    | change_of_value // change-of-value  [2] SEQUENCE {
    | command_failure // command-failure  [3] SEQUENCE {
    | floating_limit // floating-limit  [4] SEQUENCE {
    | out_of_range // out-of-range  [5] SEQUENCE {
    | complex_event_type // complex-event-type [6] SEQUENCE OF BACnetPropertyValue,
    | change_of_life_safety // change-of-life-safety [8] SEQUENCE {
    | extended // extended  [9] SEQUENCE {
    | buffer_ready // buffer-ready  [10] SEQUENCE {
    | unsigned_range // unsigned-range  [11] SEQUENCE {
    | access_event // access-event  [13] SEQUENCE {
    | double_out_of_range // double-out-of-range   [14] SEQUENCE {
    | signed_out_of_range // signed-out-of-range  [15] SEQUENCE {
    | unsigned_out_of_range // unsigned-out-of-range  [16] SEQUENCE {
    | change_of_characterstring // change-of-characterstring [17] SEQUENCE {
    | change_of_status_flags // change-of-status-flags  [18] SEQUENCE {
    | change_of_reliability // change-of-reliability [19] SEQUENCE {
    | change_of_discrete_value // change-of-discrete-value [21] SEQUENCE {
    | change_of_timer // change-of-timer  [22] SEQUENCE {
    | reserved(UInt8) // 协议中保留(reserved)但未定义的兼容值
    | remove(UInt8) // 协议中已删除(removed)且无旧版本标记的兼容值

    public static func fromUInt8(tag: UInt8): NotificationParameters {
        match (tag) {
            case 0 => NotificationParameters.change_of_bitstring
            case 1 => NotificationParameters.change_of_state
            case 2 => NotificationParameters.change_of_value
            case 3 => NotificationParameters.command_failure
            case 4 => NotificationParameters.floating_limit
            case 5 => NotificationParameters.out_of_range
            case 6 => NotificationParameters.complex_event_type
            case 8 => NotificationParameters.change_of_life_safety
            case 9 => NotificationParameters.extended
            case 10 => NotificationParameters.buffer_ready
            case 11 => NotificationParameters.unsigned_range
            case 13 => NotificationParameters.access_event
            case 14 => NotificationParameters.double_out_of_range
            case 15 => NotificationParameters.signed_out_of_range
            case 16 => NotificationParameters.unsigned_out_of_range
            case 17 => NotificationParameters.change_of_characterstring
            case 18 => NotificationParameters.change_of_status_flags
            case 19 => NotificationParameters.change_of_reliability
            case 21 => NotificationParameters.change_of_discrete_value
            case 22 => NotificationParameters.change_of_timer
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case NotificationParameters.change_of_bitstring => 0
            case NotificationParameters.change_of_state => 1
            case NotificationParameters.change_of_value => 2
            case NotificationParameters.command_failure => 3
            case NotificationParameters.floating_limit => 4
            case NotificationParameters.out_of_range => 5
            case NotificationParameters.complex_event_type => 6
            case NotificationParameters.change_of_life_safety => 8
            case NotificationParameters.extended => 9
            case NotificationParameters.buffer_ready => 10
            case NotificationParameters.unsigned_range => 11
            case NotificationParameters.access_event => 13
            case NotificationParameters.double_out_of_range => 14
            case NotificationParameters.signed_out_of_range => 15
            case NotificationParameters.unsigned_out_of_range => 16
            case NotificationParameters.change_of_characterstring => 17
            case NotificationParameters.change_of_status_flags => 18
            case NotificationParameters.change_of_reliability => 19
            case NotificationParameters.change_of_discrete_value => 21
            case NotificationParameters.change_of_timer => 22
            case NotificationParameters.reserved(x) => x
            case NotificationParameters.remove(x) => x
        }
    }

    public func toString(): String {
        match (this) {
            case NotificationParameters.change_of_bitstring => "change_of_bitstring"
            case NotificationParameters.change_of_state => "change_of_state"
            case NotificationParameters.change_of_value => "change_of_value"
            case NotificationParameters.command_failure => "command_failure"
            case NotificationParameters.floating_limit => "floating_limit"
            case NotificationParameters.out_of_range => "out_of_range"
            case NotificationParameters.complex_event_type => "complex_event_type"
            case NotificationParameters.change_of_life_safety => "change_of_life_safety"
            case NotificationParameters.extended => "extended"
            case NotificationParameters.buffer_ready => "buffer_ready"
            case NotificationParameters.unsigned_range => "unsigned_range"
            case NotificationParameters.access_event => "access_event"
            case NotificationParameters.double_out_of_range => "double_out_of_range"
            case NotificationParameters.signed_out_of_range => "signed_out_of_range"
            case NotificationParameters.unsigned_out_of_range => "unsigned_out_of_range"
            case NotificationParameters.change_of_characterstring => "change_of_characterstring"
            case NotificationParameters.change_of_status_flags => "change_of_status_flags"
            case NotificationParameters.change_of_reliability => "change_of_reliability"
            case NotificationParameters.change_of_discrete_value => "change_of_discrete_value"
            case NotificationParameters.change_of_timer => "change_of_timer"
            case NotificationParameters.reserved(x) => "reserved_${x}"
            case NotificationParameters.remove(x) => "remove_${x}"
        }
    }

    public static func fromString(arg_str: String): NotificationParameters {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "change_of_bitstring" => NotificationParameters.change_of_bitstring
            case "change_of_state" => NotificationParameters.change_of_state
            case "change_of_value" => NotificationParameters.change_of_value
            case "command_failure" => NotificationParameters.command_failure
            case "floating_limit" => NotificationParameters.floating_limit
            case "out_of_range" => NotificationParameters.out_of_range
            case "complex_event_type" => NotificationParameters.complex_event_type
            case "change_of_life_safety" => NotificationParameters.change_of_life_safety
            case "extended" => NotificationParameters.extended
            case "buffer_ready" => NotificationParameters.buffer_ready
            case "unsigned_range" => NotificationParameters.unsigned_range
            case "access_event" => NotificationParameters.access_event
            case "double_out_of_range" => NotificationParameters.double_out_of_range
            case "signed_out_of_range" => NotificationParameters.signed_out_of_range
            case "unsigned_out_of_range" => NotificationParameters.unsigned_out_of_range
            case "change_of_characterstring" => NotificationParameters.change_of_characterstring
            case "change_of_status_flags" => NotificationParameters.change_of_status_flags
            case "change_of_reliability" => NotificationParameters.change_of_reliability
            case "change_of_discrete_value" => NotificationParameters.change_of_discrete_value
            case "change_of_timer" => NotificationParameters.change_of_timer
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt8.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => NotificationParameters.reserved(x)
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
                        case Some(x) => NotificationParameters.remove(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_925
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnetNotificationParameters ::= CHOICE { -- These choices have a one-to-one correspondence with the Event_Type enumeration with the exception of the -- complex-event-type, which is used for proprietary event types.
 change-of-bitstring [0] SEQUENCE {
    referenced-bitstring [0] BIT STRING,
    status-flags  [1] BACnetStatusFlags
    },
 change-of-state  [1] SEQUENCE {
    new-state  [0] BACnetPropertyStates,
    status-flags  [1] BACnetStatusFlags
    },
 change-of-value  [2] SEQUENCE {
    new-value  [0] CHOICE {
        changed-bits [0] BIT STRING,
        changed-value [1] REAL
       },
    status-flags  [1] BACnetStatusFlags
    },
 command-failure  [3] SEQUENCE {
    command-value  [0] ABSTRACT-SYNTAX.&Type,
       -- depends on ref property
    status-flags  [1] BACnetStatusFlags,
    feedback-value  [2] ABSTRACT-SYNTAX.&Type
       -- depends on ref property
    },
 floating-limit  [4] SEQUENCE {
    reference-value  [0] REAL,
    status-flags  [1] BACnetStatusFlags,
    setpoint-value  [2] REAL,
    error-limit  [3] REAL
    },
 out-of-range  [5] SEQUENCE {
    exceeding-value  [0] REAL,
    status-flags  [1] BACnetStatusFlags,
    deadband  [2] REAL,
    exceeded-limit  [3] REAL
    },
 complex-event-type [6] SEQUENCE OF BACnetPropertyValue,
 -- complex tag 7 is deprecated
 change-of-life-safety [8] SEQUENCE {
    new-state  [0] BACnetLifeSafetyState,
    new-mode  [1] BACnetLifeSafetyMode,
    status-flags  [2] BACnetStatusFlags,
    operation-expected [3] BACnetLifeSafetyOperation
    },
 extended  [9] SEQUENCE {
    vendor-id  [0] Unsigned16,
    extended-event-type [1] Unsigned,
    parameters  [2] SEQUENCE OF CHOICE {
      null  NULL,
      real  REAL,
      unsigned Unsigned,
      boolean  BOOLEAN,
      integer  INTEGER,
      double  Double,
      octetstring OCTET STRING,
      characterstring CharacterString,
      bitstring  BIT STRING,
      enumerated ENUMERATED,
      date  Date,
      time  Time,
      objectidentifier BACnetObjectIdentifier,
      property-value [0] BACnetDeviceObjectPropertyValue
      }
    },
 buffer-ready  [10] SEQUENCE {
    buffer-property  [0] BACnetDeviceObjectPropertyReference,
    previous-notification [1] Unsigned32,
    current-notification [2] Unsigned32
    },
 unsigned-range  [11] SEQUENCE {
    exceeding-value  [0] Unsigned,
    status-flags  [1] BACnetStatusFlags,
    exceeded-limit  [2] Unsigned
    },
 -- context tag 12 is reserved for future addenda
 access-event  [13] SEQUENCE {
    access-event  [0] BACnetAccessEvent,
    status-flags  [1] BACnetStatusFlags,
    access-event-tag  [2] Unsigned,
    access-event-time  [3] BACnetTimeStamp,
    access-credential  [4] BACnetDeviceObjectReference,
    authentication-factor [5] BACnetAuthenticationFactor OPTIONAL
    },
 double-out-of-range   [14] SEQUENCE {
    exceeding-value  [0] Double,
    status-flags  [1] BACnetStatusFlags,
    deadband  [2] Double,
    exceeded-limit  [3] Double
    },
 signed-out-of-range  [15] SEQUENCE {
    exceeding-value  [0] INTEGER,
    status-flags  [1] BACnetStatusFlags,
    deadband  [2] Unsigned,
    exceeded-limit  [3] INTEGER
    },
 unsigned-out-of-range  [16] SEQUENCE {
    exceeding-value  [0] Unsigned,
    status-flags  [1] BACnetStatusFlags,
    deadband  [2] Unsigned,
    exceeded-limit  [3] Unsigned
    },
 change-of-characterstring [17] SEQUENCE {
    changed-value  [0] CharacterString,
    status-flags  [1] BACnetStatusFlags,
    alarm-value  [2] CharacterString
    },
 change-of-status-flags  [18] SEQUENCE {
    present-value  [0] ABSTRACT-SYNTAX.&Type OPTIONAL,
       -- depends on referenced property
    referenced-flags  [1] BACnetStatusFlags
    },
 change-of-reliability [19] SEQUENCE {
    reliability  [0] BACnetReliability,
    status-flags  [1] BACnetStatusFlags,
    property-values  [2] SEQUENCE OF BACnetPropertyValue
    },
 -- context tag [20] is not used, see note below
 change-of-discrete-value [21] SEQUENCE {
    new-value   [0] CHOICE {
        boolean  BOOLEAN,
        unsigned Unsigned,
        integer  INTEGER,
        enumerated ENUMERATED,
        characterstring CharacterString,
        octetstring OCTET STRING,
        date  Date,
        time  Time,
        objectidentifier BACnetObjectIdentifier,
        datetime  [0] BACnetDateTime
       },
    status-flags  [1] BACnetStatusFlags
    },
 change-of-timer  [22] SEQUENCE {
    new-state  [0] BACnetTimerState,
    status-flags  [1] BACnetStatusFlags,
    update-time  [2] BACnetDateTime,
    last-state-change  [3] BACnetTimerTransition OPTIONAL,
    initial-timeout  [4] Unsigned OPTIONAL,
    expiration-time  [5] BACnetDateTime OPTIONAL
    }
 }
*/
