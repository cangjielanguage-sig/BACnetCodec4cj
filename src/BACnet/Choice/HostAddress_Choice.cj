public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum HostAddress_Choice <: IFromUInt8<HostAddress_Choice> & IToUInt8 & ToString & IFromString<HostAddress_Choice> {
    | none // none [0] NULL,
    | ip_address // ip-address [1] OCTET STRING,  -- 4 octets for B/IP or 16 octets for B/IPv6
    | name // name [2] CharacterString -- Internet host name (see RFC 1123)

    public static func fromUInt8(tag: UInt8): HostAddress_Choice {
        match (tag) {
            case 0 => HostAddress_Choice.none
            case 1 => HostAddress_Choice.ip_address
            case 2 => HostAddress_Choice.name
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case HostAddress_Choice.none => 0
            case HostAddress_Choice.ip_address => 1
            case HostAddress_Choice.name => 2
        }
    }

    public func toString(): String {
        match (this) {
            case HostAddress_Choice.none => "none"
            case HostAddress_Choice.ip_address => "ip_address"
            case HostAddress_Choice.name => "name"
        }
    }

    public static func fromString(arg_str: String): HostAddress_Choice {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "none" => HostAddress_Choice.none
            case "ip_address" => HostAddress_Choice.ip_address
            case "name" => HostAddress_Choice.name
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_918
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnetHostAddress ::= CHOICE {
 none [0] NULL,
 ip-address [1] OCTET STRING,  -- 4 octets for B/IP or 16 octets for B/IPv6
 name [2] CharacterString -- Internet host name (see RFC 1123)
 }
*/
