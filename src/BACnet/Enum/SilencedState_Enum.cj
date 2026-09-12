public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum SilencedState_Enum <: IFromUInt32<SilencedState_Enum> & IToUInt32 & ToString & IFromString<SilencedState_Enum> {
    | unsilenced // (0)
    | audible_silenced // (1)
    | visible_silenced // (2)
    | all_silenced // (3)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): SilencedState_Enum {
        match (arg_tag) {
            case 0 => SilencedState_Enum.unsilenced
            case 1 => SilencedState_Enum.audible_silenced
            case 2 => SilencedState_Enum.visible_silenced
            case 3 => SilencedState_Enum.all_silenced
            case x where x <= 63 => SilencedState_Enum.reserved(x)
            case y where y > 63 && y <= 65535 => SilencedState_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case SilencedState_Enum.unsilenced => 0
            case SilencedState_Enum.audible_silenced => 1
            case SilencedState_Enum.visible_silenced => 2
            case SilencedState_Enum.all_silenced => 3
            case SilencedState_Enum.reserved(x) => x
            case SilencedState_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case SilencedState_Enum.unsilenced => "unsilenced"
            case SilencedState_Enum.audible_silenced => "audible_silenced"
            case SilencedState_Enum.visible_silenced => "visible_silenced"
            case SilencedState_Enum.all_silenced => "all_silenced"
            case SilencedState_Enum.reserved(x) => "reserved_${x}"
            case SilencedState_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): SilencedState_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "unsilenced" => SilencedState_Enum.unsilenced
            case "audible_silenced" => SilencedState_Enum.audible_silenced
            case "visible_silenced" => SilencedState_Enum.visible_silenced
            case "all_silenced" => SilencedState_Enum.all_silenced
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => SilencedState_Enum.reserved(x)
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
                        case Some(x) => SilencedState_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_956
--21.6 Base Types

BACnetSilencedState ::= ENUMERATED {
 unsilenced (0),
 audible-silenced (1),
 visible-silenced (2),
 all-silenced (3),
 ...
 }
 -- Enumerated values 0-63 are reserved for definition by ASHRAE. Enumerated values
 -- 64-65535 may be used by others subject to procedures and constraints described in
 -- Clause 23.
*/
