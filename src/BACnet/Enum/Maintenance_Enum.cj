public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum Maintenance_Enum <: IFromUInt32<Maintenance_Enum> & IToUInt32 & ToString & IFromString<Maintenance_Enum> {
    | none // (0)
    | periodic_test // (1)
    | need_service_operational // (2)
    | need_service_inoperative // (3)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): Maintenance_Enum {
        match (arg_tag) {
            case 0 => Maintenance_Enum.none
            case 1 => Maintenance_Enum.periodic_test
            case 2 => Maintenance_Enum.need_service_operational
            case 3 => Maintenance_Enum.need_service_inoperative
            case x where x <= 255 => Maintenance_Enum.reserved(x)
            case y where y > 255 && y <= 65535 => Maintenance_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case Maintenance_Enum.none => 0
            case Maintenance_Enum.periodic_test => 1
            case Maintenance_Enum.need_service_operational => 2
            case Maintenance_Enum.need_service_inoperative => 3
            case Maintenance_Enum.reserved(x) => x
            case Maintenance_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case Maintenance_Enum.none => "none"
            case Maintenance_Enum.periodic_test => "periodic_test"
            case Maintenance_Enum.need_service_operational => "need_service_operational"
            case Maintenance_Enum.need_service_inoperative => "need_service_inoperative"
            case Maintenance_Enum.reserved(x) => "reserved_${x}"
            case Maintenance_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): Maintenance_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "none" => Maintenance_Enum.none
            case "periodic_test" => Maintenance_Enum.periodic_test
            case "need_service_operational" => Maintenance_Enum.need_service_operational
            case "need_service_inoperative" => Maintenance_Enum.need_service_inoperative
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => Maintenance_Enum.reserved(x)
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
                        case Some(x) => Maintenance_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_924
--21.6 Base Types

BACnetMaintenance ::= ENUMERATED {
 none (0),
 periodic-test (1),
 need-service-operational (2),
 need-service-inoperative (3),
 ...
 }
 -- Enumerated values 0-255 are reserved for definition by ASHRAE. Enumerated values
 -- 256-65535 may be used by others subject to procedures and constraints described in
 -- Clause 23.
*/
