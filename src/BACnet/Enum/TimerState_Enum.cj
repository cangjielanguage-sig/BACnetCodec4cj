public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum TimerState_Enum <: IFromUInt32<TimerState_Enum> & IToUInt32 & ToString & IFromString<TimerState_Enum> {
    | idle // (0)
    | running // (1)
    | expired // (2)

    public static func fromUInt32(arg_tag: UInt32): TimerState_Enum {
        match (arg_tag) {
            case 0 => TimerState_Enum.idle
            case 1 => TimerState_Enum.running
            case 2 => TimerState_Enum.expired
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case TimerState_Enum.idle => 0
            case TimerState_Enum.running => 1
            case TimerState_Enum.expired => 2
        }
    }

    public func toString(): String {
        match (this) {
            case TimerState_Enum.idle => "idle"
            case TimerState_Enum.running => "running"
            case TimerState_Enum.expired => "expired"
        }
    }

    public static func fromString(arg_str: String): TimerState_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "idle" => TimerState_Enum.idle
            case "running" => TimerState_Enum.running
            case "expired" => TimerState_Enum.expired
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_957
--21.6 Base Types

BACnetTimerState ::= ENUMERATED {
 idle (0),
 running (1),
 expired (2)
 }
*/
