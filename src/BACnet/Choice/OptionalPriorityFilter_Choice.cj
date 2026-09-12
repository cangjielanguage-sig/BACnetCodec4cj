public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum OptionalPriorityFilter_Choice <: IFromUInt8<OptionalPriorityFilter_Choice> & IToUInt8 & ToString & IFromString<OptionalPriorityFilter_Choice> {
    | default // default NULL,
    | filter // filter BACnetPriorityFilter

    public static func fromUInt8(tag: UInt8): OptionalPriorityFilter_Choice {
        match (tag) {
            case 0 => OptionalPriorityFilter_Choice.default
            case 8 => OptionalPriorityFilter_Choice.filter
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case OptionalPriorityFilter_Choice.default => 0
            case OptionalPriorityFilter_Choice.filter => 8
        }
    }

    public func toString(): String {
        match (this) {
            case OptionalPriorityFilter_Choice.default => "default"
            case OptionalPriorityFilter_Choice.filter => "filter"
        }
    }

    public static func fromString(arg_str: String): OptionalPriorityFilter_Choice {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "default" => OptionalPriorityFilter_Choice.default
            case "filter" => OptionalPriorityFilter_Choice.filter
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_932
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnetOptionalPriorityFilter ::= CHOICE {
 default NULL,
 filter BACnetPriorityFilter
 }
*/
