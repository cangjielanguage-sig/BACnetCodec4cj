public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum AccessPassbackMode_Enum <: IFromUInt32<AccessPassbackMode_Enum> & IToUInt32 & ToString & IFromString<AccessPassbackMode_Enum> {
    | passback_off // (0)
    | hard_passback // (1)
    | soft_passback // (2)

    public static func fromUInt32(arg_tag: UInt32): AccessPassbackMode_Enum {
        match (arg_tag) {
            case 0 => AccessPassbackMode_Enum.passback_off
            case 1 => AccessPassbackMode_Enum.hard_passback
            case 2 => AccessPassbackMode_Enum.soft_passback
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case AccessPassbackMode_Enum.passback_off => 0
            case AccessPassbackMode_Enum.hard_passback => 1
            case AccessPassbackMode_Enum.soft_passback => 2
        }
    }

    public func toString(): String {
        match (this) {
            case AccessPassbackMode_Enum.passback_off => "passback_off"
            case AccessPassbackMode_Enum.hard_passback => "hard_passback"
            case AccessPassbackMode_Enum.soft_passback => "soft_passback"
        }
    }

    public static func fromString(arg_str: String): AccessPassbackMode_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "passback_off" => AccessPassbackMode_Enum.passback_off
            case "hard_passback" => AccessPassbackMode_Enum.hard_passback
            case "soft_passback" => AccessPassbackMode_Enum.soft_passback
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_893
--21.6 Base Types

BACnetAccessPassbackMode ::= ENUMERATED {
 passback-off (0),
 hard-passback (1),
 soft-passback (2)
 }
--ISO_16484_5_2022_Page_894
*/
