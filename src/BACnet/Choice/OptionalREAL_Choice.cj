public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum OptionalREAL_Choice <: IFromUInt8<OptionalREAL_Choice> & IToUInt8 & ToString & IFromString<OptionalREAL_Choice> {
    | null // null  NULL,
    | real // real  REAL

    public static func fromUInt8(tag: UInt8): OptionalREAL_Choice {
        match (tag) {
            case 0 => OptionalREAL_Choice.null
            case 4 => OptionalREAL_Choice.real
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case OptionalREAL_Choice.null => 0
            case OptionalREAL_Choice.real => 4
        }
    }

    public func toString(): String {
        match (this) {
            case OptionalREAL_Choice.null => "null"
            case OptionalREAL_Choice.real => "real"
        }
    }

    public static func fromString(arg_str: String): OptionalREAL_Choice {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "null" => OptionalREAL_Choice.null
            case "real" => OptionalREAL_Choice.real
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_932
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnetOptionalREAL ::= CHOICE {
 null  NULL,
 real  REAL
 }
*/
