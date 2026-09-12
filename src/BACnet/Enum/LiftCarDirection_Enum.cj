public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum LiftCarDirection_Enum <: IFromUInt32<LiftCarDirection_Enum> & IToUInt32 & ToString & IFromString<LiftCarDirection_Enum> {
    | unknown // (0)
    | none // (1)
    | stopped // (2)
    | up // (3)
    | down // (4)
    | up_and_down // (5)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): LiftCarDirection_Enum {
        match (arg_tag) {
            case 0 => LiftCarDirection_Enum.unknown
            case 1 => LiftCarDirection_Enum.none
            case 2 => LiftCarDirection_Enum.stopped
            case 3 => LiftCarDirection_Enum.up
            case 4 => LiftCarDirection_Enum.down
            case 5 => LiftCarDirection_Enum.up_and_down
            case x where x <= 1023 => LiftCarDirection_Enum.reserved(x)
            case y where y > 1023 && y <= 65535 => LiftCarDirection_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case LiftCarDirection_Enum.unknown => 0
            case LiftCarDirection_Enum.none => 1
            case LiftCarDirection_Enum.stopped => 2
            case LiftCarDirection_Enum.up => 3
            case LiftCarDirection_Enum.down => 4
            case LiftCarDirection_Enum.up_and_down => 5
            case LiftCarDirection_Enum.reserved(x) => x
            case LiftCarDirection_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case LiftCarDirection_Enum.unknown => "unknown"
            case LiftCarDirection_Enum.none => "none"
            case LiftCarDirection_Enum.stopped => "stopped"
            case LiftCarDirection_Enum.up => "up"
            case LiftCarDirection_Enum.down => "down"
            case LiftCarDirection_Enum.up_and_down => "up_and_down"
            case LiftCarDirection_Enum.reserved(x) => "reserved_${x}"
            case LiftCarDirection_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): LiftCarDirection_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "unknown" => LiftCarDirection_Enum.unknown
            case "none" => LiftCarDirection_Enum.none
            case "stopped" => LiftCarDirection_Enum.stopped
            case "up" => LiftCarDirection_Enum.up
            case "down" => LiftCarDirection_Enum.down
            case "up_and_down" => LiftCarDirection_Enum.up_and_down
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => LiftCarDirection_Enum.reserved(x)
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
                        case Some(x) => LiftCarDirection_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_920
--21.6 Base Types

BACnetLiftCarDirection ::= ENUMERATED {
 unknown (0),
 none (1),
 stopped (2),
 up (3),
 down (4),
 up-and-down (5),
 ...
 } -- Enumerated values 0-1023 are reserved for definition by ASHRAE. Enumerated values -- 1024-65535 may be used by others subject to the procedures and constraints described -- in Clause 23.
--ISO_16484_5_2022_Page_921
*/
