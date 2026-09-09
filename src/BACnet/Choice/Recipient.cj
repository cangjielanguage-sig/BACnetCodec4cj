public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum Recipient <: IFromUInt8<Recipient> & IToUInt8 & ToString & IFromString<Recipient> {
    | device // device [0] BACnetObjectIdentifier,
    | address // address [1] BACnetAddress

    public static func fromUInt8(tag: UInt8): Recipient {
        match (tag) {
            case 0 => Recipient.device
            case 1 => Recipient.address
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case Recipient.device => 0
            case Recipient.address => 1
        }
    }

    public func toString(): String {
        match (this) {
            case Recipient.device => "device"
            case Recipient.address => "address"
        }
    }

    public static func fromString(arg_str: String): Recipient {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "device" => Recipient.device
            case "address" => Recipient.address
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_952
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnetRecipient ::= CHOICE {
 device [0] BACnetObjectIdentifier,
 address [1] BACnetAddress
 }
*/
