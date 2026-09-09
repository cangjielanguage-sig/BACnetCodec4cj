public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum Error <: IFromUInt8<Error> & IToUInt8 & ToString & IFromString<Error> {
    | acknowledge_alarm // acknowledge-alarm [0] Error,
    | confirmed_cov_notification // confirmed-cov-notification [1] Error,
    | confirmed_event_notification // confirmed-event-notification [2] Error,
    | get_alarm_summary // get-alarm-summary [3] Error,
    | get_enrollment_summary // get-enrollment-summary [4] Error,
    | subscribe_cov // subscribe-cov [5] Error,
    | atomic_read_file // atomic-read-file [6] Error,
    | atomic_write_file // atomic-write-file [7] Error,
    | add_list_element // add-list-element [8] ChangeList-Error,
    | remove_list_element // remove-list-element [9] ChangeList-Error,
    | create_object // create-object [10] CreateObject-Error,
    | delete_object // delete-object [11] Error,
    | read_property // read-property [12] Error,
    | read_property_conditional // 已在协议中删除(removed)，此处保留旧版本标记作兼容
    | read_property_multiple // read-property-multiple [14] Error,
    | write_property // write-property  [15] Error,
    | write_property_multiple // write-property-multiple [16] WritePropertyMultiple-Error,
    | device_communication_control // device-communication-control [17] Error,
    | confirmed_private_transfer // confirmed-private-transfer [18] ConfirmedPrivateTransfer-Error,
    | confirmed_text_message // confirmed-text-message [19] Error,
    | reinitialize_device // reinitialize-device [20] Error,
    | vt_open // vt-open [21] Error,
    | vt_close // vt-close [22] VTClose-Error,
    | vt_data // vt-data [23] Error
    | authenticate // 已在协议中删除(removed)，此处保留旧版本标记作兼容
    | request_key // 已在协议中删除(removed)，此处保留旧版本标记作兼容
    | read_range // read-range [26] Error,
    | life_safety_operation // life-safety-operation [27] Error,
    | subscribe_cov_property // subscribe-cov-property [28] Error,
    | get_event_information // get-event-information [29] Error,
    | subscribe_cov_property_multiple // subscribe-cov-property-multiple [30] SubscribeCOVPropertyMultiple-Error,
    | confirmed_cov_notification_multiple // confirmed-cov-notification-multiple [31] Error,
    | confirmed_audit_notification // confirmed-audit-notification [32] Error,
    | audit_log_query // audit-log-query [33] Error,
    | other // other [127] Error, -- The remaining choices in this production represent the Result(-) parameters -- defined for each confirmed service.
    | reserved(UInt8) // 协议中保留(reserved)但未定义的兼容值
    | remove(UInt8) // 协议中已删除(removed)且无旧版本标记的兼容值

    public static func fromUInt8(tag: UInt8): Error {
        match (tag) {
            case 0 => Error.acknowledge_alarm
            case 1 => Error.confirmed_cov_notification
            case 2 => Error.confirmed_event_notification
            case 3 => Error.get_alarm_summary
            case 4 => Error.get_enrollment_summary
            case 5 => Error.subscribe_cov
            case 6 => Error.atomic_read_file
            case 7 => Error.atomic_write_file
            case 8 => Error.add_list_element
            case 9 => Error.remove_list_element
            case 10 => Error.create_object
            case 11 => Error.delete_object
            case 12 => Error.read_property
            case 13 => Error.read_property_conditional
            case 14 => Error.read_property_multiple
            case 15 => Error.write_property
            case 16 => Error.write_property_multiple
            case 17 => Error.device_communication_control
            case 18 => Error.confirmed_private_transfer
            case 19 => Error.confirmed_text_message
            case 20 => Error.reinitialize_device
            case 21 => Error.vt_open
            case 22 => Error.vt_close
            case 23 => Error.vt_data
            case 24 => Error.authenticate
            case 25 => Error.request_key
            case 26 => Error.read_range
            case 27 => Error.life_safety_operation
            case 28 => Error.subscribe_cov_property
            case 29 => Error.get_event_information
            case 30 => Error.subscribe_cov_property_multiple
            case 31 => Error.confirmed_cov_notification_multiple
            case 32 => Error.confirmed_audit_notification
            case 33 => Error.audit_log_query
            case 127 => Error.other
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case Error.acknowledge_alarm => 0
            case Error.confirmed_cov_notification => 1
            case Error.confirmed_event_notification => 2
            case Error.get_alarm_summary => 3
            case Error.get_enrollment_summary => 4
            case Error.subscribe_cov => 5
            case Error.atomic_read_file => 6
            case Error.atomic_write_file => 7
            case Error.add_list_element => 8
            case Error.remove_list_element => 9
            case Error.create_object => 10
            case Error.delete_object => 11
            case Error.read_property => 12
            case Error.read_property_conditional => 13
            case Error.read_property_multiple => 14
            case Error.write_property => 15
            case Error.write_property_multiple => 16
            case Error.device_communication_control => 17
            case Error.confirmed_private_transfer => 18
            case Error.confirmed_text_message => 19
            case Error.reinitialize_device => 20
            case Error.vt_open => 21
            case Error.vt_close => 22
            case Error.vt_data => 23
            case Error.authenticate => 24
            case Error.request_key => 25
            case Error.read_range => 26
            case Error.life_safety_operation => 27
            case Error.subscribe_cov_property => 28
            case Error.get_event_information => 29
            case Error.subscribe_cov_property_multiple => 30
            case Error.confirmed_cov_notification_multiple => 31
            case Error.confirmed_audit_notification => 32
            case Error.audit_log_query => 33
            case Error.other => 127
            case Error.reserved(x) => x
            case Error.remove(x) => x
        }
    }

    public func toString(): String {
        match (this) {
            case Error.acknowledge_alarm => "acknowledge_alarm"
            case Error.confirmed_cov_notification => "confirmed_cov_notification"
            case Error.confirmed_event_notification => "confirmed_event_notification"
            case Error.get_alarm_summary => "get_alarm_summary"
            case Error.get_enrollment_summary => "get_enrollment_summary"
            case Error.subscribe_cov => "subscribe_cov"
            case Error.atomic_read_file => "atomic_read_file"
            case Error.atomic_write_file => "atomic_write_file"
            case Error.add_list_element => "add_list_element"
            case Error.remove_list_element => "remove_list_element"
            case Error.create_object => "create_object"
            case Error.delete_object => "delete_object"
            case Error.read_property => "read_property"
            case Error.read_property_conditional => "read_property_conditional"
            case Error.read_property_multiple => "read_property_multiple"
            case Error.write_property => "write_property"
            case Error.write_property_multiple => "write_property_multiple"
            case Error.device_communication_control => "device_communication_control"
            case Error.confirmed_private_transfer => "confirmed_private_transfer"
            case Error.confirmed_text_message => "confirmed_text_message"
            case Error.reinitialize_device => "reinitialize_device"
            case Error.vt_open => "vt_open"
            case Error.vt_close => "vt_close"
            case Error.vt_data => "vt_data"
            case Error.authenticate => "authenticate"
            case Error.request_key => "request_key"
            case Error.read_range => "read_range"
            case Error.life_safety_operation => "life_safety_operation"
            case Error.subscribe_cov_property => "subscribe_cov_property"
            case Error.get_event_information => "get_event_information"
            case Error.subscribe_cov_property_multiple => "subscribe_cov_property_multiple"
            case Error.confirmed_cov_notification_multiple => "confirmed_cov_notification_multiple"
            case Error.confirmed_audit_notification => "confirmed_audit_notification"
            case Error.audit_log_query => "audit_log_query"
            case Error.other => "other"
            case Error.reserved(x) => "reserved_${x}"
            case Error.remove(x) => "remove_${x}"
        }
    }

    public static func fromString(arg_str: String): Error {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "acknowledge_alarm" => Error.acknowledge_alarm
            case "confirmed_cov_notification" => Error.confirmed_cov_notification
            case "confirmed_event_notification" => Error.confirmed_event_notification
            case "get_alarm_summary" => Error.get_alarm_summary
            case "get_enrollment_summary" => Error.get_enrollment_summary
            case "subscribe_cov" => Error.subscribe_cov
            case "atomic_read_file" => Error.atomic_read_file
            case "atomic_write_file" => Error.atomic_write_file
            case "add_list_element" => Error.add_list_element
            case "remove_list_element" => Error.remove_list_element
            case "create_object" => Error.create_object
            case "delete_object" => Error.delete_object
            case "read_property" => Error.read_property
            case "read_property_conditional" => Error.read_property_conditional
            case "read_property_multiple" => Error.read_property_multiple
            case "write_property" => Error.write_property
            case "write_property_multiple" => Error.write_property_multiple
            case "device_communication_control" => Error.device_communication_control
            case "confirmed_private_transfer" => Error.confirmed_private_transfer
            case "confirmed_text_message" => Error.confirmed_text_message
            case "reinitialize_device" => Error.reinitialize_device
            case "vt_open" => Error.vt_open
            case "vt_close" => Error.vt_close
            case "vt_data" => Error.vt_data
            case "authenticate" => Error.authenticate
            case "request_key" => Error.request_key
            case "read_range" => Error.read_range
            case "life_safety_operation" => Error.life_safety_operation
            case "subscribe_cov_property" => Error.subscribe_cov_property
            case "get_event_information" => Error.get_event_information
            case "subscribe_cov_property_multiple" => Error.subscribe_cov_property_multiple
            case "confirmed_cov_notification_multiple" => Error.confirmed_cov_notification_multiple
            case "confirmed_audit_notification" => Error.confirmed_audit_notification
            case "audit_log_query" => Error.audit_log_query
            case "other" => Error.other
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt8.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => Error.reserved(x)
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
                        case Some(x) => Error.remove(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_881
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnet-Error ::= CHOICE {
 other [127] Error, -- The remaining choices in this production represent the Result(-) parameters -- defined for each confirmed service.
 -- Alarm and Event Services
 acknowledge-alarm [0] Error,
 confirmed-cov-notification [1] Error,
 confirmed-cov-notification-multiple [31] Error,
 confirmed-event-notification [2] Error,
 get-alarm-summary [3] Error,
 get-enrollment-summary [4] Error,
 get-event-information [29] Error,
 life-safety-operation [27] Error,
 subscribe-cov [5] Error,
 subscribe-cov-property [28] Error,
 subscribe-cov-property-multiple [30] SubscribeCOVPropertyMultiple-Error,
 confirmed-audit-notification [32] Error,
 -- File Access Services
 atomic-read-file [6] Error,
 atomic-write-file [7] Error,
 -- Object Access Services
 add-list-element [8] ChangeList-Error,
 remove-list-element [9] ChangeList-Error,
 create-object [10] CreateObject-Error,
 delete-object [11] Error,
 read-property [12] Error,
 read-property-multiple [14] Error,
 read-range [26] Error,
 write-property  [15] Error,
 write-property-multiple [16] WritePropertyMultiple-Error,
 audit-log-query [33] Error,
 -- Remote Device Management Services
 device-communication-control [17] Error,
 confirmed-private-transfer [18] ConfirmedPrivateTransfer-Error,
 confirmed-text-message [19] Error,
 reinitialize-device [20] Error,
 -- Virtual Terminal Services
 vt-open [21] Error,
 vt-close [22] VTClose-Error,
 vt-data [23] Error
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
 -- subscribe-cov-property-multiple [30] see Alarm and Event Services
 -- confirmed-cov-notification-multiple [31] see Alarm and Event Services
 -- Services added after 2016
 -- confirmed-audit-notification [32] see Alarm and Event Services
 -- audit-log-query [33] see Object Access Services
 } -- Context-specific tags 0..33 and 127 are NOT used in the encoding. The tag number is transferred as the error-choice -- parameter in the BACnet-Error-PDU. -- -- Other services to be added as they are defined. All choice values in this production are reserved for definition by -- ASHRAE. See Clause 23.
*/
