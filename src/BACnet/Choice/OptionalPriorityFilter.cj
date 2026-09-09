public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum OptionalPriorityFilter <: IFromUInt8<OptionalPriorityFilter> & IToUInt8 & ToString & IFromString<OptionalPriorityFilter> {
    | default // default NULL,
    | filter // filter BACnetPriorityFilter

    public static func fromUInt8(tag: UInt8): OptionalPriorityFilter {
        match (tag) {
            case 0 => OptionalPriorityFilter.default
            case 8 => OptionalPriorityFilter.filter
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case OptionalPriorityFilter.default => 0
            case OptionalPriorityFilter.filter => 8
        }
    }

    public func toString(): String {
        match (this) {
            case OptionalPriorityFilter.default => "default"
            case OptionalPriorityFilter.filter => "filter"
        }
    }

    public static func fromString(arg_str: String): OptionalPriorityFilter {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "default" => OptionalPriorityFilter.default
            case "filter" => OptionalPriorityFilter.filter
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
