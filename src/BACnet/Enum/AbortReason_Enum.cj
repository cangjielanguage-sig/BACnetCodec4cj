public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum AbortReason_Enum <: IFromUInt32<AbortReason_Enum> & IToUInt32 & ToString & IFromString<AbortReason_Enum> {
    | other // (0)
    | buffer_overflow // (1)
    | invalid_apdu_in_this_state // (2)
    | preempted_by_higher_priority_task // (3)
    | segmentation_not_supported // (4)
    | security_error // (5)
    | insufficient_security // (6)
    | window_size_out_of_range // (7)
    | application_exceeded_reply_time // (8)
    | out_of_resources // (9)
    | tsm_timeout // (10)
    | apdu_too_long // (11)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): AbortReason_Enum {
        match (arg_tag) {
            case 0 => AbortReason_Enum.other
            case 1 => AbortReason_Enum.buffer_overflow
            case 2 => AbortReason_Enum.invalid_apdu_in_this_state
            case 3 => AbortReason_Enum.preempted_by_higher_priority_task
            case 4 => AbortReason_Enum.segmentation_not_supported
            case 5 => AbortReason_Enum.security_error
            case 6 => AbortReason_Enum.insufficient_security
            case 7 => AbortReason_Enum.window_size_out_of_range
            case 8 => AbortReason_Enum.application_exceeded_reply_time
            case 9 => AbortReason_Enum.out_of_resources
            case 10 => AbortReason_Enum.tsm_timeout
            case 11 => AbortReason_Enum.apdu_too_long
            case x where x <= 63 => AbortReason_Enum.reserved(x)
            case y where y > 63 && y <= 255 => AbortReason_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case AbortReason_Enum.other => 0
            case AbortReason_Enum.buffer_overflow => 1
            case AbortReason_Enum.invalid_apdu_in_this_state => 2
            case AbortReason_Enum.preempted_by_higher_priority_task => 3
            case AbortReason_Enum.segmentation_not_supported => 4
            case AbortReason_Enum.security_error => 5
            case AbortReason_Enum.insufficient_security => 6
            case AbortReason_Enum.window_size_out_of_range => 7
            case AbortReason_Enum.application_exceeded_reply_time => 8
            case AbortReason_Enum.out_of_resources => 9
            case AbortReason_Enum.tsm_timeout => 10
            case AbortReason_Enum.apdu_too_long => 11
            case AbortReason_Enum.reserved(x) => x
            case AbortReason_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case AbortReason_Enum.other => "other"
            case AbortReason_Enum.buffer_overflow => "buffer_overflow"
            case AbortReason_Enum.invalid_apdu_in_this_state => "invalid_apdu_in_this_state"
            case AbortReason_Enum.preempted_by_higher_priority_task => "preempted_by_higher_priority_task"
            case AbortReason_Enum.segmentation_not_supported => "segmentation_not_supported"
            case AbortReason_Enum.security_error => "security_error"
            case AbortReason_Enum.insufficient_security => "insufficient_security"
            case AbortReason_Enum.window_size_out_of_range => "window_size_out_of_range"
            case AbortReason_Enum.application_exceeded_reply_time => "application_exceeded_reply_time"
            case AbortReason_Enum.out_of_resources => "out_of_resources"
            case AbortReason_Enum.tsm_timeout => "tsm_timeout"
            case AbortReason_Enum.apdu_too_long => "apdu_too_long"
            case AbortReason_Enum.reserved(x) => "reserved_${x}"
            case AbortReason_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): AbortReason_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "other" => AbortReason_Enum.other
            case "buffer_overflow" => AbortReason_Enum.buffer_overflow
            case "invalid_apdu_in_this_state" => AbortReason_Enum.invalid_apdu_in_this_state
            case "preempted_by_higher_priority_task" => AbortReason_Enum.preempted_by_higher_priority_task
            case "segmentation_not_supported" => AbortReason_Enum.segmentation_not_supported
            case "security_error" => AbortReason_Enum.security_error
            case "insufficient_security" => AbortReason_Enum.insufficient_security
            case "window_size_out_of_range" => AbortReason_Enum.window_size_out_of_range
            case "application_exceeded_reply_time" => AbortReason_Enum.application_exceeded_reply_time
            case "out_of_resources" => AbortReason_Enum.out_of_resources
            case "tsm_timeout" => AbortReason_Enum.tsm_timeout
            case "apdu_too_long" => AbortReason_Enum.apdu_too_long
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => AbortReason_Enum.reserved(x)
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
                        case Some(x) => AbortReason_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_881
--21.4 Error Productions

BACnetAbortReason ::= ENUMERATED {
 other (0),
 buffer-overflow (1),
 invalid-apdu-in-this-state (2),
 preempted-by-higher-priority-task (3),
 segmentation-not-supported (4),
 security-error (5),
 insufficient-security (6),
 window-size-out-of-range (7),
 application-exceeded-reply-time (8),
 out-of-resources (9),
 tsm-timeout (10),
 apdu-too-long (11),
 …
 }
 -- Enumerated values 0-63 are reserved for definition by ASHRAE. Enumerated values 64-255
 -- may be used by others subject to the procedures and constraints described in Clause 23.
*/
