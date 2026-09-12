public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum LoggingType_Enum <: IFromUInt32<LoggingType_Enum> & IToUInt32 & ToString & IFromString<LoggingType_Enum> {
    | polled // (0)
    | cov // (1)
    | triggered // (2)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): LoggingType_Enum {
        match (arg_tag) {
            case 0 => LoggingType_Enum.polled
            case 1 => LoggingType_Enum.cov
            case 2 => LoggingType_Enum.triggered
            case x where x <= 63 => LoggingType_Enum.reserved(x)
            case y where y > 63 && y <= 255 => LoggingType_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case LoggingType_Enum.polled => 0
            case LoggingType_Enum.cov => 1
            case LoggingType_Enum.triggered => 2
            case LoggingType_Enum.reserved(x) => x
            case LoggingType_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case LoggingType_Enum.polled => "polled"
            case LoggingType_Enum.cov => "cov"
            case LoggingType_Enum.triggered => "triggered"
            case LoggingType_Enum.reserved(x) => "reserved_${x}"
            case LoggingType_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): LoggingType_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "polled" => LoggingType_Enum.polled
            case "cov" => LoggingType_Enum.cov
            case "triggered" => LoggingType_Enum.triggered
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => LoggingType_Enum.reserved(x)
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
                        case Some(x) => LoggingType_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_923
--21.6 Base Types

BACnetLoggingType ::= ENUMERATED {
 polled (0),
 cov (1),
 triggered (2),
 ...
 } -- Enumerated values 0-63 are reserved for definition by ASHRAE. Enumerated values -- 64-255 may be used by others subject to the procedures and constraints described -- in Clause 23.
*/
