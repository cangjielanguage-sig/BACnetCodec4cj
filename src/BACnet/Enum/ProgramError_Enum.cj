public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum ProgramError_Enum <: IFromUInt32<ProgramError_Enum> & IToUInt32 & ToString & IFromString<ProgramError_Enum> {
    | normal // (0)
    | load_failed // (1)
    | internal // (2)
    | program // (3)
    | other // (4)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): ProgramError_Enum {
        match (arg_tag) {
            case 0 => ProgramError_Enum.normal
            case 1 => ProgramError_Enum.load_failed
            case 2 => ProgramError_Enum.internal
            case 3 => ProgramError_Enum.program
            case 4 => ProgramError_Enum.other
            case x where x <= 63 => ProgramError_Enum.reserved(x)
            case y where y > 63 && y <= 65535 => ProgramError_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case ProgramError_Enum.normal => 0
            case ProgramError_Enum.load_failed => 1
            case ProgramError_Enum.internal => 2
            case ProgramError_Enum.program => 3
            case ProgramError_Enum.other => 4
            case ProgramError_Enum.reserved(x) => x
            case ProgramError_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case ProgramError_Enum.normal => "normal"
            case ProgramError_Enum.load_failed => "load_failed"
            case ProgramError_Enum.internal => "internal"
            case ProgramError_Enum.program => "program"
            case ProgramError_Enum.other => "other"
            case ProgramError_Enum.reserved(x) => "reserved_${x}"
            case ProgramError_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): ProgramError_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "normal" => ProgramError_Enum.normal
            case "load_failed" => ProgramError_Enum.load_failed
            case "internal" => ProgramError_Enum.internal
            case "program" => ProgramError_Enum.program
            case "other" => ProgramError_Enum.other
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => ProgramError_Enum.reserved(x)
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
                        case Some(x) => ProgramError_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_933
--21.6 Base Types

BACnetProgramError ::= ENUMERATED {
 normal (0),
 load-failed (1),
 internal (2),
 program (3),
 other (4),
 ...
 }
 -- Enumerated values 0-63 are reserved for definition by ASHRAE. Enumerated values
 -- 64-65535 may be used by others subject to the procedures and constraints described
 -- in Clause 23.
--ISO_16484_5_2022_Page_934
*/
