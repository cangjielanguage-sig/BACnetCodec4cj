public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum ConfirmedService_Enum <: IFromUInt32<ConfirmedService_Enum> & IToUInt32 & ToString & IFromString<ConfirmedService_Enum> {
    | acknowledge_alarm // (0)
    | confirmed_cov_notification // (1)
    | confirmed_event_notification // (2)
    | get_alarm_summary // (3)
    | get_enrollment_summary // (4)
    | subscribe_cov // (5)
    | atomic_read_file // (6)
    | atomic_write_file // (7)
    | add_list_element // (8)
    | remove_list_element // (9)
    | create_object // (10)
    | delete_object // (11)
    | read_property // (12)
    | read_property_conditional // 已在协议中删除(removed)，此处保留旧版本标记作兼容
    | read_property_multiple // (14)
    | write_property // (15)
    | write_property_multiple // (16)
    | device_communication_control // (17)
    | confirmed_private_transfer // (18)
    | confirmed_text_message // (19)
    | reinitialize_device // (20)
    | vt_open // (21)
    | vt_close // (22)
    | vt_data // (23)
    | authenticate // 已在协议中删除(removed)，此处保留旧版本标记作兼容
    | request_key // 已在协议中删除(removed)，此处保留旧版本标记作兼容
    | read_range // (26)
    | life_safety_operation // (27)
    | subscribe_cov_property // (28)
    | get_event_information // (29)
    | subscribe_cov_property_multiple // (30)
    | confirmed_cov_notification_multiple // (31)
    | confirmed_audit_notification // (32)
    | audit_log_query // (33)

    public static func fromUInt32(arg_tag: UInt32): ConfirmedService_Enum {
        match (arg_tag) {
            case 0 => ConfirmedService_Enum.acknowledge_alarm
            case 1 => ConfirmedService_Enum.confirmed_cov_notification
            case 2 => ConfirmedService_Enum.confirmed_event_notification
            case 3 => ConfirmedService_Enum.get_alarm_summary
            case 4 => ConfirmedService_Enum.get_enrollment_summary
            case 5 => ConfirmedService_Enum.subscribe_cov
            case 6 => ConfirmedService_Enum.atomic_read_file
            case 7 => ConfirmedService_Enum.atomic_write_file
            case 8 => ConfirmedService_Enum.add_list_element
            case 9 => ConfirmedService_Enum.remove_list_element
            case 10 => ConfirmedService_Enum.create_object
            case 11 => ConfirmedService_Enum.delete_object
            case 12 => ConfirmedService_Enum.read_property
            case 13 => ConfirmedService_Enum.read_property_conditional
            case 14 => ConfirmedService_Enum.read_property_multiple
            case 15 => ConfirmedService_Enum.write_property
            case 16 => ConfirmedService_Enum.write_property_multiple
            case 17 => ConfirmedService_Enum.device_communication_control
            case 18 => ConfirmedService_Enum.confirmed_private_transfer
            case 19 => ConfirmedService_Enum.confirmed_text_message
            case 20 => ConfirmedService_Enum.reinitialize_device
            case 21 => ConfirmedService_Enum.vt_open
            case 22 => ConfirmedService_Enum.vt_close
            case 23 => ConfirmedService_Enum.vt_data
            case 24 => ConfirmedService_Enum.authenticate
            case 25 => ConfirmedService_Enum.request_key
            case 26 => ConfirmedService_Enum.read_range
            case 27 => ConfirmedService_Enum.life_safety_operation
            case 28 => ConfirmedService_Enum.subscribe_cov_property
            case 29 => ConfirmedService_Enum.get_event_information
            case 30 => ConfirmedService_Enum.subscribe_cov_property_multiple
            case 31 => ConfirmedService_Enum.confirmed_cov_notification_multiple
            case 32 => ConfirmedService_Enum.confirmed_audit_notification
            case 33 => ConfirmedService_Enum.audit_log_query
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case ConfirmedService_Enum.acknowledge_alarm => 0
            case ConfirmedService_Enum.confirmed_cov_notification => 1
            case ConfirmedService_Enum.confirmed_event_notification => 2
            case ConfirmedService_Enum.get_alarm_summary => 3
            case ConfirmedService_Enum.get_enrollment_summary => 4
            case ConfirmedService_Enum.subscribe_cov => 5
            case ConfirmedService_Enum.atomic_read_file => 6
            case ConfirmedService_Enum.atomic_write_file => 7
            case ConfirmedService_Enum.add_list_element => 8
            case ConfirmedService_Enum.remove_list_element => 9
            case ConfirmedService_Enum.create_object => 10
            case ConfirmedService_Enum.delete_object => 11
            case ConfirmedService_Enum.read_property => 12
            case ConfirmedService_Enum.read_property_conditional => 13
            case ConfirmedService_Enum.read_property_multiple => 14
            case ConfirmedService_Enum.write_property => 15
            case ConfirmedService_Enum.write_property_multiple => 16
            case ConfirmedService_Enum.device_communication_control => 17
            case ConfirmedService_Enum.confirmed_private_transfer => 18
            case ConfirmedService_Enum.confirmed_text_message => 19
            case ConfirmedService_Enum.reinitialize_device => 20
            case ConfirmedService_Enum.vt_open => 21
            case ConfirmedService_Enum.vt_close => 22
            case ConfirmedService_Enum.vt_data => 23
            case ConfirmedService_Enum.authenticate => 24
            case ConfirmedService_Enum.request_key => 25
            case ConfirmedService_Enum.read_range => 26
            case ConfirmedService_Enum.life_safety_operation => 27
            case ConfirmedService_Enum.subscribe_cov_property => 28
            case ConfirmedService_Enum.get_event_information => 29
            case ConfirmedService_Enum.subscribe_cov_property_multiple => 30
            case ConfirmedService_Enum.confirmed_cov_notification_multiple => 31
            case ConfirmedService_Enum.confirmed_audit_notification => 32
            case ConfirmedService_Enum.audit_log_query => 33
        }
    }

    public func toString(): String {
        match (this) {
            case ConfirmedService_Enum.acknowledge_alarm => "acknowledge_alarm"
            case ConfirmedService_Enum.confirmed_cov_notification => "confirmed_cov_notification"
            case ConfirmedService_Enum.confirmed_event_notification => "confirmed_event_notification"
            case ConfirmedService_Enum.get_alarm_summary => "get_alarm_summary"
            case ConfirmedService_Enum.get_enrollment_summary => "get_enrollment_summary"
            case ConfirmedService_Enum.subscribe_cov => "subscribe_cov"
            case ConfirmedService_Enum.atomic_read_file => "atomic_read_file"
            case ConfirmedService_Enum.atomic_write_file => "atomic_write_file"
            case ConfirmedService_Enum.add_list_element => "add_list_element"
            case ConfirmedService_Enum.remove_list_element => "remove_list_element"
            case ConfirmedService_Enum.create_object => "create_object"
            case ConfirmedService_Enum.delete_object => "delete_object"
            case ConfirmedService_Enum.read_property => "read_property"
            case ConfirmedService_Enum.read_property_conditional => "read_property_conditional"
            case ConfirmedService_Enum.read_property_multiple => "read_property_multiple"
            case ConfirmedService_Enum.write_property => "write_property"
            case ConfirmedService_Enum.write_property_multiple => "write_property_multiple"
            case ConfirmedService_Enum.device_communication_control => "device_communication_control"
            case ConfirmedService_Enum.confirmed_private_transfer => "confirmed_private_transfer"
            case ConfirmedService_Enum.confirmed_text_message => "confirmed_text_message"
            case ConfirmedService_Enum.reinitialize_device => "reinitialize_device"
            case ConfirmedService_Enum.vt_open => "vt_open"
            case ConfirmedService_Enum.vt_close => "vt_close"
            case ConfirmedService_Enum.vt_data => "vt_data"
            case ConfirmedService_Enum.authenticate => "authenticate"
            case ConfirmedService_Enum.request_key => "request_key"
            case ConfirmedService_Enum.read_range => "read_range"
            case ConfirmedService_Enum.life_safety_operation => "life_safety_operation"
            case ConfirmedService_Enum.subscribe_cov_property => "subscribe_cov_property"
            case ConfirmedService_Enum.get_event_information => "get_event_information"
            case ConfirmedService_Enum.subscribe_cov_property_multiple => "subscribe_cov_property_multiple"
            case ConfirmedService_Enum.confirmed_cov_notification_multiple => "confirmed_cov_notification_multiple"
            case ConfirmedService_Enum.confirmed_audit_notification => "confirmed_audit_notification"
            case ConfirmedService_Enum.audit_log_query => "audit_log_query"
        }
    }

    public static func fromString(arg_str: String): ConfirmedService_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "acknowledge_alarm" => ConfirmedService_Enum.acknowledge_alarm
            case "confirmed_cov_notification" => ConfirmedService_Enum.confirmed_cov_notification
            case "confirmed_event_notification" => ConfirmedService_Enum.confirmed_event_notification
            case "get_alarm_summary" => ConfirmedService_Enum.get_alarm_summary
            case "get_enrollment_summary" => ConfirmedService_Enum.get_enrollment_summary
            case "subscribe_cov" => ConfirmedService_Enum.subscribe_cov
            case "atomic_read_file" => ConfirmedService_Enum.atomic_read_file
            case "atomic_write_file" => ConfirmedService_Enum.atomic_write_file
            case "add_list_element" => ConfirmedService_Enum.add_list_element
            case "remove_list_element" => ConfirmedService_Enum.remove_list_element
            case "create_object" => ConfirmedService_Enum.create_object
            case "delete_object" => ConfirmedService_Enum.delete_object
            case "read_property" => ConfirmedService_Enum.read_property
            case "read_property_conditional" => ConfirmedService_Enum.read_property_conditional
            case "read_property_multiple" => ConfirmedService_Enum.read_property_multiple
            case "write_property" => ConfirmedService_Enum.write_property
            case "write_property_multiple" => ConfirmedService_Enum.write_property_multiple
            case "device_communication_control" => ConfirmedService_Enum.device_communication_control
            case "confirmed_private_transfer" => ConfirmedService_Enum.confirmed_private_transfer
            case "confirmed_text_message" => ConfirmedService_Enum.confirmed_text_message
            case "reinitialize_device" => ConfirmedService_Enum.reinitialize_device
            case "vt_open" => ConfirmedService_Enum.vt_open
            case "vt_close" => ConfirmedService_Enum.vt_close
            case "vt_data" => ConfirmedService_Enum.vt_data
            case "authenticate" => ConfirmedService_Enum.authenticate
            case "request_key" => ConfirmedService_Enum.request_key
            case "read_range" => ConfirmedService_Enum.read_range
            case "life_safety_operation" => ConfirmedService_Enum.life_safety_operation
            case "subscribe_cov_property" => ConfirmedService_Enum.subscribe_cov_property
            case "get_event_information" => ConfirmedService_Enum.get_event_information
            case "subscribe_cov_property_multiple" => ConfirmedService_Enum.subscribe_cov_property_multiple
            case "confirmed_cov_notification_multiple" => ConfirmedService_Enum.confirmed_cov_notification_multiple
            case "confirmed_audit_notification" => ConfirmedService_Enum.confirmed_audit_notification
            case "audit_log_query" => ConfirmedService_Enum.audit_log_query
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_868
--21.2 Confirmed Service Productions

BACnetConfirmedServiceChoice ::= ENUMERATED { -- Alarm and Event Services
 acknowledge-alarm (0),
 confirmed-audit-notification (32),
 confirmed-cov-notification (1),
 confirmed-cov-notification-multiple (31),
 confirmed-event-notification (2),
 get-alarm-summary (3),
 get-enrollment-summary (4),
 get-event-information (29),
 life-safety-operation (27),
 subscribe-cov (5),
 subscribe-cov-property (28),
 subscribe-cov-property-multiple (30),
 -- File Access Services
 atomic-read-file (6),
 atomic-write-file (7),
 -- Object Access Services
 add-list-element (8),
 remove-list-element (9),
 create-object (10),
 delete-object (11),
 read-property (12),
 read-property-multiple (14),
 read-range (26),
 write-property (15),
 write-property-multiple (16),
 audit-log-query (33),
 -- Remote Device Management Services
 device-communication-control (17),
 confirmed-private-transfer (18),
 confirmed-text-message (19),
 reinitialize-device (20),
 -- Virtual Terminal Services
 vt-open (21),
 vt-close (22),
 vt-data (23)
 -- Removed Services
 -- formerly: authenticate (24) removed in version 1 revision 11
 -- formerly: request-key (25) removed in version 1 revision 11
 -- formerly: read-property-conditional (13) removed in version 1 revision 12
 -- Services added after 1995
 -- read-range (26) see Object Access Services
 -- life-safety-operation (27) see Alarm and Event Services
 -- subscribe-cov-property (28) see Alarm and Event Services
 -- get-event-information (29) see Alarm and Event Services
 -- Services added after 2012
 -- subscribe-cov-property-multiple (30) see Alarm and Event Services
 -- confirmed-cov-notification-multiple (31) see Alarm and Event Services
 -- Services added after 2016
 -- confirmed-audit-notification (32)  see Alarm and Event Services
 -- audit-log-query (33)  see Object Access Services
 }
-- Other services to be added as they are defined. All enumeration values in this production are reserved for definition by -- ASHRAE. Proprietary extensions are made by using the ConfirmedPrivateTransfer or UnconfirmedPrivateTransfer -- services. See Clause 23.
--ISO_16484_5_2022_Page_869
*/
