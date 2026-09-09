public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum CalendarEntry <: IFromUInt8<CalendarEntry> & IToUInt8 & ToString & IFromString<CalendarEntry> {
    | date // date [0] Date,
    | date_range // date-range [1] BACnetDateRange,
    | week_nday // weekNDay [2] BACnetWeekNDay

    public static func fromUInt8(tag: UInt8): CalendarEntry {
        match (tag) {
            case 0 => CalendarEntry.date
            case 1 => CalendarEntry.date_range
            case 2 => CalendarEntry.week_nday
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case CalendarEntry.date => 0
            case CalendarEntry.date_range => 1
            case CalendarEntry.week_nday => 2
        }
    }

    public func toString(): String {
        match (this) {
            case CalendarEntry.date => "date"
            case CalendarEntry.date_range => "date_range"
            case CalendarEntry.week_nday => "week_nday"
        }
    }

    public static func fromString(arg_str: String): CalendarEntry {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "date" => CalendarEntry.date
            case "date_range" => CalendarEntry.date_range
            case "week_nday" => CalendarEntry.week_nday
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_899
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnetCalendarEntry ::= CHOICE {
 date [0] Date,
 date-range [1] BACnetDateRange,
 weekNDay [2] BACnetWeekNDay
 }
*/
