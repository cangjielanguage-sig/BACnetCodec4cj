public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum ValueSource <: IFromUInt8<ValueSource> & IToUInt8 & ToString & IFromString<ValueSource> {
    | none // none [0] NULL,
    | object // object [1] BACnetDeviceObjectReference,
    | address // address [2] BACnetAddress

    public static func fromUInt8(tag: UInt8): ValueSource {
        match (tag) {
            case 0 => ValueSource.none
            case 1 => ValueSource.object
            case 2 => ValueSource.address
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case ValueSource.none => 0
            case ValueSource.object => 1
            case ValueSource.address => 2
        }
    }

    public func toString(): String {
        match (this) {
            case ValueSource.none => "none"
            case ValueSource.object => "object"
            case ValueSource.address => "address"
        }
    }

    public static func fromString(arg_str: String): ValueSource {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "none" => ValueSource.none
            case "object" => ValueSource.object
            case "address" => ValueSource.address
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_958
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnetValueSource ::= CHOICE {
 none [0] NULL,
 object [1] BACnetDeviceObjectReference,
 address [2] BACnetAddress
 }
*/
