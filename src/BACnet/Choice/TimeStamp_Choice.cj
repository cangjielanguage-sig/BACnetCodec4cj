public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum TimeStamp_Choice <: IFromUInt8<TimeStamp_Choice> & IToUInt8 & ToString & IFromString<TimeStamp_Choice> {
    | time // time [0]  Time, -- this form was deprecated in version 1 revision 21
    | sequence_number // sequence-number [1] Unsigned (0..65535),
    | datetime // datetime [2] BACnetDateTime
    | remove(UInt8) // 协议中已删除(removed)且无旧版本标记的兼容值

    public static func fromUInt8(tag: UInt8): TimeStamp_Choice {
        match (tag) {
            case 0 => TimeStamp_Choice.time
            case 1 => TimeStamp_Choice.sequence_number
            case 2 => TimeStamp_Choice.datetime
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case TimeStamp_Choice.time => 0
            case TimeStamp_Choice.sequence_number => 1
            case TimeStamp_Choice.datetime => 2
            case TimeStamp_Choice.remove(x) => x
        }
    }

    public func toString(): String {
        match (this) {
            case TimeStamp_Choice.time => "time"
            case TimeStamp_Choice.sequence_number => "sequence_number"
            case TimeStamp_Choice.datetime => "datetime"
            case TimeStamp_Choice.remove(x) => "remove_${x}"
        }
    }

    public static func fromString(arg_str: String): TimeStamp_Choice {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "time" => TimeStamp_Choice.time
            case "sequence_number" => TimeStamp_Choice.sequence_number
            case "datetime" => TimeStamp_Choice.datetime
            case _r where _r.startsWith("remove_") =>
                let _numStr = _r.removePrefix("remove_")
                try {
                    let _num_Option = UInt8.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => TimeStamp_Choice.remove(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_957
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnetTimeStamp ::= CHOICE {
 time [0]  Time, -- this form was deprecated in version 1 revision 21
 sequence-number [1] Unsigned (0..65535),
 datetime [2] BACnetDateTime
 }
*/
