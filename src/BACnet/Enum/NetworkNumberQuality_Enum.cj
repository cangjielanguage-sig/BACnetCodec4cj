public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum NetworkNumberQuality_Enum <: IFromUInt32<NetworkNumberQuality_Enum> & IToUInt32 & ToString & IFromString<NetworkNumberQuality_Enum> {
    | unknown // (0)
    | learned // (1)
    | learned_configured // (2)
    | configured // (3)

    public static func fromUInt32(arg_tag: UInt32): NetworkNumberQuality_Enum {
        match (arg_tag) {
            case 0 => NetworkNumberQuality_Enum.unknown
            case 1 => NetworkNumberQuality_Enum.learned
            case 2 => NetworkNumberQuality_Enum.learned_configured
            case 3 => NetworkNumberQuality_Enum.configured
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case NetworkNumberQuality_Enum.unknown => 0
            case NetworkNumberQuality_Enum.learned => 1
            case NetworkNumberQuality_Enum.learned_configured => 2
            case NetworkNumberQuality_Enum.configured => 3
        }
    }

    public func toString(): String {
        match (this) {
            case NetworkNumberQuality_Enum.unknown => "unknown"
            case NetworkNumberQuality_Enum.learned => "learned"
            case NetworkNumberQuality_Enum.learned_configured => "learned_configured"
            case NetworkNumberQuality_Enum.configured => "configured"
        }
    }

    public static func fromString(arg_str: String): NetworkNumberQuality_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "unknown" => NetworkNumberQuality_Enum.unknown
            case "learned" => NetworkNumberQuality_Enum.learned
            case "learned_configured" => NetworkNumberQuality_Enum.learned_configured
            case "configured" => NetworkNumberQuality_Enum.configured
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_924
--21.6 Base Types

BACnetNetworkNumberQuality ::= ENUMERATED {
 unknown (0),
 learned (1),
 learned-configured (2),
 configured (3)
 }
*/
