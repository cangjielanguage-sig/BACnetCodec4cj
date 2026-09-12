public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum AuthorizationMode_Enum <: IFromUInt32<AuthorizationMode_Enum> & IToUInt32 & ToString & IFromString<AuthorizationMode_Enum> {
    | authorize // (0)
    | grant_active // (1)
    | deny_all // (2)
    | verification_required // (3)
    | authorization_delayed // (4)
    | none // (5)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): AuthorizationMode_Enum {
        match (arg_tag) {
            case 0 => AuthorizationMode_Enum.authorize
            case 1 => AuthorizationMode_Enum.grant_active
            case 2 => AuthorizationMode_Enum.deny_all
            case 3 => AuthorizationMode_Enum.verification_required
            case 4 => AuthorizationMode_Enum.authorization_delayed
            case 5 => AuthorizationMode_Enum.none
            case x where x <= 63 => AuthorizationMode_Enum.reserved(x)
            case y where y > 63 && y <= 65535 => AuthorizationMode_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case AuthorizationMode_Enum.authorize => 0
            case AuthorizationMode_Enum.grant_active => 1
            case AuthorizationMode_Enum.deny_all => 2
            case AuthorizationMode_Enum.verification_required => 3
            case AuthorizationMode_Enum.authorization_delayed => 4
            case AuthorizationMode_Enum.none => 5
            case AuthorizationMode_Enum.reserved(x) => x
            case AuthorizationMode_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case AuthorizationMode_Enum.authorize => "authorize"
            case AuthorizationMode_Enum.grant_active => "grant_active"
            case AuthorizationMode_Enum.deny_all => "deny_all"
            case AuthorizationMode_Enum.verification_required => "verification_required"
            case AuthorizationMode_Enum.authorization_delayed => "authorization_delayed"
            case AuthorizationMode_Enum.none => "none"
            case AuthorizationMode_Enum.reserved(x) => "reserved_${x}"
            case AuthorizationMode_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): AuthorizationMode_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "authorize" => AuthorizationMode_Enum.authorize
            case "grant_active" => AuthorizationMode_Enum.grant_active
            case "deny_all" => AuthorizationMode_Enum.deny_all
            case "verification_required" => AuthorizationMode_Enum.verification_required
            case "authorization_delayed" => AuthorizationMode_Enum.authorization_delayed
            case "none" => AuthorizationMode_Enum.none
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => AuthorizationMode_Enum.reserved(x)
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
                        case Some(x) => AuthorizationMode_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_899
--21.6 Base Types

BACnetAuthorizationMode ::= ENUMERATED {
 authorize (0),
 grant-active (1),
 deny-all (2),
 verification-required (3),
 authorization-delayed (4),
 none (5),
 ...
 }
 -- Enumerated values 0-63 are reserved for definition by ASHRAE. Enumerated values
 -- 64-65535 may be used by others subject to the procedures and constraints described
 -- in Clause 23.
*/
