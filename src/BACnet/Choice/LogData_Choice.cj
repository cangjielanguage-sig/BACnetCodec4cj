public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum LogData_Choice <: IFromUInt8<LogData_Choice> & IToUInt8 & ToString & IFromString<LogData_Choice> {
    | log_status // log-status [0] BACnetLogStatus,
    | log_data // log-data [1] SEQUENCE OF CHOICE {
    | time_change // time-change [2] REAL

    public static func fromUInt8(tag: UInt8): LogData_Choice {
        match (tag) {
            case 0 => LogData_Choice.log_status
            case 1 => LogData_Choice.log_data
            case 2 => LogData_Choice.time_change
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case LogData_Choice.log_status => 0
            case LogData_Choice.log_data => 1
            case LogData_Choice.time_change => 2
        }
    }

    public func toString(): String {
        match (this) {
            case LogData_Choice.log_status => "log_status"
            case LogData_Choice.log_data => "log_data"
            case LogData_Choice.time_change => "time_change"
        }
    }

    public static func fromString(arg_str: String): LogData_Choice {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "log_status" => LogData_Choice.log_status
            case "log_data" => LogData_Choice.log_data
            case "time_change" => LogData_Choice.time_change
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_923
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnetLogData ::=  CHOICE {
 log-status [0] BACnetLogStatus,
 log-data [1] SEQUENCE OF CHOICE {
   boolean-value  [0] BOOLEAN,
   real-value  [1] REAL,
   enumerated-value  [2] ENUMERATED, -- Optionally limited to 32 bits
   unsigned-value  [3] Unsigned,  -- Optionally limited to 32 bits
   integer-value  [4] INTEGER,   -- Optionally limited to 32 bits
   bitstring-value  [5] BIT STRING,  -- Optionally limited to 32 bits
   null-value  [6] NULL,
   failure   [7] Error,
   any-value  [8] ABSTRACT-SYNTAX.&Type  -- Optional
   },
 time-change [2] REAL
 }
*/
