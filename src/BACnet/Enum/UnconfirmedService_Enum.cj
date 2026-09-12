public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum UnconfirmedService_Enum <: IFromUInt32<UnconfirmedService_Enum> & IToUInt32 & ToString & IFromString<UnconfirmedService_Enum> {
    | i_am // (0)
    | i_have // (1)
    | unconfirmed_cov_notification // (2)
    | unconfirmed_event_notification // (3)
    | unconfirmed_private_transfer // (4)
    | unconfirmed_text_message // (5)
    | time_synchronization // (6)
    | who_has // (7)
    | who_is // (8)
    | utc_time_synchronization // (9)
    | write_group // (10)
    | unconfirmed_cov_notification_multiple // (11)
    | unconfirmed_audit_notification // (12)
    | who_am_i // (13)
    | you_are // (14)

    public static func fromUInt32(arg_tag: UInt32): UnconfirmedService_Enum {
        match (arg_tag) {
            case 0 => UnconfirmedService_Enum.i_am
            case 1 => UnconfirmedService_Enum.i_have
            case 2 => UnconfirmedService_Enum.unconfirmed_cov_notification
            case 3 => UnconfirmedService_Enum.unconfirmed_event_notification
            case 4 => UnconfirmedService_Enum.unconfirmed_private_transfer
            case 5 => UnconfirmedService_Enum.unconfirmed_text_message
            case 6 => UnconfirmedService_Enum.time_synchronization
            case 7 => UnconfirmedService_Enum.who_has
            case 8 => UnconfirmedService_Enum.who_is
            case 9 => UnconfirmedService_Enum.utc_time_synchronization
            case 10 => UnconfirmedService_Enum.write_group
            case 11 => UnconfirmedService_Enum.unconfirmed_cov_notification_multiple
            case 12 => UnconfirmedService_Enum.unconfirmed_audit_notification
            case 13 => UnconfirmedService_Enum.who_am_i
            case 14 => UnconfirmedService_Enum.you_are
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case UnconfirmedService_Enum.i_am => 0
            case UnconfirmedService_Enum.i_have => 1
            case UnconfirmedService_Enum.unconfirmed_cov_notification => 2
            case UnconfirmedService_Enum.unconfirmed_event_notification => 3
            case UnconfirmedService_Enum.unconfirmed_private_transfer => 4
            case UnconfirmedService_Enum.unconfirmed_text_message => 5
            case UnconfirmedService_Enum.time_synchronization => 6
            case UnconfirmedService_Enum.who_has => 7
            case UnconfirmedService_Enum.who_is => 8
            case UnconfirmedService_Enum.utc_time_synchronization => 9
            case UnconfirmedService_Enum.write_group => 10
            case UnconfirmedService_Enum.unconfirmed_cov_notification_multiple => 11
            case UnconfirmedService_Enum.unconfirmed_audit_notification => 12
            case UnconfirmedService_Enum.who_am_i => 13
            case UnconfirmedService_Enum.you_are => 14
        }
    }

    public func toString(): String {
        match (this) {
            case UnconfirmedService_Enum.i_am => "i_am"
            case UnconfirmedService_Enum.i_have => "i_have"
            case UnconfirmedService_Enum.unconfirmed_cov_notification => "unconfirmed_cov_notification"
            case UnconfirmedService_Enum.unconfirmed_event_notification => "unconfirmed_event_notification"
            case UnconfirmedService_Enum.unconfirmed_private_transfer => "unconfirmed_private_transfer"
            case UnconfirmedService_Enum.unconfirmed_text_message => "unconfirmed_text_message"
            case UnconfirmedService_Enum.time_synchronization => "time_synchronization"
            case UnconfirmedService_Enum.who_has => "who_has"
            case UnconfirmedService_Enum.who_is => "who_is"
            case UnconfirmedService_Enum.utc_time_synchronization => "utc_time_synchronization"
            case UnconfirmedService_Enum.write_group => "write_group"
            case UnconfirmedService_Enum.unconfirmed_cov_notification_multiple => "unconfirmed_cov_notification_multiple"
            case UnconfirmedService_Enum.unconfirmed_audit_notification => "unconfirmed_audit_notification"
            case UnconfirmedService_Enum.who_am_i => "who_am_i"
            case UnconfirmedService_Enum.you_are => "you_are"
        }
    }

    public static func fromString(arg_str: String): UnconfirmedService_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "i_am" => UnconfirmedService_Enum.i_am
            case "i_have" => UnconfirmedService_Enum.i_have
            case "unconfirmed_cov_notification" => UnconfirmedService_Enum.unconfirmed_cov_notification
            case "unconfirmed_event_notification" => UnconfirmedService_Enum.unconfirmed_event_notification
            case "unconfirmed_private_transfer" => UnconfirmedService_Enum.unconfirmed_private_transfer
            case "unconfirmed_text_message" => UnconfirmedService_Enum.unconfirmed_text_message
            case "time_synchronization" => UnconfirmedService_Enum.time_synchronization
            case "who_has" => UnconfirmedService_Enum.who_has
            case "who_is" => UnconfirmedService_Enum.who_is
            case "utc_time_synchronization" => UnconfirmedService_Enum.utc_time_synchronization
            case "write_group" => UnconfirmedService_Enum.write_group
            case "unconfirmed_cov_notification_multiple" => UnconfirmedService_Enum.unconfirmed_cov_notification_multiple
            case "unconfirmed_audit_notification" => UnconfirmedService_Enum.unconfirmed_audit_notification
            case "who_am_i" => UnconfirmedService_Enum.who_am_i
            case "you_are" => UnconfirmedService_Enum.you_are
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_878
--21.3 Unconfirmed Service Productions

BACnetUnconfirmedServiceChoice ::= ENUMERATED {
 i-am (0),
 i-have (1),
 unconfirmed-cov-notification (2),
 unconfirmed-event-notification (3),
 unconfirmed-private-transfer (4),
 unconfirmed-text-message (5),
 time-synchronization (6),
 who-has (7),
 who-is (8),
 utc-time-synchronization (9),
 write-group (10),
 unconfirmed-cov-notification-multiple (11),
 unconfirmed-audit-notification (12),
 who-Am-I (13),
 you-Are (14)
 } -- Other services to be added as they are defined. All choice values in this production are reserved for definition by -- ASHRAE. Proprietary extensions are made by using the UnconfirmedPrivateTransfer service. See Clause 23.
*/
