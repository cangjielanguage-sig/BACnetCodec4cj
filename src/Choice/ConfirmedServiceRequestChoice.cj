public package BACnetCodec4cj.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetException.*

public enum ConfirmedServiceRequestChoice <: IFromUInt8<ConfirmedServiceRequestChoice> & IToUInt8 {
    // ==================== Alarm and Event Services ====================
    | Acknowledge_alarm // [0]
    | Confirmed_cov_notification // [1]
    | Confirmed_cov_notification_multiple // [31]
    | Confirmed_event_notification // [2]
    | Get_enrollment_summary // [4]
    | Get_event_information // [29]
    | Life_safety_operation // [27]
    | Subscribe_cov // [5]
    | Subscribe_cov_property // [28]
    | Subscribe_cov_property_multiple // [30]
    | Confirmed_audit_notification // [32]

    // ==================== File Access Services ====================
    | Atomic_read_file // [6]
    | Atomic_write_file // [7]

    // ==================== Object Access Services ====================
    | Add_list_element // [8]
    | Remove_list_element // [9]
    | Create_object // [10]
    | Delete_object // [11]
    | Read_property // [12]
    | Read_property_multiple // [14]
    | Read_range // [26]
    | Write_property // [15]
    | Write_property_multiple // [16]
    | Audit_log_query // [33]

    // ==================== Remote Device Management ====================
    | Device_communication_control // [17]
    | Confirmed_private_transfer // [18]
    | Confirmed_text_message // [19]
    | Reinitialize_device // [20]

    // ==================== Virtual Terminal ====================
    | Vt_open // [21]
    | Vt_close // [22]
    | Vt_data // [23]

    // ==================== Removed Services ====================
    | Authenticate // [24] //已删除服务Removed in v1r11
    | Request_key // [25] //已删除服务Removed in v1r11
    | Read_property_conditional // [13] //已删除服务Removed in v1r12

