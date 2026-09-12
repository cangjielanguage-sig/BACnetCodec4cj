public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum NotifyType_Enum <: IFromUInt32<NotifyType_Enum> & IToUInt32 & ToString & IFromString<NotifyType_Enum> {
    | alarm // (0)
    | event // (1)
    | ack_notification // (2)

    public static func fromUInt32(arg_tag: UInt32): NotifyType_Enum {
        match (arg_tag) {
            case 0 => NotifyType_Enum.alarm
            case 1 => NotifyType_Enum.event
            case 2 => NotifyType_Enum.ack_notification
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case NotifyType_Enum.alarm => 0
            case NotifyType_Enum.event => 1
            case NotifyType_Enum.ack_notification => 2
        }
    }

    public func toString(): String {
        match (this) {
            case NotifyType_Enum.alarm => "alarm"
            case NotifyType_Enum.event => "event"
            case NotifyType_Enum.ack_notification => "ack_notification"
        }
    }

    public static func fromString(arg_str: String): NotifyType_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "alarm" => NotifyType_Enum.alarm
            case "event" => NotifyType_Enum.event
            case "ack_notification" => NotifyType_Enum.ack_notification
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_928
--21.6 Base Types

BACnetNotifyType ::= ENUMERATED {
 alarm (0),
 event (1),
 ack-notification (2)
 }
*/
