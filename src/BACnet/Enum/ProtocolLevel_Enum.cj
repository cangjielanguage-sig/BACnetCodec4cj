public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum ProtocolLevel_Enum <: IFromUInt32<ProtocolLevel_Enum> & IToUInt32 & ToString & IFromString<ProtocolLevel_Enum> {
    | physical // (0)
    | protocol // (1)
    | bacnet_application // (2)
    | non_bacnet_application // (3)

    public static func fromUInt32(arg_tag: UInt32): ProtocolLevel_Enum {
        match (arg_tag) {
            case 0 => ProtocolLevel_Enum.physical
            case 1 => ProtocolLevel_Enum.protocol
            case 2 => ProtocolLevel_Enum.bacnet_application
            case 3 => ProtocolLevel_Enum.non_bacnet_application
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case ProtocolLevel_Enum.physical => 0
            case ProtocolLevel_Enum.protocol => 1
            case ProtocolLevel_Enum.bacnet_application => 2
            case ProtocolLevel_Enum.non_bacnet_application => 3
        }
    }

    public func toString(): String {
        match (this) {
            case ProtocolLevel_Enum.physical => "physical"
            case ProtocolLevel_Enum.protocol => "protocol"
            case ProtocolLevel_Enum.bacnet_application => "bacnet_application"
            case ProtocolLevel_Enum.non_bacnet_application => "non_bacnet_application"
        }
    }

    public static func fromString(arg_str: String): ProtocolLevel_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "physical" => ProtocolLevel_Enum.physical
            case "protocol" => ProtocolLevel_Enum.protocol
            case "bacnet_application" => ProtocolLevel_Enum.bacnet_application
            case "non_bacnet_application" => ProtocolLevel_Enum.non_bacnet_application
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_952
--21.6 Base Types

BACnetProtocolLevel ::= ENUMERATED {
 physical (0),
 protocol (1),
 bacnet-application (2),
 non-bacnet-application (3)
 }
*/
