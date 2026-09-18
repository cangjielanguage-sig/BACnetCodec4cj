public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum OptionalBinaryPV_Choice <: IFromUInt8<OptionalBinaryPV_Choice> & IToUInt8 & ToString & IFromString<OptionalBinaryPV_Choice> {
    | null // null NULL,
    | binary_pv // binary-pv BACnetBinaryPV

    public static func fromUInt8(tag: UInt8): OptionalBinaryPV_Choice {
        match (tag) {
            case 0 => OptionalBinaryPV_Choice.null
            case 9 => OptionalBinaryPV_Choice.binary_pv
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case OptionalBinaryPV_Choice.null => 0
            case OptionalBinaryPV_Choice.binary_pv => 9
        }
    }

    public func toString(): String {
        match (this) {
            case OptionalBinaryPV_Choice.null => "null"
            case OptionalBinaryPV_Choice.binary_pv => "binary_pv"
        }
    }

    public static func fromString(arg_str: String): OptionalBinaryPV_Choice {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "null" => OptionalBinaryPV_Choice.null
            case "binary_pv" => OptionalBinaryPV_Choice.binary_pv
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_932
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnetOptionalBinaryPV ::= CHOICE {
 null NULL,
 binary-pv BACnetBinaryPV
 }
*/
