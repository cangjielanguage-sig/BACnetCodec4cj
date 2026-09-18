public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum Scale_Choice <: IFromUInt8<Scale_Choice> & IToUInt8 & ToString & IFromString<Scale_Choice> {
    | float_scale // float-scale [0] REAL,
    | integer_scale // integer-scale [1] INTEGER

    public static func fromUInt8(tag: UInt8): Scale_Choice {
        match (tag) {
            case 0 => Scale_Choice.float_scale
            case 1 => Scale_Choice.integer_scale
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case Scale_Choice.float_scale => 0
            case Scale_Choice.integer_scale => 1
        }
    }

    public func toString(): String {
        match (this) {
            case Scale_Choice.float_scale => "float_scale"
            case Scale_Choice.integer_scale => "integer_scale"
        }
    }

    public static func fromString(arg_str: String): Scale_Choice {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "float_scale" => Scale_Choice.float_scale
            case "integer_scale" => Scale_Choice.integer_scale
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_954
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnetScale ::= CHOICE {
 float-scale [0] REAL,
 integer-scale [1] INTEGER
}
*/
