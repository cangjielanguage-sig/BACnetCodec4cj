public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum AccessCredentialDisable_Enum <: IFromUInt32<AccessCredentialDisable_Enum> & IToUInt32 & ToString & IFromString<AccessCredentialDisable_Enum> {
    | none // (0)
    | disable // (1)
    | disable_manual // (2)
    | disable_lockout // (3)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): AccessCredentialDisable_Enum {
        match (arg_tag) {
            case 0 => AccessCredentialDisable_Enum.none
            case 1 => AccessCredentialDisable_Enum.disable
            case 2 => AccessCredentialDisable_Enum.disable_manual
            case 3 => AccessCredentialDisable_Enum.disable_lockout
            case x where x <= 63 => AccessCredentialDisable_Enum.reserved(x)
            case y where y > 63 && y <= 65535 => AccessCredentialDisable_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case AccessCredentialDisable_Enum.none => 0
            case AccessCredentialDisable_Enum.disable => 1
            case AccessCredentialDisable_Enum.disable_manual => 2
            case AccessCredentialDisable_Enum.disable_lockout => 3
            case AccessCredentialDisable_Enum.reserved(x) => x
            case AccessCredentialDisable_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case AccessCredentialDisable_Enum.none => "none"
            case AccessCredentialDisable_Enum.disable => "disable"
            case AccessCredentialDisable_Enum.disable_manual => "disable_manual"
            case AccessCredentialDisable_Enum.disable_lockout => "disable_lockout"
            case AccessCredentialDisable_Enum.reserved(x) => "reserved_${x}"
            case AccessCredentialDisable_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): AccessCredentialDisable_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "none" => AccessCredentialDisable_Enum.none
            case "disable" => AccessCredentialDisable_Enum.disable
            case "disable_manual" => AccessCredentialDisable_Enum.disable_manual
            case "disable_lockout" => AccessCredentialDisable_Enum.disable_lockout
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => AccessCredentialDisable_Enum.reserved(x)
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
                        case Some(x) => AccessCredentialDisable_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_892
--21.6 Base Types

BACnetAccessCredentialDisable ::= ENUMERATED {
 none (0),
 disable (1),
 disable-manual (2),
 disable-lockout (3),
 ...
 }
 -- Enumerated values 0-63 are reserved for definition by ASHRAE. Enumerated values
 -- 64-65535 may be used by others subject to the procedures and constraints described
 -- in Clause 23.
*/
