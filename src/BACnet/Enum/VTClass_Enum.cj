public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum VTClass_Enum <: IFromUInt32<VTClass_Enum> & IToUInt32 & ToString & IFromString<VTClass_Enum> {
    | default_terminal // (0)
    | ansi_x3_64 // (1)
    | dec_vt52 // (2)
    | dec_vt100 // (3)
    | dec_vt220 // (4)
    | hp_700_94 // (5)
    | ibm_3130 // (6)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): VTClass_Enum {
        match (arg_tag) {
            case 0 => VTClass_Enum.default_terminal
            case 1 => VTClass_Enum.ansi_x3_64
            case 2 => VTClass_Enum.dec_vt52
            case 3 => VTClass_Enum.dec_vt100
            case 4 => VTClass_Enum.dec_vt220
            case 5 => VTClass_Enum.hp_700_94
            case 6 => VTClass_Enum.ibm_3130
            case x where x <= 63 => VTClass_Enum.reserved(x)
            case y where y > 63 && y <= 65535 => VTClass_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case VTClass_Enum.default_terminal => 0
            case VTClass_Enum.ansi_x3_64 => 1
            case VTClass_Enum.dec_vt52 => 2
            case VTClass_Enum.dec_vt100 => 3
            case VTClass_Enum.dec_vt220 => 4
            case VTClass_Enum.hp_700_94 => 5
            case VTClass_Enum.ibm_3130 => 6
            case VTClass_Enum.reserved(x) => x
            case VTClass_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case VTClass_Enum.default_terminal => "default_terminal"
            case VTClass_Enum.ansi_x3_64 => "ansi_x3_64"
            case VTClass_Enum.dec_vt52 => "dec_vt52"
            case VTClass_Enum.dec_vt100 => "dec_vt100"
            case VTClass_Enum.dec_vt220 => "dec_vt220"
            case VTClass_Enum.hp_700_94 => "hp_700_94"
            case VTClass_Enum.ibm_3130 => "ibm_3130"
            case VTClass_Enum.reserved(x) => "reserved_${x}"
            case VTClass_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): VTClass_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "default_terminal" => VTClass_Enum.default_terminal
            case "ansi_x3_64" => VTClass_Enum.ansi_x3_64
            case "dec_vt52" => VTClass_Enum.dec_vt52
            case "dec_vt100" => VTClass_Enum.dec_vt100
            case "dec_vt220" => VTClass_Enum.dec_vt220
            case "hp_700_94" => VTClass_Enum.hp_700_94
            case "ibm_3130" => VTClass_Enum.ibm_3130
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => VTClass_Enum.reserved(x)
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
                        case Some(x) => VTClass_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_958
--21.6 Base Types

BACnetVTClass ::= ENUMERATED {
 default-terminal (0),
 ansi-x3-64 (1),
 dec-vt52 (2),
 dec-vt100 (3),
 dec-vt220 (4),
 hp-700-94 (5),
 ibm-3130 (6),
 ...
 }
 -- Enumerated values 0-63 are reserved for definition by ASHRAE. Enumerated values
 -- 64-65535 may be used by others subject to the procedures and constraints described
 -- in Clause 23.
*/
