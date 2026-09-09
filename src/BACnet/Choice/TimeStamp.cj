public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum TimeStamp <: IFromUInt8<TimeStamp> & IToUInt8 & ToString & IFromString<TimeStamp> {
    | time // time [0]  Time, -- this form was deprecated in version 1 revision 21
    | sequence_number // sequence-number [1] Unsigned (0..65535),
    | datetime // datetime [2] BACnetDateTime
    | remove(UInt8) // 协议中已删除(removed)且无旧版本标记的兼容值

    public static func fromUInt8(tag: UInt8): TimeStamp {
        match (tag) {
            case 0 => TimeStamp.time
            case 1 => TimeStamp.sequence_number
            case 2 => TimeStamp.datetime
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case TimeStamp.time => 0
            case TimeStamp.sequence_number => 1
            case TimeStamp.datetime => 2
            case TimeStamp.remove(x) => x
        }
    }

    public func toString(): String {
        match (this) {
            case TimeStamp.time => "time"
            case TimeStamp.sequence_number => "sequence_number"
            case TimeStamp.datetime => "datetime"
            case TimeStamp.remove(x) => "remove_${x}"
        }
    }

    public static func fromString(arg_str: String): TimeStamp {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "time" => TimeStamp.time
            case "sequence_number" => TimeStamp.sequence_number
            case "datetime" => TimeStamp.datetime
            case _r where _r.startsWith("remove_") =>
                let _numStr = _r.removePrefix("remove_")
                try {
                    let _num_Option = UInt8.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => TimeStamp.remove(x)
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
