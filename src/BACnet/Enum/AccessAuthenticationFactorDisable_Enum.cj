public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum AccessAuthenticationFactorDisable_Enum <: IFromUInt32<AccessAuthenticationFactorDisable_Enum> & IToUInt32 & ToString & IFromString<AccessAuthenticationFactorDisable_Enum> {
    | none // (0)
    | disabled // (1)
    | disabled_lost // (2)
    | disabled_stolen // (3)
    | disabled_damaged // (4)
    | disabled_destroyed // (5)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): AccessAuthenticationFactorDisable_Enum {
        match (arg_tag) {
            case 0 => AccessAuthenticationFactorDisable_Enum.none
            case 1 => AccessAuthenticationFactorDisable_Enum.disabled
            case 2 => AccessAuthenticationFactorDisable_Enum.disabled_lost
            case 3 => AccessAuthenticationFactorDisable_Enum.disabled_stolen
            case 4 => AccessAuthenticationFactorDisable_Enum.disabled_damaged
            case 5 => AccessAuthenticationFactorDisable_Enum.disabled_destroyed
            case x where x <= 63 => AccessAuthenticationFactorDisable_Enum.reserved(x)
            case y where y > 63 && y <= 65535 => AccessAuthenticationFactorDisable_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case AccessAuthenticationFactorDisable_Enum.none => 0
            case AccessAuthenticationFactorDisable_Enum.disabled => 1
            case AccessAuthenticationFactorDisable_Enum.disabled_lost => 2
            case AccessAuthenticationFactorDisable_Enum.disabled_stolen => 3
            case AccessAuthenticationFactorDisable_Enum.disabled_damaged => 4
            case AccessAuthenticationFactorDisable_Enum.disabled_destroyed => 5
            case AccessAuthenticationFactorDisable_Enum.reserved(x) => x
            case AccessAuthenticationFactorDisable_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case AccessAuthenticationFactorDisable_Enum.none => "none"
            case AccessAuthenticationFactorDisable_Enum.disabled => "disabled"
            case AccessAuthenticationFactorDisable_Enum.disabled_lost => "disabled_lost"
            case AccessAuthenticationFactorDisable_Enum.disabled_stolen => "disabled_stolen"
            case AccessAuthenticationFactorDisable_Enum.disabled_damaged => "disabled_damaged"
            case AccessAuthenticationFactorDisable_Enum.disabled_destroyed => "disabled_destroyed"
            case AccessAuthenticationFactorDisable_Enum.reserved(x) => "reserved_${x}"
            case AccessAuthenticationFactorDisable_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): AccessAuthenticationFactorDisable_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "none" => AccessAuthenticationFactorDisable_Enum.none
            case "disabled" => AccessAuthenticationFactorDisable_Enum.disabled
            case "disabled_lost" => AccessAuthenticationFactorDisable_Enum.disabled_lost
            case "disabled_stolen" => AccessAuthenticationFactorDisable_Enum.disabled_stolen
            case "disabled_damaged" => AccessAuthenticationFactorDisable_Enum.disabled_damaged
            case "disabled_destroyed" => AccessAuthenticationFactorDisable_Enum.disabled_destroyed
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => AccessAuthenticationFactorDisable_Enum.reserved(x)
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
                        case Some(x) => AccessAuthenticationFactorDisable_Enum.non_standardized(x)
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

BACnetAccessAuthenticationFactorDisable ::= ENUMERATED {
 none (0),
 disabled (1),
 disabled-lost (2),
 disabled-stolen (3),
 disabled-damaged (4),
 disabled-destroyed (5),
 ...
 }
 -- Enumerated values 0-63 are reserved for definition by ASHRAE. Enumerated values
 -- 64-65535 may be used by others subject to the procedures and constraints described
 -- in Clause 23.
*/