    public static func fromUInt8(tag: UInt8): ConfirmedServiceRequestChoice {
        match (tag) {
            // Alarm and Event Services
            case 0 => ConfirmedServiceRequestChoice.Acknowledge_alarm
            case 1 => ConfirmedServiceRequestChoice.Confirmed_cov_notification
            case 31 => ConfirmedServiceRequestChoice.Confirmed_cov_notification_multiple
            case 2 => ConfirmedServiceRequestChoice.Confirmed_event_notification
            case 4 => ConfirmedServiceRequestChoice.Get_enrollment_summary
            case 29 => ConfirmedServiceRequestChoice.Get_event_information
            case 27 => ConfirmedServiceRequestChoice.Life_safety_operation
            case 5 => ConfirmedServiceRequestChoice.Subscribe_cov
            case 28 => ConfirmedServiceRequestChoice.Subscribe_cov_property
            case 30 => ConfirmedServiceRequestChoice.Subscribe_cov_property_multiple
            case 32 => ConfirmedServiceRequestChoice.Confirmed_audit_notification

            // File Access Services
            case 6 => ConfirmedServiceRequestChoice.Atomic_read_file
            case 7 => ConfirmedServiceRequestChoice.Atomic_write_file

            // Object Access Services
            case 8 => ConfirmedServiceRequestChoice.Add_list_element
            case 9 => ConfirmedServiceRequestChoice.Remove_list_element
            case 10 => ConfirmedServiceRequestChoice.Create_object
            case 11 => ConfirmedServiceRequestChoice.Delete_object
            case 12 => ConfirmedServiceRequestChoice.Read_property
            case 14 => ConfirmedServiceRequestChoice.Read_property_multiple
            case 26 => ConfirmedServiceRequestChoice.Read_range
            case 15 => ConfirmedServiceRequestChoice.Write_property
            case 16 => ConfirmedServiceRequestChoice.Write_property_multiple
            case 33 => ConfirmedServiceRequestChoice.Audit_log_query

            // Remote Device Management
            case 17 => ConfirmedServiceRequestChoice.Device_communication_control
            case 18 => ConfirmedServiceRequestChoice.Confirmed_private_transfer
            case 19 => ConfirmedServiceRequestChoice.Confirmed_text_message
            case 20 => ConfirmedServiceRequestChoice.Reinitialize_device

            // Virtual Terminal
            case 21 => ConfirmedServiceRequestChoice.Vt_open
            case 22 => ConfirmedServiceRequestChoice.Vt_close
            case 23 => ConfirmedServiceRequestChoice.Vt_data

            // 已删除服务错误处理
            case 13 => ConfirmedServiceRequestChoice.Read_property_conditional
            case 24 => ConfirmedServiceRequestChoice.Authenticate
            case 25 => ConfirmedServiceRequestChoice.Request_key

            // 非法标签值
            case _ => throw BACnetDecodeError(
                "Encountered an undefined value when decoding the BACnetConfirmedServiceRequest field.")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            // ========== 合法服务分支 ==========
            // Alarm and Event Services
            case ConfirmedServiceRequestChoice.Acknowledge_alarm => 0
            case ConfirmedServiceRequestChoice.Confirmed_cov_notification => 1
            case ConfirmedServiceRequestChoice.Confirmed_cov_notification_multiple => 31
            case ConfirmedServiceRequestChoice.Confirmed_event_notification => 2
            case ConfirmedServiceRequestChoice.Get_enrollment_summary => 4
            case ConfirmedServiceRequestChoice.Get_event_information => 29
            case ConfirmedServiceRequestChoice.Life_safety_operation => 27
            case ConfirmedServiceRequestChoice.Subscribe_cov => 5
            case ConfirmedServiceRequestChoice.Subscribe_cov_property => 28
            case ConfirmedServiceRequestChoice.Subscribe_cov_property_multiple => 30
            case ConfirmedServiceRequestChoice.Confirmed_audit_notification => 32

            // File Access Services
            case ConfirmedServiceRequestChoice.Atomic_read_file => 6
            case ConfirmedServiceRequestChoice.Atomic_write_file => 7

            // Object Access Services
            case ConfirmedServiceRequestChoice.Add_list_element => 8
            case ConfirmedServiceRequestChoice.Remove_list_element => 9
            case ConfirmedServiceRequestChoice.Create_object => 10
            case ConfirmedServiceRequestChoice.Delete_object => 11
            case ConfirmedServiceRequestChoice.Read_property => 12
            case ConfirmedServiceRequestChoice.Read_property_multiple => 14
            case ConfirmedServiceRequestChoice.Read_range => 26
            case ConfirmedServiceRequestChoice.Write_property => 15
            case ConfirmedServiceRequestChoice.Write_property_multiple => 16
            case ConfirmedServiceRequestChoice.Audit_log_query => 33

            // Remote Device Management
            case ConfirmedServiceRequestChoice.Device_communication_control => 17
            case ConfirmedServiceRequestChoice.Confirmed_private_transfer => 18
            case ConfirmedServiceRequestChoice.Confirmed_text_message => 19
            case ConfirmedServiceRequestChoice.Reinitialize_device => 20

            // Virtual Terminal
            case ConfirmedServiceRequestChoice.Vt_open => 21
            case ConfirmedServiceRequestChoice.Vt_close => 22
            case ConfirmedServiceRequestChoice.Vt_data => 23

            // ========== 已删除服务分支（保留标签映射） ==========
            case ConfirmedServiceRequestChoice.Authenticate => 24
            case ConfirmedServiceRequestChoice.Request_key => 25
            case ConfirmedServiceRequestChoice.Read_property_conditional => 13
        }
    }
}

/*
--ISO_16484_5_2022_Page_869
--21.2 Confirmed Service Productions

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
 } -- Context-specific tags 0..33 are NOT used in the encoding. The tag number is transferred as the service-choice parameter -- in the BACnet-Confirmed-Request-PDU. -- -- Other services will be added as they are defined. All choice values in this production are reserved for definition by -- ASHRAE. Proprietary extensions are made by using the ConfirmedPrivateTransfer service. See Clause 23.
*/
