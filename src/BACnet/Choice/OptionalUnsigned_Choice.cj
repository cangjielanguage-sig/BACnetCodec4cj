public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum OptionalUnsigned_Choice <: IFromUInt8<OptionalUnsigned_Choice> & IToUInt8 & ToString & IFromString<OptionalUnsigned_Choice> {
    | null // null NULL,
    | unsigned // unsigned Unsigned

    public static func fromUInt8(tag: UInt8): OptionalUnsigned_Choice {
        match (tag) {
            case 0 => OptionalUnsigned_Choice.null
            case 2 => OptionalUnsigned_Choice.unsigned
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case OptionalUnsigned_Choice.null => 0
            case OptionalUnsigned_Choice.unsigned => 2
        }
    }

    public func toString(): String {
        match (this) {
            case OptionalUnsigned_Choice.null => "null"
            case OptionalUnsigned_Choice.unsigned => "unsigned"
        }
    }

    public static func fromString(arg_str: String): OptionalUnsigned_Choice {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "null" => OptionalUnsigned_Choice.null
            case "unsigned" => OptionalUnsigned_Choice.unsigned
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
