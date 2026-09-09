public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum OptionalBinaryPV <: IFromUInt8<OptionalBinaryPV> & IToUInt8 & ToString & IFromString<OptionalBinaryPV> {
    | null // null NULL,
    | binary_pv // binary-pv BACnetBinaryPV

    public static func fromUInt8(tag: UInt8): OptionalBinaryPV {
        match (tag) {
            case 0 => OptionalBinaryPV.null
            case 9 => OptionalBinaryPV.binary_pv
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case OptionalBinaryPV.null => 0
            case OptionalBinaryPV.binary_pv => 9
        }
    }

    public func toString(): String {
        match (this) {
            case OptionalBinaryPV.null => "null"
            case OptionalBinaryPV.binary_pv => "binary_pv"
        }
    }

    public static func fromString(arg_str: String): OptionalBinaryPV {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "null" => OptionalBinaryPV.null
            case "binary_pv" => OptionalBinaryPV.binary_pv
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
