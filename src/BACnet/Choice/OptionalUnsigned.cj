public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum OptionalUnsigned <: IFromUInt8<OptionalUnsigned> & IToUInt8 & ToString & IFromString<OptionalUnsigned> {
    | null // null NULL,
    | unsigned // unsigned Unsigned

    public static func fromUInt8(tag: UInt8): OptionalUnsigned {
        match (tag) {
            case 0 => OptionalUnsigned.null
            case 2 => OptionalUnsigned.unsigned
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case OptionalUnsigned.null => 0
            case OptionalUnsigned.unsigned => 2
        }
    }

    public func toString(): String {
        match (this) {
            case OptionalUnsigned.null => "null"
            case OptionalUnsigned.unsigned => "unsigned"
        }
    }

    public static func fromString(arg_str: String): OptionalUnsigned {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "null" => OptionalUnsigned.null
            case "unsigned" => OptionalUnsigned.unsigned
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_932
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnetOptionalUnsigned ::= CHOICE {
 null NULL,
 unsigned Unsigned
 }
*/
