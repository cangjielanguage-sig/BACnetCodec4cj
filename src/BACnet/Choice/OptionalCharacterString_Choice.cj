public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum OptionalCharacterString_Choice <: IFromUInt8<OptionalCharacterString_Choice> & IToUInt8 & ToString & IFromString<OptionalCharacterString_Choice> {
    | null // null NULL,
    | characterstring // characterstring CharacterString

    public static func fromUInt8(tag: UInt8): OptionalCharacterString_Choice {
        match (tag) {
            case 0 => OptionalCharacterString_Choice.null
            case 7 => OptionalCharacterString_Choice.characterstring
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case OptionalCharacterString_Choice.null => 0
            case OptionalCharacterString_Choice.characterstring => 7
        }
    }

    public func toString(): String {
        match (this) {
            case OptionalCharacterString_Choice.null => "null"
            case OptionalCharacterString_Choice.characterstring => "characterstring"
        }
    }

    public static func fromString(arg_str: String): OptionalCharacterString_Choice {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "null" => OptionalCharacterString_Choice.null
            case "characterstring" => OptionalCharacterString_Choice.characterstring
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
