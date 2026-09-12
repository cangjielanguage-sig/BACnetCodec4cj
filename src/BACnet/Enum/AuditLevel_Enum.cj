public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum AuditLevel_Enum <: IFromUInt32<AuditLevel_Enum> & IToUInt32 & ToString & IFromString<AuditLevel_Enum> {
    | none // (0)
    | audit_all // (1)
    | audit_config // (2)
    | default // (3)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): AuditLevel_Enum {
        match (arg_tag) {
            case 0 => AuditLevel_Enum.none
            case 1 => AuditLevel_Enum.audit_all
            case 2 => AuditLevel_Enum.audit_config
            case 3 => AuditLevel_Enum.default
            case x where x <= 127 => AuditLevel_Enum.reserved(x)
            case y where y > 127 && y <= 255 => AuditLevel_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case AuditLevel_Enum.none => 0
            case AuditLevel_Enum.audit_all => 1
            case AuditLevel_Enum.audit_config => 2
            case AuditLevel_Enum.default => 3
            case AuditLevel_Enum.reserved(x) => x
            case AuditLevel_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case AuditLevel_Enum.none => "none"
            case AuditLevel_Enum.audit_all => "audit_all"
            case AuditLevel_Enum.audit_config => "audit_config"
            case AuditLevel_Enum.default => "default"
            case AuditLevel_Enum.reserved(x) => "reserved_${x}"
            case AuditLevel_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): AuditLevel_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "none" => AuditLevel_Enum.none
            case "audit_all" => AuditLevel_Enum.audit_all
            case "audit_config" => AuditLevel_Enum.audit_config
            case "default" => AuditLevel_Enum.default
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => AuditLevel_Enum.reserved(x)
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
                        case Some(x) => AuditLevel_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_895
--21.6 Base Types

BACnetAuditLevel ::= ENUMERATED {
 none (0),
 audit-all (1),
 audit-config (2),
 default (3),
 ...
 } -- Enumerated values 0-127 are reserved for definition by ASHRAE. Enumerated values 128-255 may be used -- by others subject to the procedures and constraints described in Clause 23.
--ISO_16484_5_2022_Page_896
*/
