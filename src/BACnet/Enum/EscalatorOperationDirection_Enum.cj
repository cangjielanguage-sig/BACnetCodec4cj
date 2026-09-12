public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum EscalatorOperationDirection_Enum <: IFromUInt32<EscalatorOperationDirection_Enum> & IToUInt32 & ToString & IFromString<EscalatorOperationDirection_Enum> {
    | unknown // (0)
    | stopped // (1)
    | up_rated_speed // (2)
    | up_reduced_speed // (3)
    | down_rated_speed // (4)
    | down_reduced_speed // (5)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): EscalatorOperationDirection_Enum {
        match (arg_tag) {
            case 0 => EscalatorOperationDirection_Enum.unknown
            case 1 => EscalatorOperationDirection_Enum.stopped
            case 2 => EscalatorOperationDirection_Enum.up_rated_speed
            case 3 => EscalatorOperationDirection_Enum.up_reduced_speed
            case 4 => EscalatorOperationDirection_Enum.down_rated_speed
            case 5 => EscalatorOperationDirection_Enum.down_reduced_speed
            case x where x <= 1023 => EscalatorOperationDirection_Enum.reserved(x)
            case y where y > 1023 && y <= 65535 => EscalatorOperationDirection_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case EscalatorOperationDirection_Enum.unknown => 0
            case EscalatorOperationDirection_Enum.stopped => 1
            case EscalatorOperationDirection_Enum.up_rated_speed => 2
            case EscalatorOperationDirection_Enum.up_reduced_speed => 3
            case EscalatorOperationDirection_Enum.down_rated_speed => 4
            case EscalatorOperationDirection_Enum.down_reduced_speed => 5
            case EscalatorOperationDirection_Enum.reserved(x) => x
            case EscalatorOperationDirection_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case EscalatorOperationDirection_Enum.unknown => "unknown"
            case EscalatorOperationDirection_Enum.stopped => "stopped"
            case EscalatorOperationDirection_Enum.up_rated_speed => "up_rated_speed"
            case EscalatorOperationDirection_Enum.up_reduced_speed => "up_reduced_speed"
            case EscalatorOperationDirection_Enum.down_rated_speed => "down_rated_speed"
            case EscalatorOperationDirection_Enum.down_reduced_speed => "down_reduced_speed"
            case EscalatorOperationDirection_Enum.reserved(x) => "reserved_${x}"
            case EscalatorOperationDirection_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): EscalatorOperationDirection_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "unknown" => EscalatorOperationDirection_Enum.unknown
            case "stopped" => EscalatorOperationDirection_Enum.stopped
            case "up_rated_speed" => EscalatorOperationDirection_Enum.up_rated_speed
            case "up_reduced_speed" => EscalatorOperationDirection_Enum.up_reduced_speed
            case "down_rated_speed" => EscalatorOperationDirection_Enum.down_rated_speed
            case "down_reduced_speed" => EscalatorOperationDirection_Enum.down_reduced_speed
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => EscalatorOperationDirection_Enum.reserved(x)
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
                        case Some(x) => EscalatorOperationDirection_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_913
--21.6 Base Types

BACnetEscalatorOperationDirection ::= ENUMERATED {
 unknown (0),
 stopped (1),
 up-rated-speed (2),
 up-reduced-speed (3),
 down-rated-speed (4),
 down-reduced-speed (5),
 ...
 } -- Enumerated values 0-1023 are reserved for definition by ASHRAE. Enumerated values -- 1024-65535 may be used by others subject to the procedures and constraints described -- in Clause 23.
*/
