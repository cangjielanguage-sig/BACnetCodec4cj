public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum HostAddress <: IFromUInt8<HostAddress> & IToUInt8 & ToString & IFromString<HostAddress> {
    | none // none [0] NULL,
    | ip_address // ip-address [1] OCTET STRING,  -- 4 octets for B/IP or 16 octets for B/IPv6
    | name // name [2] CharacterString -- Internet host name (see RFC 1123)

    public static func fromUInt8(tag: UInt8): HostAddress {
        match (tag) {
            case 0 => HostAddress.none
            case 1 => HostAddress.ip_address
            case 2 => HostAddress.name
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case HostAddress.none => 0
            case HostAddress.ip_address => 1
            case HostAddress.name => 2
        }
    }

    public func toString(): String {
        match (this) {
            case HostAddress.none => "none"
            case HostAddress.ip_address => "ip_address"
            case HostAddress.name => "name"
        }
    }

    public static func fromString(arg_str: String): HostAddress {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "none" => HostAddress.none
            case "ip_address" => HostAddress.ip_address
            case "name" => HostAddress.name
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
