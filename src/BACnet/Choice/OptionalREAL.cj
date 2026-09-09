public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum OptionalREAL <: IFromUInt8<OptionalREAL> & IToUInt8 & ToString & IFromString<OptionalREAL> {
    | null // null  NULL,
    | real // real  REAL

    public static func fromUInt8(tag: UInt8): OptionalREAL {
        match (tag) {
            case 0 => OptionalREAL.null
            case 4 => OptionalREAL.real
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case OptionalREAL.null => 0
            case OptionalREAL.real => 4
        }
    }

    public func toString(): String {
        match (this) {
            case OptionalREAL.null => "null"
            case OptionalREAL.real => "real"
        }
    }

    public static func fromString(arg_str: String): OptionalREAL {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "null" => OptionalREAL.null
            case "real" => OptionalREAL.real
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
