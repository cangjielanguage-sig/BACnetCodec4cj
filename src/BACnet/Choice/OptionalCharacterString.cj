public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum OptionalCharacterString <: IFromUInt8<OptionalCharacterString> & IToUInt8 & ToString & IFromString<OptionalCharacterString> {
    | null // null NULL,
    | characterstring // characterstring CharacterString

    public static func fromUInt8(tag: UInt8): OptionalCharacterString {
        match (tag) {
            case 0 => OptionalCharacterString.null
            case 7 => OptionalCharacterString.characterstring
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case OptionalCharacterString.null => 0
            case OptionalCharacterString.characterstring => 7
        }
    }

    public func toString(): String {
        match (this) {
            case OptionalCharacterString.null => "null"
            case OptionalCharacterString.characterstring => "characterstring"
        }
    }

    public static func fromString(arg_str: String): OptionalCharacterString {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "null" => OptionalCharacterString.null
            case "characterstring" => OptionalCharacterString.characterstring
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_932
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnetOptionalCharacterString ::= CHOICE {
 null NULL,
 characterstring CharacterString
 }
*/
