public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum NetworkType_Enum <: IFromUInt32<NetworkType_Enum> & IToUInt32 & ToString & IFromString<NetworkType_Enum> {
    | ethernet // (0)
    | arcnet // (1)
    | mstp // (2)
    | ptp // (3)
    | lontalk // (4)
    | ipv4 // (5)
    | zigbee // (6)
    | virtual // (7)
    | non_bacnet // 已在协议中删除(removed)，此处保留旧版本标记作兼容
    | ipv6 // (9)
    | serial // (10)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): NetworkType_Enum {
        match (arg_tag) {
            case 0 => NetworkType_Enum.ethernet
            case 1 => NetworkType_Enum.arcnet
            case 2 => NetworkType_Enum.mstp
            case 3 => NetworkType_Enum.ptp
            case 4 => NetworkType_Enum.lontalk
            case 5 => NetworkType_Enum.ipv4
            case 6 => NetworkType_Enum.zigbee
            case 7 => NetworkType_Enum.virtual
            case 8 => NetworkType_Enum.non_bacnet
            case 9 => NetworkType_Enum.ipv6
            case 10 => NetworkType_Enum.serial
            case x where x <= 63 => NetworkType_Enum.reserved(x)
            case y where y > 63 && y <= 255 => NetworkType_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case NetworkType_Enum.ethernet => 0
            case NetworkType_Enum.arcnet => 1
            case NetworkType_Enum.mstp => 2
            case NetworkType_Enum.ptp => 3
            case NetworkType_Enum.lontalk => 4
            case NetworkType_Enum.ipv4 => 5
            case NetworkType_Enum.zigbee => 6
            case NetworkType_Enum.virtual => 7
            case NetworkType_Enum.non_bacnet => 8
            case NetworkType_Enum.ipv6 => 9
            case NetworkType_Enum.serial => 10
            case NetworkType_Enum.reserved(x) => x
            case NetworkType_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case NetworkType_Enum.ethernet => "ethernet"
            case NetworkType_Enum.arcnet => "arcnet"
            case NetworkType_Enum.mstp => "mstp"
            case NetworkType_Enum.ptp => "ptp"
            case NetworkType_Enum.lontalk => "lontalk"
            case NetworkType_Enum.ipv4 => "ipv4"
            case NetworkType_Enum.zigbee => "zigbee"
            case NetworkType_Enum.virtual => "virtual"
            case NetworkType_Enum.non_bacnet => "non_bacnet"
            case NetworkType_Enum.ipv6 => "ipv6"
            case NetworkType_Enum.serial => "serial"
            case NetworkType_Enum.reserved(x) => "reserved_${x}"
            case NetworkType_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): NetworkType_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "ethernet" => NetworkType_Enum.ethernet
            case "arcnet" => NetworkType_Enum.arcnet
            case "mstp" => NetworkType_Enum.mstp
            case "ptp" => NetworkType_Enum.ptp
            case "lontalk" => NetworkType_Enum.lontalk
            case "ipv4" => NetworkType_Enum.ipv4
            case "zigbee" => NetworkType_Enum.zigbee
            case "virtual" => NetworkType_Enum.virtual
            case "non_bacnet" => NetworkType_Enum.non_bacnet
            case "ipv6" => NetworkType_Enum.ipv6
            case "serial" => NetworkType_Enum.serial
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => NetworkType_Enum.reserved(x)
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
                        case Some(x) => NetworkType_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_925
--21.6 Base Types

BACnetNetworkType ::= ENUMERATED {
 ethernet (0),
 arcnet (1),
 mstp (2),
 ptp (3),
 lontalk (4),
 ipv4 (5),
 zigbee (6),
 virtual (7),
 -- formerly: non-bacnet (8), removed in version 1 revision 18
 ipv6 (9),
 serial (10),
 ...
 }
 -- Enumerated values 0-63 are reserved for definition by ASHRAE. Enumerated values
 -- 64-255 may be used by others subject to the procedures and constraints described
 -- in Clause 23.
*/
