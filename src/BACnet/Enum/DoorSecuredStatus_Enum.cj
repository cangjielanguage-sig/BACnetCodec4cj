public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum DoorSecuredStatus_Enum <: IFromUInt32<DoorSecuredStatus_Enum> & IToUInt32 & ToString & IFromString<DoorSecuredStatus_Enum> {
    | secured // (0)
    | unsecured // (1)
    | unknown // (2)

    public static func fromUInt32(arg_tag: UInt32): DoorSecuredStatus_Enum {
        match (arg_tag) {
            case 0 => DoorSecuredStatus_Enum.secured
            case 1 => DoorSecuredStatus_Enum.unsecured
            case 2 => DoorSecuredStatus_Enum.unknown
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case DoorSecuredStatus_Enum.secured => 0
            case DoorSecuredStatus_Enum.unsecured => 1
            case DoorSecuredStatus_Enum.unknown => 2
        }
    }

    public func toString(): String {
        match (this) {
            case DoorSecuredStatus_Enum.secured => "secured"
            case DoorSecuredStatus_Enum.unsecured => "unsecured"
            case DoorSecuredStatus_Enum.unknown => "unknown"
        }
    }

    public static func fromString(arg_str: String): DoorSecuredStatus_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "secured" => DoorSecuredStatus_Enum.secured
            case "unsecured" => DoorSecuredStatus_Enum.unsecured
            case "unknown" => DoorSecuredStatus_Enum.unknown
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_902
--21.6 Base Types

BACnetDoorSecuredStatus ::= ENUMERATED {
 secured (0),
 unsecured (1),
 unknown (2)
 }
*/
