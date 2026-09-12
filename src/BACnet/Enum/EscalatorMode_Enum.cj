public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum EscalatorMode_Enum <: IFromUInt32<EscalatorMode_Enum> & IToUInt32 & ToString & IFromString<EscalatorMode_Enum> {
    | unknown // (0)
    | stop // (1)
    | up // (2)
    | down // (3)
    | inspection // (4)
    | out_of_service // (5)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): EscalatorMode_Enum {
        match (arg_tag) {
            case 0 => EscalatorMode_Enum.unknown
            case 1 => EscalatorMode_Enum.stop
            case 2 => EscalatorMode_Enum.up
            case 3 => EscalatorMode_Enum.down
            case 4 => EscalatorMode_Enum.inspection
            case 5 => EscalatorMode_Enum.out_of_service
            case x where x <= 1023 => EscalatorMode_Enum.reserved(x)
            case y where y > 1023 && y <= 65535 => EscalatorMode_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case EscalatorMode_Enum.unknown => 0
            case EscalatorMode_Enum.stop => 1
            case EscalatorMode_Enum.up => 2
            case EscalatorMode_Enum.down => 3
            case EscalatorMode_Enum.inspection => 4
            case EscalatorMode_Enum.out_of_service => 5
            case EscalatorMode_Enum.reserved(x) => x
            case EscalatorMode_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case EscalatorMode_Enum.unknown => "unknown"
            case EscalatorMode_Enum.stop => "stop"
            case EscalatorMode_Enum.up => "up"
            case EscalatorMode_Enum.down => "down"
            case EscalatorMode_Enum.inspection => "inspection"
            case EscalatorMode_Enum.out_of_service => "out_of_service"
            case EscalatorMode_Enum.reserved(x) => "reserved_${x}"
            case EscalatorMode_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): EscalatorMode_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "unknown" => EscalatorMode_Enum.unknown
            case "stop" => EscalatorMode_Enum.stop
            case "up" => EscalatorMode_Enum.up
            case "down" => EscalatorMode_Enum.down
            case "inspection" => EscalatorMode_Enum.inspection
            case "out_of_service" => EscalatorMode_Enum.out_of_service
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => EscalatorMode_Enum.reserved(x)
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
                        case Some(x) => EscalatorMode_Enum.non_standardized(x)
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

BACnetEscalatorMode ::= ENUMERATED {
 unknown (0),
 stop (1),
 up (2),
 down (3),
 inspection (4),
 out-of-service (5),
 ...
 } -- Enumerated values 0-1023 are reserved for definition by ASHRAE. Enumerated values -- 1024-65535 may be used by others subject to the procedures and constraints described -- in Clause 23.
*/
