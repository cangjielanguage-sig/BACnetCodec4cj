public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum AuthorizationExemption_Enum <: IFromUInt32<AuthorizationExemption_Enum> & IToUInt32 & ToString & IFromString<AuthorizationExemption_Enum> {
    | passback // (0)
    | occupancy_check // (1)
    | access_rights // (2)
    | lockout // (3)
    | deny // (4)
    | verification // (5)
    | authorization_delay // (6)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): AuthorizationExemption_Enum {
        match (arg_tag) {
            case 0 => AuthorizationExemption_Enum.passback
            case 1 => AuthorizationExemption_Enum.occupancy_check
            case 2 => AuthorizationExemption_Enum.access_rights
            case 3 => AuthorizationExemption_Enum.lockout
            case 4 => AuthorizationExemption_Enum.deny
            case 5 => AuthorizationExemption_Enum.verification
            case 6 => AuthorizationExemption_Enum.authorization_delay
            case x where x <= 63 => AuthorizationExemption_Enum.reserved(x)
            case y where y > 63 && y <= 255 => AuthorizationExemption_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case AuthorizationExemption_Enum.passback => 0
            case AuthorizationExemption_Enum.occupancy_check => 1
            case AuthorizationExemption_Enum.access_rights => 2
            case AuthorizationExemption_Enum.lockout => 3
            case AuthorizationExemption_Enum.deny => 4
            case AuthorizationExemption_Enum.verification => 5
            case AuthorizationExemption_Enum.authorization_delay => 6
            case AuthorizationExemption_Enum.reserved(x) => x
            case AuthorizationExemption_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case AuthorizationExemption_Enum.passback => "passback"
            case AuthorizationExemption_Enum.occupancy_check => "occupancy_check"
            case AuthorizationExemption_Enum.access_rights => "access_rights"
            case AuthorizationExemption_Enum.lockout => "lockout"
            case AuthorizationExemption_Enum.deny => "deny"
            case AuthorizationExemption_Enum.verification => "verification"
            case AuthorizationExemption_Enum.authorization_delay => "authorization_delay"
            case AuthorizationExemption_Enum.reserved(x) => "reserved_${x}"
            case AuthorizationExemption_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): AuthorizationExemption_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "passback" => AuthorizationExemption_Enum.passback
            case "occupancy_check" => AuthorizationExemption_Enum.occupancy_check
            case "access_rights" => AuthorizationExemption_Enum.access_rights
            case "lockout" => AuthorizationExemption_Enum.lockout
            case "deny" => AuthorizationExemption_Enum.deny
            case "verification" => AuthorizationExemption_Enum.verification
            case "authorization_delay" => AuthorizationExemption_Enum.authorization_delay
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => AuthorizationExemption_Enum.reserved(x)
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
                        case Some(x) => AuthorizationExemption_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_898
--21.6 Base Types

BACnetAuthorizationExemption ::= ENUMERATED {
 passback (0),
 occupancy-check (1),
 access-rights (2),
 lockout (3),
 deny (4),
 verification (5),
 authorization-delay (6),
 ...
 }
 -- Enumerated values 0-63 are reserved for definition by ASHRAE. Enumerated values
 -- 64-255 may be used by others subject to the procedures and constraints described
 -- in Clause 23.
--ISO_16484_5_2022_Page_899
*/
