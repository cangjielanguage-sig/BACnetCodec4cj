public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum LiftGroupMode_Enum <: IFromUInt32<LiftGroupMode_Enum> & IToUInt32 & ToString & IFromString<LiftGroupMode_Enum> {
    | unknown // (0)
    | normal // (1)
    | down_peak // (2)
    | two_way // (3)
    | four_way // (4)
    | emergency_power // (5)
    | up_peak // (6)

    public static func fromUInt32(arg_tag: UInt32): LiftGroupMode_Enum {
        match (arg_tag) {
            case 0 => LiftGroupMode_Enum.unknown
            case 1 => LiftGroupMode_Enum.normal
            case 2 => LiftGroupMode_Enum.down_peak
            case 3 => LiftGroupMode_Enum.two_way
            case 4 => LiftGroupMode_Enum.four_way
            case 5 => LiftGroupMode_Enum.emergency_power
            case 6 => LiftGroupMode_Enum.up_peak
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case LiftGroupMode_Enum.unknown => 0
            case LiftGroupMode_Enum.normal => 1
            case LiftGroupMode_Enum.down_peak => 2
            case LiftGroupMode_Enum.two_way => 3
            case LiftGroupMode_Enum.four_way => 4
            case LiftGroupMode_Enum.emergency_power => 5
            case LiftGroupMode_Enum.up_peak => 6
        }
    }

    public func toString(): String {
        match (this) {
            case LiftGroupMode_Enum.unknown => "unknown"
            case LiftGroupMode_Enum.normal => "normal"
            case LiftGroupMode_Enum.down_peak => "down_peak"
            case LiftGroupMode_Enum.two_way => "two_way"
            case LiftGroupMode_Enum.four_way => "four_way"
            case LiftGroupMode_Enum.emergency_power => "emergency_power"
            case LiftGroupMode_Enum.up_peak => "up_peak"
        }
    }

    public static func fromString(arg_str: String): LiftGroupMode_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "unknown" => LiftGroupMode_Enum.unknown
            case "normal" => LiftGroupMode_Enum.normal
            case "down_peak" => LiftGroupMode_Enum.down_peak
            case "two_way" => LiftGroupMode_Enum.two_way
            case "four_way" => LiftGroupMode_Enum.four_way
            case "emergency_power" => LiftGroupMode_Enum.emergency_power
            case "up_peak" => LiftGroupMode_Enum.up_peak
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_922
--21.6 Base Types

BACnetLiftGroupMode ::= ENUMERATED {
 unknown (0),
 normal (1),
 down-peak (2),
 two-way (3),
 four-way (4),
 emergency-power (5),
 up-peak (6)
 }
*/
