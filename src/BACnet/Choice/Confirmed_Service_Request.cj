public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum Confirmed_Service_Request <: IFromUInt8<Confirmed_Service_Request> & IToUInt8 & ToString & IFromString<Confirmed_Service_Request> {
    | acknowledge_alarm // acknowledge-alarm [0] AcknowledgeAlarm-Request,
    | confirmed_cov_notification // confirmed-cov-notification [1] ConfirmedCOVNotification-Request,
    | confirmed_event_notification // confirmed-event-notification [2] ConfirmedEventNotification-Request,
    | get_enrollment_summary // get-enrollment-summary [4] GetEnrollmentSummary-Request,
    | subscribe_cov // subscribe-cov [5] SubscribeCOV-Request,
    | atomic_read_file // atomic-read-file [6] AtomicReadFile-Request,
    | atomic_write_file // atomic-write-file [7] AtomicWriteFile-Request,
    | add_list_element // add-list-element [8] AddListElement-Request,
    | remove_list_element // remove-list-element [9] RemoveListElement-Request,
    | create_object // create-object [10] CreateObject-Request,
    | delete_object // delete-object [11] DeleteObject-Request,
    | read_property // read-property [12] ReadProperty-Request,
    | read_property_conditional // 已在协议中删除(removed)，此处保留旧版本标记作兼容
    | read_property_multiple // read-property-multiple [14] ReadPropertyMultiple-Request,
    | write_property // write-property  [15] WriteProperty-Request,
    | write_property_multiple // write-property-multiple [16] WritePropertyMultiple-Request,
    | device_communication_control // device-communication-control [17] DeviceCommunicationControl-Request,
    | confirmed_private_transfer // confirmed-private-transfer [18] ConfirmedPrivateTransfer-Request,
    | confirmed_text_message // confirmed-text-message [19] ConfirmedTextMessage-Request,
    | reinitialize_device // reinitialize-device [20] ReinitializeDevice-Request,
    | vt_open // vt-open [21] VT-Open-Request,
    | vt_close // vt-close [22] VT-Close-Request,
    | vt_data // vt-data [23] VT-Data-Request
    | authenticate // 已在协议中删除(removed)，此处保留旧版本标记作兼容
    | request_key // 已在协议中删除(removed)，此处保留旧版本标记作兼容
    | read_range // read-range [26] ReadRange-Request,
    | life_safety_operation // life-safety-operation [27] LifeSafetyOperation-Request,
    | subscribe_cov_property // subscribe-cov-property [28] SubscribeCOVProperty-Request,
    | get_event_information // get-event-information [29] GetEventInformation-Request,
    | subscribe_cov_property_multiple // subscribe-cov-property-multiple [30] SubscribeCOVPropertyMultiple-Request,
    | confirmed_cov_notification_multiple // confirmed-cov-notification-multiple [31] ConfirmedCOVNotificationMultiple-Request,
    | confirmed_audit_notification // confirmed-audit-notification [32] ConfirmedAuditNotification-Request,
    | audit_log_query // audit-log-query [33] AuditLogQuery-Request,
    | reserved(UInt8) // 协议中保留(reserved)但未定义的兼容值
    | remove(UInt8) // 协议中已删除(removed)且无旧版本标记的兼容值

    public static func fromUInt8(tag: UInt8): Confirmed_Service_Request {
        match (tag) {
            case 0 => Confirmed_Service_Request.acknowledge_alarm
            case 1 => Confirmed_Service_Request.confirmed_cov_notification
            case 2 => Confirmed_Service_Request.confirmed_event_notification
            case 4 => Confirmed_Service_Request.get_enrollment_summary
            case 5 => Confirmed_Service_Request.subscribe_cov
            case 6 => Confirmed_Service_Request.atomic_read_file
            case 7 => Confirmed_Service_Request.atomic_write_file
            case 8 => Confirmed_Service_Request.add_list_element
            case 9 => Confirmed_Service_Request.remove_list_element
            case 10 => Confirmed_Service_Request.create_object
            case 11 => Confirmed_Service_Request.delete_object
            case 12 => Confirmed_Service_Request.read_property
            case 13 => Confirmed_Service_Request.read_property_conditional
            case 14 => Confirmed_Service_Request.read_property_multiple
            case 15 => Confirmed_Service_Request.write_property
            case 16 => Confirmed_Service_Request.write_property_multiple
            case 17 => Confirmed_Service_Request.device_communication_control
            case 18 => Confirmed_Service_Request.confirmed_private_transfer
            case 19 => Confirmed_Service_Request.confirmed_text_message
            case 20 => Confirmed_Service_Request.reinitialize_device
            case 21 => Confirmed_Service_Request.vt_open
            case 22 => Confirmed_Service_Request.vt_close
            case 23 => Confirmed_Service_Request.vt_data
            case 24 => Confirmed_Service_Request.authenticate
            case 25 => Confirmed_Service_Request.request_key
            case 26 => Confirmed_Service_Request.read_range
            case 27 => Confirmed_Service_Request.life_safety_operation
            case 28 => Confirmed_Service_Request.subscribe_cov_property
            case 29 => Confirmed_Service_Request.get_event_information
            case 30 => Confirmed_Service_Request.subscribe_cov_property_multiple
            case 31 => Confirmed_Service_Request.confirmed_cov_notification_multiple
            case 32 => Confirmed_Service_Request.confirmed_audit_notification
            case 33 => Confirmed_Service_Request.audit_log_query
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case Confirmed_Service_Request.acknowledge_alarm => 0
            case Confirmed_Service_Request.confirmed_cov_notification => 1
            case Confirmed_Service_Request.confirmed_event_notification => 2
            case Confirmed_Service_Request.get_enrollment_summary => 4
            case Confirmed_Service_Request.subscribe_cov => 5
            case Confirmed_Service_Request.atomic_read_file => 6
            case Confirmed_Service_Request.atomic_write_file => 7
            case Confirmed_Service_Request.add_list_element => 8
            case Confirmed_Service_Request.remove_list_element => 9
            case Confirmed_Service_Request.create_object => 10
            case Confirmed_Service_Request.delete_object => 11
            case Confirmed_Service_Request.read_property => 12
            case Confirmed_Service_Request.read_property_conditional => 13
            case Confirmed_Service_Request.read_property_multiple => 14
            case Confirmed_Service_Request.write_property => 15
            case Confirmed_Service_Request.write_property_multiple => 16
            case Confirmed_Service_Request.device_communication_control => 17
            case Confirmed_Service_Request.confirmed_private_transfer => 18
            case Confirmed_Service_Request.confirmed_text_message => 19
            case Confirmed_Service_Request.reinitialize_device => 20
            case Confirmed_Service_Request.vt_open => 21
            case Confirmed_Service_Request.vt_close => 22
            case Confirmed_Service_Request.vt_data => 23
            case Confirmed_Service_Request.authenticate => 24
            case Confirmed_Service_Request.request_key => 25
            case Confirmed_Service_Request.read_range => 26
            case Confirmed_Service_Request.life_safety_operation => 27
            case Confirmed_Service_Request.subscribe_cov_property => 28
            case Confirmed_Service_Request.get_event_information => 29
            case Confirmed_Service_Request.subscribe_cov_property_multiple => 30
            case Confirmed_Service_Request.confirmed_cov_notification_multiple => 31
            case Confirmed_Service_Request.confirmed_audit_notification => 32
            case Confirmed_Service_Request.audit_log_query => 33
            case Confirmed_Service_Request.reserved(x) => x
            case Confirmed_Service_Request.remove(x) => x
        }
    }

    public func toString(): String {
        match (this) {
            case Confirmed_Service_Request.acknowledge_alarm => "acknowledge_alarm"
            case Confirmed_Service_Request.confirmed_cov_notification => "confirmed_cov_notification"
            case Confirmed_Service_Request.confirmed_event_notification => "confirmed_event_notification"
            case Confirmed_Service_Request.get_enrollment_summary => "get_enrollment_summary"
            case Confirmed_Service_Request.subscribe_cov => "subscribe_cov"
            case Confirmed_Service_Request.atomic_read_file => "atomic_read_file"
            case Confirmed_Service_Request.atomic_write_file => "atomic_write_file"
            case Confirmed_Service_Request.add_list_element => "add_list_element"
            case Confirmed_Service_Request.remove_list_element => "remove_list_element"
            case Confirmed_Service_Request.create_object => "create_object"
            case Confirmed_Service_Request.delete_object => "delete_object"
            case Confirmed_Service_Request.read_property => "read_property"
            case Confirmed_Service_Request.read_property_conditional => "read_property_conditional"
            case Confirmed_Service_Request.read_property_multiple => "read_property_multiple"
            case Confirmed_Service_Request.write_property => "write_property"
            case Confirmed_Service_Request.write_property_multiple => "write_property_multiple"
            case Confirmed_Service_Request.device_communication_control => "device_communication_control"
            case Confirmed_Service_Request.confirmed_private_transfer => "confirmed_private_transfer"
            case Confirmed_Service_Request.confirmed_text_message => "confirmed_text_message"
            case Confirmed_Service_Request.reinitialize_device => "reinitialize_device"
            case Confirmed_Service_Request.vt_open => "vt_open"
            case Confirmed_Service_Request.vt_close => "vt_close"
            case Confirmed_Service_Request.vt_data => "vt_data"
            case Confirmed_Service_Request.authenticate => "authenticate"
            case Confirmed_Service_Request.request_key => "request_key"
            case Confirmed_Service_Request.read_range => "read_range"
            case Confirmed_Service_Request.life_safety_operation => "life_safety_operation"
            case Confirmed_Service_Request.subscribe_cov_property => "subscribe_cov_property"
            case Confirmed_Service_Request.get_event_information => "get_event_information"
            case Confirmed_Service_Request.subscribe_cov_property_multiple => "subscribe_cov_property_multiple"
            case Confirmed_Service_Request.confirmed_cov_notification_multiple => "confirmed_cov_notification_multiple"
            case Confirmed_Service_Request.confirmed_audit_notification => "confirmed_audit_notification"
            case Confirmed_Service_Request.audit_log_query => "audit_log_query"
            case Confirmed_Service_Request.reserved(x) => "reserved_${x}"
            case Confirmed_Service_Request.remove(x) => "remove_${x}"
        }
    }

    public static func fromString(arg_str: String): Confirmed_Service_Request {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "acknowledge_alarm" => Confirmed_Service_Request.acknowledge_alarm
            case "confirmed_cov_notification" => Confirmed_Service_Request.confirmed_cov_notification
            case "confirmed_event_notification" => Confirmed_Service_Request.confirmed_event_notification
            case "get_enrollment_summary" => Confirmed_Service_Request.get_enrollment_summary
            case "subscribe_cov" => Confirmed_Service_Request.subscribe_cov
            case "atomic_read_file" => Confirmed_Service_Request.atomic_read_file
            case "atomic_write_file" => Confirmed_Service_Request.atomic_write_file
            case "add_list_element" => Confirmed_Service_Request.add_list_element
            case "remove_list_element" => Confirmed_Service_Request.remove_list_element
            case "create_object" => Confirmed_Service_Request.create_object
            case "delete_object" => Confirmed_Service_Request.delete_object
            case "read_property" => Confirmed_Service_Request.read_property
            case "read_property_conditional" => Confirmed_Service_Request.read_property_conditional
            case "read_property_multiple" => Confirmed_Service_Request.read_property_multiple
            case "write_property" => Confirmed_Service_Request.write_property
            case "write_property_multiple" => Confirmed_Service_Request.write_property_multiple
            case "device_communication_control" => Confirmed_Service_Request.device_communication_control
            case "confirmed_private_transfer" => Confirmed_Service_Request.confirmed_private_transfer
            case "confirmed_text_message" => Confirmed_Service_Request.confirmed_text_message
            case "reinitialize_device" => Confirmed_Service_Request.reinitialize_device
            case "vt_open" => Confirmed_Service_Request.vt_open
            case "vt_close" => Confirmed_Service_Request.vt_close
            case "vt_data" => Confirmed_Service_Request.vt_data
            case "authenticate" => Confirmed_Service_Request.authenticate
            case "request_key" => Confirmed_Service_Request.request_key
            case "read_range" => Confirmed_Service_Request.read_range
            case "life_safety_operation" => Confirmed_Service_Request.life_safety_operation
            case "subscribe_cov_property" => Confirmed_Service_Request.subscribe_cov_property
            case "get_event_information" => Confirmed_Service_Request.get_event_information
            case "subscribe_cov_property_multiple" => Confirmed_Service_Request.subscribe_cov_property_multiple
            case "confirmed_cov_notification_multiple" => Confirmed_Service_Request.confirmed_cov_notification_multiple
            case "confirmed_audit_notification" => Confirmed_Service_Request.confirmed_audit_notification
            case "audit_log_query" => Confirmed_Service_Request.audit_log_query
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt8.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => Confirmed_Service_Request.reserved(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _r where _r.startsWith("remove_") =>
                let _numStr = _r.removePrefix("remove_")
                try {
                    let _num_Option = UInt8.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => Confirmed_Service_Request.remove(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_869
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnet-Confirmed-Service-Request ::= CHOICE { -- Alarm and Event Services
 acknowledge-alarm [0] AcknowledgeAlarm-Request,
 confirmed-cov-notification [1] ConfirmedCOVNotification-Request,
 confirmed-cov-notification-multiple [31] ConfirmedCOVNotificationMultiple-Request,
 confirmed-event-notification [2] ConfirmedEventNotification-Request,
 -- get-alarm-summary conveys no parameters
 get-enrollment-summary [4] GetEnrollmentSummary-Request,
 get-event-information [29] GetEventInformation-Request,
 life-safety-operation [27] LifeSafetyOperation-Request,
 subscribe-cov [5] SubscribeCOV-Request,
 subscribe-cov-property [28] SubscribeCOVProperty-Request,
 subscribe-cov-property-multiple [30] SubscribeCOVPropertyMultiple-Request,
 confirmed-audit-notification [32] ConfirmedAuditNotification-Request,
 -- File Access Services
 atomic-read-file [6] AtomicReadFile-Request,
 atomic-write-file [7] AtomicWriteFile-Request,
 -- Object Access Services
 add-list-element [8] AddListElement-Request,
 remove-list-element [9] RemoveListElement-Request,
 create-object [10] CreateObject-Request,
 delete-object [11] DeleteObject-Request,
 read-property [12] ReadProperty-Request,
 read-property-multiple [14] ReadPropertyMultiple-Request,
 read-range [26] ReadRange-Request,
 write-property  [15] WriteProperty-Request,
 write-property-multiple [16] WritePropertyMultiple-Request,
 audit-log-query [33] AuditLogQuery-Request,
 -- Remote Device Management Services
 device-communication-control [17] DeviceCommunicationControl-Request,
 confirmed-private-transfer [18] ConfirmedPrivateTransfer-Request,
 confirmed-text-message [19] ConfirmedTextMessage-Request,
 reinitialize-device [20] ReinitializeDevice-Request,
 -- Virtual Terminal Services
 vt-open [21] VT-Open-Request,
 vt-close [22] VT-Close-Request,
 vt-data [23] VT-Data-Request
 -- Removed Services
 -- formerly: authenticate [24] removed in version 1 revision 11
 -- formerly: request-key [25] removed in version 1 revision 11
 -- formerly: read-property-conditional  [13] removed in version 1 revision 12
 -- Services added after 1995
 -- read-range [26] see Object Access Services
 -- life-safety-operation [27] see Alarm and Event Services
 -- subscribe-cov-property [28] see Alarm and Event Services
 -- get-event-information [29] see Alarm and Event Services
 -- Services added after 2012
 -- subscribe-cov-property-multiple [30]  see Alarm and Event Services
 -- confirmed-cov-notification-multiple [31]  see Alarm and Event Services
 -- Services added after 2016
 -- confirmed-audit-notifications [32]  see Alarm and Event Services
 -- audit-log-query [33]  see Object Access Services
 } -- Context-specific tags 0..33 are NOT used in the encoding. The tag number is transferred as the service-choice parameter 
 -- in the BACnet-Confirmed-Request-PDU. 
 -- 
 -- Other services will be added as they are defined. All choice values in this production are reserved for definition by 
 -- ASHRAE. Proprietary extensions are made by using the ConfirmedPrivateTransfer service. See Clause 23.
*/
