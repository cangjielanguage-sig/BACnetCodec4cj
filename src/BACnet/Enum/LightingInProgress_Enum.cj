public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum LightingInProgress_Enum <: IFromUInt32<LightingInProgress_Enum> & IToUInt32 & ToString & IFromString<LightingInProgress_Enum> {
    | idle // (0)
    | fade_active // (1)
    | ramp_active // (2)
    | not_controlled // (3)
    | other // (4)

    public static func fromUInt32(arg_tag: UInt32): LightingInProgress_Enum {
        match (arg_tag) {
            case 0 => LightingInProgress_Enum.idle
            case 1 => LightingInProgress_Enum.fade_active
            case 2 => LightingInProgress_Enum.ramp_active
            case 3 => LightingInProgress_Enum.not_controlled
            case 4 => LightingInProgress_Enum.other
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case LightingInProgress_Enum.idle => 0
            case LightingInProgress_Enum.fade_active => 1
            case LightingInProgress_Enum.ramp_active => 2
            case LightingInProgress_Enum.not_controlled => 3
            case LightingInProgress_Enum.other => 4
        }
    }

    public func toString(): String {
        match (this) {
            case LightingInProgress_Enum.idle => "idle"
            case LightingInProgress_Enum.fade_active => "fade_active"
            case LightingInProgress_Enum.ramp_active => "ramp_active"
            case LightingInProgress_Enum.not_controlled => "not_controlled"
            case LightingInProgress_Enum.other => "other"
        }
    }

    public static func fromString(arg_str: String): LightingInProgress_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "idle" => LightingInProgress_Enum.idle
            case "fade_active" => LightingInProgress_Enum.fade_active
            case "ramp_active" => LightingInProgress_Enum.ramp_active
            case "not_controlled" => LightingInProgress_Enum.not_controlled
            case "other" => LightingInProgress_Enum.other
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_922
--21.6 Base Types

BACnetLightingInProgress ::= ENUMERATED {
 idle (0),
 fade-active (1),
 ramp-active (2),
 not-controlled (3),
 other (4)
 }
*/
