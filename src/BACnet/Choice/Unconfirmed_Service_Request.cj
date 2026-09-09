public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum Unconfirmed_Service_Request <: IFromUInt8<Unconfirmed_Service_Request> & IToUInt8 & ToString & IFromString<Unconfirmed_Service_Request> {
    | i_am // i-am [0] I-Am-Request,
    | i_have // i-have [1] I-Have-Request,
    | unconfirmed_cov_notification // unconfirmed-cov-notification [2] UnconfirmedCOVNotification-Request,
    | unconfirmed_event_notification // unconfirmed-event-notification [3] UnconfirmedEventNotification-Request,
    | unconfirmed_private_transfer // unconfirmed-private-transfer [4] UnconfirmedPrivateTransfer-Request,
    | unconfirmed_text_message // unconfirmed-text-message [5] UnconfirmedTextMessage-Request,
    | time_synchronization // time-synchronization [6] TimeSynchronization-Request,
    | who_has // who-has [7] Who-Has-Request,
    | who_is // who-is [8] Who-Is-Request,
    | utc_time_synchronization // utc-time-synchronization [9] UTCTimeSynchronization-Request,
    | write_group // write-group [10] WriteGroup-Request,
    | unconfirmed_cov_notification_multiple // unconfirmed-cov-notification-multiple [11] UnconfirmedCOVNotificationMultiple-Request,
    | unconfirmed_audit_notification // unconfirmed-audit-notification [12] UnconfirmedAuditNotification-Request,
    | who_am_i // who-Am-I [13] Who-Am-I_Request,
    | you_are // you-Are [14] You-Are-Request
    | reserved(UInt8) // 协议中保留(reserved)但未定义的兼容值

    public static func fromUInt8(tag: UInt8): Unconfirmed_Service_Request {
        match (tag) {
            case 0 => Unconfirmed_Service_Request.i_am
            case 1 => Unconfirmed_Service_Request.i_have
            case 2 => Unconfirmed_Service_Request.unconfirmed_cov_notification
            case 3 => Unconfirmed_Service_Request.unconfirmed_event_notification
            case 4 => Unconfirmed_Service_Request.unconfirmed_private_transfer
            case 5 => Unconfirmed_Service_Request.unconfirmed_text_message
            case 6 => Unconfirmed_Service_Request.time_synchronization
            case 7 => Unconfirmed_Service_Request.who_has
            case 8 => Unconfirmed_Service_Request.who_is
            case 9 => Unconfirmed_Service_Request.utc_time_synchronization
            case 10 => Unconfirmed_Service_Request.write_group
            case 11 => Unconfirmed_Service_Request.unconfirmed_cov_notification_multiple
            case 12 => Unconfirmed_Service_Request.unconfirmed_audit_notification
            case 13 => Unconfirmed_Service_Request.who_am_i
            case 14 => Unconfirmed_Service_Request.you_are
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case Unconfirmed_Service_Request.i_am => 0
            case Unconfirmed_Service_Request.i_have => 1
            case Unconfirmed_Service_Request.unconfirmed_cov_notification => 2
            case Unconfirmed_Service_Request.unconfirmed_event_notification => 3
            case Unconfirmed_Service_Request.unconfirmed_private_transfer => 4
            case Unconfirmed_Service_Request.unconfirmed_text_message => 5
            case Unconfirmed_Service_Request.time_synchronization => 6
            case Unconfirmed_Service_Request.who_has => 7
            case Unconfirmed_Service_Request.who_is => 8
            case Unconfirmed_Service_Request.utc_time_synchronization => 9
            case Unconfirmed_Service_Request.write_group => 10
            case Unconfirmed_Service_Request.unconfirmed_cov_notification_multiple => 11
            case Unconfirmed_Service_Request.unconfirmed_audit_notification => 12
            case Unconfirmed_Service_Request.who_am_i => 13
            case Unconfirmed_Service_Request.you_are => 14
            case Unconfirmed_Service_Request.reserved(x) => x
        }
    }

    public func toString(): String {
        match (this) {
            case Unconfirmed_Service_Request.i_am => "i_am"
            case Unconfirmed_Service_Request.i_have => "i_have"
            case Unconfirmed_Service_Request.unconfirmed_cov_notification => "unconfirmed_cov_notification"
            case Unconfirmed_Service_Request.unconfirmed_event_notification => "unconfirmed_event_notification"
            case Unconfirmed_Service_Request.unconfirmed_private_transfer => "unconfirmed_private_transfer"
            case Unconfirmed_Service_Request.unconfirmed_text_message => "unconfirmed_text_message"
            case Unconfirmed_Service_Request.time_synchronization => "time_synchronization"
            case Unconfirmed_Service_Request.who_has => "who_has"
            case Unconfirmed_Service_Request.who_is => "who_is"
            case Unconfirmed_Service_Request.utc_time_synchronization => "utc_time_synchronization"
            case Unconfirmed_Service_Request.write_group => "write_group"
            case Unconfirmed_Service_Request.unconfirmed_cov_notification_multiple => "unconfirmed_cov_notification_multiple"
            case Unconfirmed_Service_Request.unconfirmed_audit_notification => "unconfirmed_audit_notification"
            case Unconfirmed_Service_Request.who_am_i => "who_am_i"
            case Unconfirmed_Service_Request.you_are => "you_are"
            case Unconfirmed_Service_Request.reserved(x) => "reserved_${x}"
        }
    }

    public static func fromString(arg_str: String): Unconfirmed_Service_Request {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "i_am" => Unconfirmed_Service_Request.i_am
            case "i_have" => Unconfirmed_Service_Request.i_have
            case "unconfirmed_cov_notification" => Unconfirmed_Service_Request.unconfirmed_cov_notification
            case "unconfirmed_event_notification" => Unconfirmed_Service_Request.unconfirmed_event_notification
            case "unconfirmed_private_transfer" => Unconfirmed_Service_Request.unconfirmed_private_transfer
            case "unconfirmed_text_message" => Unconfirmed_Service_Request.unconfirmed_text_message
            case "time_synchronization" => Unconfirmed_Service_Request.time_synchronization
            case "who_has" => Unconfirmed_Service_Request.who_has
            case "who_is" => Unconfirmed_Service_Request.who_is
            case "utc_time_synchronization" => Unconfirmed_Service_Request.utc_time_synchronization
            case "write_group" => Unconfirmed_Service_Request.write_group
            case "unconfirmed_cov_notification_multiple" => Unconfirmed_Service_Request.unconfirmed_cov_notification_multiple
            case "unconfirmed_audit_notification" => Unconfirmed_Service_Request.unconfirmed_audit_notification
            case "who_am_i" => Unconfirmed_Service_Request.who_am_i
            case "you_are" => Unconfirmed_Service_Request.you_are
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt8.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => Unconfirmed_Service_Request.reserved(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_878
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnet-Unconfirmed-Service-Request ::= CHOICE {
 i-am [0] I-Am-Request,
 i-have [1] I-Have-Request,
 unconfirmed-cov-notification [2] UnconfirmedCOVNotification-Request,
 unconfirmed-event-notification [3] UnconfirmedEventNotification-Request,
 unconfirmed-private-transfer [4] UnconfirmedPrivateTransfer-Request,
 unconfirmed-text-message [5] UnconfirmedTextMessage-Request,
 time-synchronization [6] TimeSynchronization-Request,
 who-has [7] Who-Has-Request,
 who-is [8] Who-Is-Request,
 utc-time-synchronization [9] UTCTimeSynchronization-Request,
 write-group [10] WriteGroup-Request,
 unconfirmed-cov-notification-multiple [11] UnconfirmedCOVNotificationMultiple-Request,
 unconfirmed-audit-notification [12] UnconfirmedAuditNotification-Request,
 who-Am-I [13] Who-Am-I_Request,
 you-Are [14] You-Are-Request
 } -- Context-specific tags 0..14 are NOT used in the encoding. The tag number is transferred as the service-choice parameter -- in the BACnet-Unconfirmed-Request-PDU. -- -- Other services to be added as they are defined. All choice values in this production are reserved for definition by -- ASHRAE. Proprietary extensions are made by using the UnconfirmedPrivateTransfer service. -- See Clause 23.
*/
