public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum ShedLevel_Choice <: IFromUInt8<ShedLevel_Choice> & IToUInt8 & ToString & IFromString<ShedLevel_Choice> {
    | percent // percent [0] Unsigned,
    | level // level [1] Unsigned,
    | amount // amount [2] REAL

    public static func fromUInt8(tag: UInt8): ShedLevel_Choice {
        match (tag) {
            case 0 => ShedLevel_Choice.percent
            case 1 => ShedLevel_Choice.level
            case 2 => ShedLevel_Choice.amount
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case ShedLevel_Choice.percent => 0
            case ShedLevel_Choice.level => 1
            case ShedLevel_Choice.amount => 2
        }
    }

    public func toString(): String {
        match (this) {
            case ShedLevel_Choice.percent => "percent"
            case ShedLevel_Choice.level => "level"
            case ShedLevel_Choice.amount => "amount"
        }
    }

    public static func fromString(arg_str: String): ShedLevel_Choice {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "percent" => ShedLevel_Choice.percent
            case "level" => ShedLevel_Choice.level
            case "amount" => ShedLevel_Choice.amount
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_956
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnetShedLevel ::= CHOICE {
 percent [0] Unsigned,
 level [1] Unsigned,
 amount [2] REAL
 }
*/
