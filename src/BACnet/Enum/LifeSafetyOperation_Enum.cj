public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum LifeSafetyOperation_Enum <: IFromUInt32<LifeSafetyOperation_Enum> & IToUInt32 & ToString & IFromString<LifeSafetyOperation_Enum> {
    | none // (0)
    | silence // (1)
    | silence_audible // (2)
    | silence_visual // (3)
    | reset // (4)
    | reset_alarm // (5)
    | reset_fault // (6)
    | unsilence // (7)
    | unsilence_audible // (8)
    | unsilence_visual // (9)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): LifeSafetyOperation_Enum {
        match (arg_tag) {
            case 0 => LifeSafetyOperation_Enum.none
            case 1 => LifeSafetyOperation_Enum.silence
            case 2 => LifeSafetyOperation_Enum.silence_audible
            case 3 => LifeSafetyOperation_Enum.silence_visual
            case 4 => LifeSafetyOperation_Enum.reset
            case 5 => LifeSafetyOperation_Enum.reset_alarm
            case 6 => LifeSafetyOperation_Enum.reset_fault
            case 7 => LifeSafetyOperation_Enum.unsilence
            case 8 => LifeSafetyOperation_Enum.unsilence_audible
            case 9 => LifeSafetyOperation_Enum.unsilence_visual
            case x where x <= 63 => LifeSafetyOperation_Enum.reserved(x)
            case y where y > 63 && y <= 65535 => LifeSafetyOperation_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case LifeSafetyOperation_Enum.none => 0
            case LifeSafetyOperation_Enum.silence => 1
            case LifeSafetyOperation_Enum.silence_audible => 2
            case LifeSafetyOperation_Enum.silence_visual => 3
            case LifeSafetyOperation_Enum.reset => 4
            case LifeSafetyOperation_Enum.reset_alarm => 5
            case LifeSafetyOperation_Enum.reset_fault => 6
            case LifeSafetyOperation_Enum.unsilence => 7
            case LifeSafetyOperation_Enum.unsilence_audible => 8
            case LifeSafetyOperation_Enum.unsilence_visual => 9
            case LifeSafetyOperation_Enum.reserved(x) => x
            case LifeSafetyOperation_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case LifeSafetyOperation_Enum.none => "none"
            case LifeSafetyOperation_Enum.silence => "silence"
            case LifeSafetyOperation_Enum.silence_audible => "silence_audible"
            case LifeSafetyOperation_Enum.silence_visual => "silence_visual"
            case LifeSafetyOperation_Enum.reset => "reset"
            case LifeSafetyOperation_Enum.reset_alarm => "reset_alarm"
            case LifeSafetyOperation_Enum.reset_fault => "reset_fault"
            case LifeSafetyOperation_Enum.unsilence => "unsilence"
            case LifeSafetyOperation_Enum.unsilence_audible => "unsilence_audible"
            case LifeSafetyOperation_Enum.unsilence_visual => "unsilence_visual"
            case LifeSafetyOperation_Enum.reserved(x) => "reserved_${x}"
            case LifeSafetyOperation_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): LifeSafetyOperation_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "none" => LifeSafetyOperation_Enum.none
            case "silence" => LifeSafetyOperation_Enum.silence
            case "silence_audible" => LifeSafetyOperation_Enum.silence_audible
            case "silence_visual" => LifeSafetyOperation_Enum.silence_visual
            case "reset" => LifeSafetyOperation_Enum.reset
            case "reset_alarm" => LifeSafetyOperation_Enum.reset_alarm
            case "reset_fault" => LifeSafetyOperation_Enum.reset_fault
            case "unsilence" => LifeSafetyOperation_Enum.unsilence
            case "unsilence_audible" => LifeSafetyOperation_Enum.unsilence_audible
            case "unsilence_visual" => LifeSafetyOperation_Enum.unsilence_visual
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => LifeSafetyOperation_Enum.reserved(x)
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
                        case Some(x) => LifeSafetyOperation_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_919
--21.6 Base Types

BACnetLifeSafetyOperation ::= ENUMERATED {
 none (0),
 silence (1),
 silence-audible (2),
 silence-visual (3),
 reset (4),
 reset-alarm (5),
 reset-fault (6),
 unsilence (7),
 unsilence-audible (8),
 unsilence-visual (9),
 ...
 }
 -- Enumerated values 0-63 are reserved for definition by ASHRAE. Enumerated values
 -- 64-65535 may be used by others subject to procedures and constraints described in
 -- Clause 23.
*/
