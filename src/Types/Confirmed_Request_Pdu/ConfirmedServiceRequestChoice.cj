public package BACnetCodec4cj.Types.Confirmed_Request_Pdu

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
