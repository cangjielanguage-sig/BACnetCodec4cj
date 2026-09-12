public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum AccessUserType_Enum <: IFromUInt32<AccessUserType_Enum> & IToUInt32 & ToString & IFromString<AccessUserType_Enum> {
    | asset // (0)
    | group // (1)
    | person // (2)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): AccessUserType_Enum {
        match (arg_tag) {
            case 0 => AccessUserType_Enum.asset
            case 1 => AccessUserType_Enum.group
            case 2 => AccessUserType_Enum.person
            case x where x <= 63 => AccessUserType_Enum.reserved(x)
            case y where y > 63 && y <= 65535 => AccessUserType_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case AccessUserType_Enum.asset => 0
            case AccessUserType_Enum.group => 1
            case AccessUserType_Enum.person => 2
            case AccessUserType_Enum.reserved(x) => x
            case AccessUserType_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case AccessUserType_Enum.asset => "asset"
            case AccessUserType_Enum.group => "group"
            case AccessUserType_Enum.person => "person"
            case AccessUserType_Enum.reserved(x) => "reserved_${x}"
            case AccessUserType_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): AccessUserType_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "asset" => AccessUserType_Enum.asset
            case "group" => AccessUserType_Enum.group
            case "person" => AccessUserType_Enum.person
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => AccessUserType_Enum.reserved(x)
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
                        case Some(x) => AccessUserType_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_894
--21.6 Base Types

BACnetAccessUserType ::= ENUMERATED {
 asset (0),
 group (1),
 person (2),
 ...
 }
 -- Enumerated values 0-63 are reserved for definition by ASHRAE. Enumerated values
 -- 64-65535 may be used by others subject to the procedures and constraints described
 -- in Clause 23.
*/
