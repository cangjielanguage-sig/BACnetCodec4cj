public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum AccessCredentialDisableReason_Enum <: IFromUInt32<AccessCredentialDisableReason_Enum> & IToUInt32 & ToString & IFromString<AccessCredentialDisableReason_Enum> {
    | disabled // (0)
    | disabled_needs_provisioning // (1)
    | disabled_unassigned // (2)
    | disabled_not_yet_active // (3)
    | disabled_expired // (4)
    | disabled_lockout // (5)
    | disabled_max_days // (6)
    | disabled_max_uses // (7)
    | disabled_inactivity // (8)
    | disabled_manual // (9)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): AccessCredentialDisableReason_Enum {
        match (arg_tag) {
            case 0 => AccessCredentialDisableReason_Enum.disabled
            case 1 => AccessCredentialDisableReason_Enum.disabled_needs_provisioning
            case 2 => AccessCredentialDisableReason_Enum.disabled_unassigned
            case 3 => AccessCredentialDisableReason_Enum.disabled_not_yet_active
            case 4 => AccessCredentialDisableReason_Enum.disabled_expired
            case 5 => AccessCredentialDisableReason_Enum.disabled_lockout
            case 6 => AccessCredentialDisableReason_Enum.disabled_max_days
            case 7 => AccessCredentialDisableReason_Enum.disabled_max_uses
            case 8 => AccessCredentialDisableReason_Enum.disabled_inactivity
            case 9 => AccessCredentialDisableReason_Enum.disabled_manual
            case x where x <= 63 => AccessCredentialDisableReason_Enum.reserved(x)
            case y where y > 63 && y <= 65535 => AccessCredentialDisableReason_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case AccessCredentialDisableReason_Enum.disabled => 0
            case AccessCredentialDisableReason_Enum.disabled_needs_provisioning => 1
            case AccessCredentialDisableReason_Enum.disabled_unassigned => 2
            case AccessCredentialDisableReason_Enum.disabled_not_yet_active => 3
            case AccessCredentialDisableReason_Enum.disabled_expired => 4
            case AccessCredentialDisableReason_Enum.disabled_lockout => 5
            case AccessCredentialDisableReason_Enum.disabled_max_days => 6
            case AccessCredentialDisableReason_Enum.disabled_max_uses => 7
            case AccessCredentialDisableReason_Enum.disabled_inactivity => 8
            case AccessCredentialDisableReason_Enum.disabled_manual => 9
            case AccessCredentialDisableReason_Enum.reserved(x) => x
            case AccessCredentialDisableReason_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case AccessCredentialDisableReason_Enum.disabled => "disabled"
            case AccessCredentialDisableReason_Enum.disabled_needs_provisioning => "disabled_needs_provisioning"
            case AccessCredentialDisableReason_Enum.disabled_unassigned => "disabled_unassigned"
            case AccessCredentialDisableReason_Enum.disabled_not_yet_active => "disabled_not_yet_active"
            case AccessCredentialDisableReason_Enum.disabled_expired => "disabled_expired"
            case AccessCredentialDisableReason_Enum.disabled_lockout => "disabled_lockout"
            case AccessCredentialDisableReason_Enum.disabled_max_days => "disabled_max_days"
            case AccessCredentialDisableReason_Enum.disabled_max_uses => "disabled_max_uses"
            case AccessCredentialDisableReason_Enum.disabled_inactivity => "disabled_inactivity"
            case AccessCredentialDisableReason_Enum.disabled_manual => "disabled_manual"
            case AccessCredentialDisableReason_Enum.reserved(x) => "reserved_${x}"
            case AccessCredentialDisableReason_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): AccessCredentialDisableReason_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "disabled" => AccessCredentialDisableReason_Enum.disabled
            case "disabled_needs_provisioning" => AccessCredentialDisableReason_Enum.disabled_needs_provisioning
            case "disabled_unassigned" => AccessCredentialDisableReason_Enum.disabled_unassigned
            case "disabled_not_yet_active" => AccessCredentialDisableReason_Enum.disabled_not_yet_active
            case "disabled_expired" => AccessCredentialDisableReason_Enum.disabled_expired
            case "disabled_lockout" => AccessCredentialDisableReason_Enum.disabled_lockout
            case "disabled_max_days" => AccessCredentialDisableReason_Enum.disabled_max_days
            case "disabled_max_uses" => AccessCredentialDisableReason_Enum.disabled_max_uses
            case "disabled_inactivity" => AccessCredentialDisableReason_Enum.disabled_inactivity
            case "disabled_manual" => AccessCredentialDisableReason_Enum.disabled_manual
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => AccessCredentialDisableReason_Enum.reserved(x)
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
                        case Some(x) => AccessCredentialDisableReason_Enum.non_standardized(x)
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

BACnetAccessCredentialDisableReason ::= ENUMERATED {
 disabled (0),
 disabled-needs-provisioning (1),
 disabled-unassigned (2),
 disabled-not-yet-active (3),
 disabled-expired (4),
 disabled-lockout (5),
 disabled-max-days (6),
 disabled-max-uses (7),
 disabled-inactivity (8),
 disabled-manual (9),
 ...
 }
 -- Enumerated values 0-63 are reserved for definition by ASHRAE. Enumerated values
 -- 64-65535 may be used by others subject to the procedures and constraints described
 -- in Clause 23.
*/
