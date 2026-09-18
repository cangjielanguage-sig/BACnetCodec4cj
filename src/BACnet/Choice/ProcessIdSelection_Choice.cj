public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum ProcessIdSelection_Choice <: IFromUInt8<ProcessIdSelection_Choice> & IToUInt8 & ToString & IFromString<ProcessIdSelection_Choice> {
    | null_value // null-value NULL
    | process_identifier // process-identifier Unsigned32,

    public static func fromUInt8(tag: UInt8): ProcessIdSelection_Choice {
        match (tag) {
            case 0 => ProcessIdSelection_Choice.null_value
            case 2 => ProcessIdSelection_Choice.process_identifier
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case ProcessIdSelection_Choice.null_value => 0
            case ProcessIdSelection_Choice.process_identifier => 2
        }
    }

    public func toString(): String {
        match (this) {
            case ProcessIdSelection_Choice.null_value => "null_value"
            case ProcessIdSelection_Choice.process_identifier => "process_identifier"
        }
    }

    public static func fromString(arg_str: String): ProcessIdSelection_Choice {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "null_value" => ProcessIdSelection_Choice.null_value
            case "process_identifier" => ProcessIdSelection_Choice.process_identifier
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_933
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnetProcessIdSelection ::= CHOICE {
 process-identifier Unsigned32,
 null-value NULL
 }
*/
