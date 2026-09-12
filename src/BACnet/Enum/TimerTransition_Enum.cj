public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum TimerTransition_Enum <: IFromUInt32<TimerTransition_Enum> & IToUInt32 & ToString & IFromString<TimerTransition_Enum> {
    | none // (0)
    | idle_to_running // (1)
    | running_to_idle // (2)
    | running_to_running // (3)
    | running_to_expired // (4)
    | forced_to_expired // (5)
    | expired_to_idle // (6)
    | expired_to_running // (7)

    public static func fromUInt32(arg_tag: UInt32): TimerTransition_Enum {
        match (arg_tag) {
            case 0 => TimerTransition_Enum.none
            case 1 => TimerTransition_Enum.idle_to_running
            case 2 => TimerTransition_Enum.running_to_idle
            case 3 => TimerTransition_Enum.running_to_running
            case 4 => TimerTransition_Enum.running_to_expired
            case 5 => TimerTransition_Enum.forced_to_expired
            case 6 => TimerTransition_Enum.expired_to_idle
            case 7 => TimerTransition_Enum.expired_to_running
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case TimerTransition_Enum.none => 0
            case TimerTransition_Enum.idle_to_running => 1
            case TimerTransition_Enum.running_to_idle => 2
            case TimerTransition_Enum.running_to_running => 3
            case TimerTransition_Enum.running_to_expired => 4
            case TimerTransition_Enum.forced_to_expired => 5
            case TimerTransition_Enum.expired_to_idle => 6
            case TimerTransition_Enum.expired_to_running => 7
        }
    }

    public func toString(): String {
        match (this) {
            case TimerTransition_Enum.none => "none"
            case TimerTransition_Enum.idle_to_running => "idle_to_running"
            case TimerTransition_Enum.running_to_idle => "running_to_idle"
            case TimerTransition_Enum.running_to_running => "running_to_running"
            case TimerTransition_Enum.running_to_expired => "running_to_expired"
            case TimerTransition_Enum.forced_to_expired => "forced_to_expired"
            case TimerTransition_Enum.expired_to_idle => "expired_to_idle"
            case TimerTransition_Enum.expired_to_running => "expired_to_running"
        }
    }

    public static func fromString(arg_str: String): TimerTransition_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "none" => TimerTransition_Enum.none
            case "idle_to_running" => TimerTransition_Enum.idle_to_running
            case "running_to_idle" => TimerTransition_Enum.running_to_idle
            case "running_to_running" => TimerTransition_Enum.running_to_running
            case "running_to_expired" => TimerTransition_Enum.running_to_expired
            case "forced_to_expired" => TimerTransition_Enum.forced_to_expired
            case "expired_to_idle" => TimerTransition_Enum.expired_to_idle
            case "expired_to_running" => TimerTransition_Enum.expired_to_running
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_957
--21.6 Base Types

BACnetTimerTransition ::= ENUMERATED {
 none (0),
 idle-to-running (1),
 running-to-idle (2),
 running-to-running (3),
 running-to-expired (4),
 forced-to-expired (5),
 expired-to-idle (6),
 expired-to-running (7)
 }
*/
