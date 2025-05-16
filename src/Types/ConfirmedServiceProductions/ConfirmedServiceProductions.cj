public package BACnetCodec4cj.Types.ConfirmedServiceProductions
import BACnetCodec4cj.BACnetException.*

public enum BACnetConfirmedServiceChoice {
    // ==================== Alarm and Event Services ====================
    |AcknowledgeAlarm                   // (0)
    |ConfirmedCOVNotification           // (1)
    |ConfirmedEventNotification         // (2)
    |GetAlarmSummary                     // (3)
    |GetEnrollmentSummary               // (4)
    |SubscribeCOV                       // (5)
    |LifeSafetyOperation                // (27) Added after 1995
    |SubscribeCOVProperty               // (28) Added after 1995
    |GetEventInformation                 // (29) Added after 1995
    |SubscribeCOVPropertyMultiple       // (30) Added after 2012
    |ConfirmedCOVNotificationMultiple   // (31) Added after 2012
    |ConfirmedAuditNotification         // (32) Added after 2016

    // ==================== File Access Services ====================
    |AtomicReadFile                     // (6)
    |AtomicWriteFile                    // (7)

    // ==================== Object Access Services ====================
    |AddListElement                     // (8)
    |RemoveListElement                  // (9)
    |CreateObject                       // (10)
    |DeleteObject                       // (11)
    |ReadProperty                       // (12)
    |ReadPropertyMultiple               // (14)
    |WriteProperty                      // (15)
    |WritePropertyMultiple              // (16)
    |ReadRange                          // (26) Added after 1995
    |AuditLogQuery                      // (33) Added after 2016

    // ==================== Remote Device Management Services ====================
    |DeviceCommunicationControl         // (17)
    |ConfirmedPrivateTransfer           // (18)
    |ConfirmedTextMessage               // (19)
    |ReinitializeDevice                 // (20)

    // ==================== Virtual Terminal Services ====================
    |VTOpen                             // (21)
    |VTClose                            // (22)
    |VTData                             // (23)
    |Read_Property_Conditional          // (13)//已删除服务removed in version 1 revision 11
    |Request_Key                        // (25)//已删除服务removed in version 1 revision 11 
    |Authenticate                       // (24)//已删除服务removed in version 1 revision 12  

    // ============== 正向转换函数（Int8 → 枚举） ==============
    public func 从Int8转至BACnetConfirmedServiceChoice(标签: Int8): BACnetConfirmedServiceChoice {
        match (标签) {
            // Alarm and Event Services
            case 0  => BACnetConfirmedServiceChoice.AcknowledgeAlarm
            case 1  => BACnetConfirmedServiceChoice.ConfirmedCOVNotification
            case 2  => BACnetConfirmedServiceChoice.ConfirmedEventNotification
            case 3  => BACnetConfirmedServiceChoice.GetAlarmSummary
            case 4  => BACnetConfirmedServiceChoice.GetEnrollmentSummary
            case 5  => BACnetConfirmedServiceChoice.SubscribeCOV
            case 27 => BACnetConfirmedServiceChoice.LifeSafetyOperation
            case 28 => BACnetConfirmedServiceChoice.SubscribeCOVProperty
            case 29 => BACnetConfirmedServiceChoice.GetEventInformation
            case 30 => BACnetConfirmedServiceChoice.SubscribeCOVPropertyMultiple
            case 31 => BACnetConfirmedServiceChoice.ConfirmedCOVNotificationMultiple
            case 32 => BACnetConfirmedServiceChoice.ConfirmedAuditNotification

            // File Access Services
            case 6  => BACnetConfirmedServiceChoice.AtomicReadFile
            case 7  => BACnetConfirmedServiceChoice.AtomicWriteFile

            // Object Access Services
            case 8  => BACnetConfirmedServiceChoice.AddListElement
            case 9  => BACnetConfirmedServiceChoice.RemoveListElement
            case 10 => BACnetConfirmedServiceChoice.CreateObject
            case 11 => BACnetConfirmedServiceChoice.DeleteObject
            case 12 => BACnetConfirmedServiceChoice.ReadProperty
            case 14 => BACnetConfirmedServiceChoice.ReadPropertyMultiple
            case 15 => BACnetConfirmedServiceChoice.WriteProperty
            case 16 => BACnetConfirmedServiceChoice.WritePropertyMultiple
            case 26 => BACnetConfirmedServiceChoice.ReadRange
            case 33 => BACnetConfirmedServiceChoice.AuditLogQuery

            // Remote Device Management
            case 17 => BACnetConfirmedServiceChoice.DeviceCommunicationControl
            case 18 => BACnetConfirmedServiceChoice.ConfirmedPrivateTransfer
            case 19 => BACnetConfirmedServiceChoice.ConfirmedTextMessage
            case 20 => BACnetConfirmedServiceChoice.ReinitializeDevice

            // Virtual Terminal
            case 21 => BACnetConfirmedServiceChoice.VTOpen
            case 22 => BACnetConfirmedServiceChoice.VTClose
            case 23 => BACnetConfirmedServiceChoice.VTData

            // 非法值和已删除服务
            case 13 => BACnetConfirmedServiceChoice.Read_Property_Conditional
            case 24 => BACnetConfirmedServiceChoice.Authenticate
            case 25 => BACnetConfirmedServiceChoice.Request_Key
            case _ => throw Bacnet解码错误类("协议错误.无效服务标签")
        }
    }

    public func 从BACnetConfirmedServiceChoice转至Int8(服务: BACnetConfirmedServiceChoice): Int8 {
        match (服务) {
            // Alarm and Event Services
            case BACnetConfirmedServiceChoice.AcknowledgeAlarm                  => 0
            case BACnetConfirmedServiceChoice.ConfirmedCOVNotification          => 1
            case BACnetConfirmedServiceChoice.ConfirmedEventNotification        => 2
            case BACnetConfirmedServiceChoice.GetAlarmSummary                   => 3
            case BACnetConfirmedServiceChoice.GetEnrollmentSummary              => 4
            case BACnetConfirmedServiceChoice.SubscribeCOV                      => 5
            case BACnetConfirmedServiceChoice.LifeSafetyOperation               => 27
            case BACnetConfirmedServiceChoice.SubscribeCOVProperty              => 28
            case BACnetConfirmedServiceChoice.GetEventInformation               => 29
            case BACnetConfirmedServiceChoice.SubscribeCOVPropertyMultiple      => 30
            case BACnetConfirmedServiceChoice.ConfirmedCOVNotificationMultiple => 31
            case BACnetConfirmedServiceChoice.ConfirmedAuditNotification       => 32

            // File Access Services
            case BACnetConfirmedServiceChoice.AtomicReadFile                    => 6
            case BACnetConfirmedServiceChoice.AtomicWriteFile                   => 7

            // Object Access Services
            case BACnetConfirmedServiceChoice.AddListElement                    => 8
            case BACnetConfirmedServiceChoice.RemoveListElement                 => 9
            case BACnetConfirmedServiceChoice.CreateObject                      => 10
            case BACnetConfirmedServiceChoice.DeleteObject                      => 11
            case BACnetConfirmedServiceChoice.ReadProperty                      => 12
            case BACnetConfirmedServiceChoice.ReadPropertyMultiple              => 14
            case BACnetConfirmedServiceChoice.WriteProperty                     => 15
            case BACnetConfirmedServiceChoice.WritePropertyMultiple             => 16
            case BACnetConfirmedServiceChoice.ReadRange                         => 26
            case BACnetConfirmedServiceChoice.AuditLogQuery                     => 33

            // Remote Device Management
            case BACnetConfirmedServiceChoice.DeviceCommunicationControl        => 17
            case BACnetConfirmedServiceChoice.ConfirmedPrivateTransfer          => 18
            case BACnetConfirmedServiceChoice.ConfirmedTextMessage              => 19
            case BACnetConfirmedServiceChoice.ReinitializeDevice                => 20

            // Virtual Terminal
            case BACnetConfirmedServiceChoice.VTOpen                            => 21
            case BACnetConfirmedServiceChoice.VTClose                           => 22
            case BACnetConfirmedServiceChoice.VTData                            => 23

            //已移除的服务，如果是version 1 revision 11 后版本BACnet则理论上不应出现
            case BACnetConfirmedServiceChoice.Authenticate                      => 14
            case BACnetConfirmedServiceChoice.Request_Key                       => 25
            case BACnetConfirmedServiceChoice.Read_Property_Conditional         => 13
        }
    }
}

public enum BACnetConfirmedServiceRequest {
    // ==================== Alarm and Event Services ====================
    |Acknowledge_alarm                   // [0]
    |Confirmed_cov_notification          // [1]
    |Confirmed_cov_notification_multiple // [31]
    |Confirmed_event_notification        // [2]
    |Get_enrollment_summary              // [4]
    |Get_event_information               // [29]
    |Life_safety_operation               // [27]
    |Subscribe_cov                      // [5]
    |Subscribe_cov_property              // [28]
    |Subscribe_cov_property_multiple     // [30]
    |Confirmed_audit_notification        // [32]

    // ==================== File Access Services ====================
    |Atomic_read_file                    // [6]
    |Atomic_write_file                   // [7]

    // ==================== Object Access Services ====================
    |Add_list_element                    // [8]
    |Remove_list_element                 // [9]
    |Create_object                       // [10]
    |Delete_object                       // [11]
    |Read_property                       // [12]
    |Read_property_multiple              // [14]
    |Read_range                          // [26]
    |Write_property                      // [15]
    |Write_property_multiple             // [16]
    |Audit_log_query                     // [33]

    // ==================== Remote Device Management ====================
    |Device_communication_control        // [17]
    |Confirmed_private_transfer         // [18]
    |Confirmed_text_message              // [19]
    |Reinitialize_device                // [20]

    // ==================== Virtual Terminal ====================
    |Vt_open                             // [21]
    |Vt_close                            // [22]
    |Vt_data                             // [23]

    // ==================== Removed Services ====================
    |Authenticate                        // [24] //已删除服务Removed in v1r11
    |Request_key                         // [25] //已删除服务Removed in v1r11
    |Read_property_conditional           // [13] //已删除服务Removed in v1r12

    public func 从Int8转至服务请求(标签: Int8): BACnetConfirmedServiceRequest {
        match (标签) {
            // Alarm and Event Services
            case 0  => BACnetConfirmedServiceRequest.Acknowledge_alarm
            case 1  => BACnetConfirmedServiceRequest.Confirmed_cov_notification
            case 31 => BACnetConfirmedServiceRequest.Confirmed_cov_notification_multiple
            case 2  => BACnetConfirmedServiceRequest.Confirmed_event_notification
            case 4  => BACnetConfirmedServiceRequest.Get_enrollment_summary
            case 29 => BACnetConfirmedServiceRequest.Get_event_information
            case 27 => BACnetConfirmedServiceRequest.Life_safety_operation
            case 5  => BACnetConfirmedServiceRequest.Subscribe_cov
            case 28 => BACnetConfirmedServiceRequest.Subscribe_cov_property
            case 30 => BACnetConfirmedServiceRequest.Subscribe_cov_property_multiple
            case 32 => BACnetConfirmedServiceRequest.Confirmed_audit_notification

            // File Access Services
            case 6  => BACnetConfirmedServiceRequest.Atomic_read_file
            case 7  => BACnetConfirmedServiceRequest.Atomic_write_file

            // Object Access Services
            case 8  => BACnetConfirmedServiceRequest.Add_list_element
            case 9  => BACnetConfirmedServiceRequest.Remove_list_element
            case 10 => BACnetConfirmedServiceRequest.Create_object
            case 11 => BACnetConfirmedServiceRequest.Delete_object
            case 12 => BACnetConfirmedServiceRequest.Read_property
            case 14 => BACnetConfirmedServiceRequest.Read_property_multiple
            case 26 => BACnetConfirmedServiceRequest.Read_range
            case 15 => BACnetConfirmedServiceRequest.Write_property
            case 16 => BACnetConfirmedServiceRequest.Write_property_multiple
            case 33 => BACnetConfirmedServiceRequest.Audit_log_query

            // Remote Device Management
            case 17 => BACnetConfirmedServiceRequest.Device_communication_control
            case 18 => BACnetConfirmedServiceRequest.Confirmed_private_transfer
            case 19 => BACnetConfirmedServiceRequest.Confirmed_text_message
            case 20 => BACnetConfirmedServiceRequest.Reinitialize_device

            // Virtual Terminal
            case 21 => BACnetConfirmedServiceRequest.Vt_open
            case 22 => BACnetConfirmedServiceRequest.Vt_close
            case 23 => BACnetConfirmedServiceRequest.Vt_data

            // 已删除服务错误处理
            case 13 => BACnetConfirmedServiceRequest.Read_property_conditional
            case 24 => BACnetConfirmedServiceRequest.Authenticate
            case 25 => BACnetConfirmedServiceRequest.Request_key

            // 非法标签值
            case _  => throw Bacnet解码错误类("协议错误.无效服务标签")
        }
    }

    public func 从BACnetConfirmedServiceRequest转至Int8(请求: BACnetConfirmedServiceRequest): Int8 {
        match (请求) {
            // ========== 合法服务分支 ==========
            // Alarm and Event Services
            case BACnetConfirmedServiceRequest.Acknowledge_alarm                   => 0
            case BACnetConfirmedServiceRequest.Confirmed_cov_notification          => 1
            case BACnetConfirmedServiceRequest.Confirmed_cov_notification_multiple => 31
            case BACnetConfirmedServiceRequest.Confirmed_event_notification        => 2
            case BACnetConfirmedServiceRequest.Get_enrollment_summary              => 4
            case BACnetConfirmedServiceRequest.Get_event_information               => 29
            case BACnetConfirmedServiceRequest.Life_safety_operation               => 27
            case BACnetConfirmedServiceRequest.Subscribe_cov                       => 5
            case BACnetConfirmedServiceRequest.Subscribe_cov_property              => 28
            case BACnetConfirmedServiceRequest.Subscribe_cov_property_multiple     => 30
            case BACnetConfirmedServiceRequest.Confirmed_audit_notification        => 32

            // File Access Services
            case BACnetConfirmedServiceRequest.Atomic_read_file                    => 6
            case BACnetConfirmedServiceRequest.Atomic_write_file                   => 7

            // Object Access Services
            case BACnetConfirmedServiceRequest.Add_list_element                    => 8
            case BACnetConfirmedServiceRequest.Remove_list_element                 => 9
            case BACnetConfirmedServiceRequest.Create_object                       => 10
            case BACnetConfirmedServiceRequest.Delete_object                       => 11
            case BACnetConfirmedServiceRequest.Read_property                       => 12
            case BACnetConfirmedServiceRequest.Read_property_multiple              => 14
            case BACnetConfirmedServiceRequest.Read_range                          => 26
            case BACnetConfirmedServiceRequest.Write_property                      => 15
            case BACnetConfirmedServiceRequest.Write_property_multiple             => 16
            case BACnetConfirmedServiceRequest.Audit_log_query                     => 33

            // Remote Device Management
            case BACnetConfirmedServiceRequest.Device_communication_control        => 17
            case BACnetConfirmedServiceRequest.Confirmed_private_transfer          => 18
            case BACnetConfirmedServiceRequest.Confirmed_text_message              => 19
            case BACnetConfirmedServiceRequest.Reinitialize_device                 => 20

            // Virtual Terminal
            case BACnetConfirmedServiceRequest.Vt_open                            => 21
            case BACnetConfirmedServiceRequest.Vt_close                            => 22
            case BACnetConfirmedServiceRequest.Vt_data                             => 23

            // ========== 已删除服务分支（保留标签映射） ==========
            case BACnetConfirmedServiceRequest.Authenticate                        => 24
            case BACnetConfirmedServiceRequest.Request_key                         => 25
            case BACnetConfirmedServiceRequest.Read_property_conditional           => 13
        }
    }
}

public enum BACnetConfirmedServiceACK {
    // ==================== Alarm and Event Services ====================
    |Get_alarm_summary           // [3]
    |Get_enrollment_summary      // [4]
    |Get_event_information       // [29]

    // ==================== File Access Services ====================
    |Atomic_read_file            // [6]
    |Atomic_write_file           // [7]

    // ==================== Object Access Services ====================
    |Create_object               // [10]
    |Read_property               // [12]
    |Read_property_multiple      // [14]
    |Read_range                  // [26]
    |Audit_log_query             // [33]

    // ==================== Remote Device Management ====================
    |Confirmed_private_transfer  // [18]

    // ==================== Virtual Terminal Services ====================
    |Vt_open                     // [21]
    |Vt_data                     // [23]

    // ==================== Removed Services ====================
    |Authenticate                // [24] (已删除)
    |Read_property_conditional   // [13] (已删除)

    public func 从Int8转至BACnetConfirmedServiceACK(标签: Int8): BACnetConfirmedServiceACK {
        match (标签) {
            // ========== 合法服务分支 ==========
            // Alarm and Event Services
            case 3  => BACnetConfirmedServiceACK.Get_alarm_summary
            case 4  => BACnetConfirmedServiceACK.Get_enrollment_summary
            case 29 => BACnetConfirmedServiceACK.Get_event_information

            // File Access Services
            case 6  => BACnetConfirmedServiceACK.Atomic_read_file
            case 7  => BACnetConfirmedServiceACK.Atomic_write_file

            // Object Access Services
            case 10 => BACnetConfirmedServiceACK.Create_object
            case 12 => BACnetConfirmedServiceACK.Read_property
            case 14 => BACnetConfirmedServiceACK.Read_property_multiple
            case 26 => BACnetConfirmedServiceACK.Read_range
            case 33 => BACnetConfirmedServiceACK.Audit_log_query

            // Remote Device Management
            case 18 => BACnetConfirmedServiceACK.Confirmed_private_transfer

            // Virtual Terminal
            case 21 => BACnetConfirmedServiceACK.Vt_open
            case 23 => BACnetConfirmedServiceACK.Vt_data

            // ========== 已删除服务分支 ==========
            case 13 => BACnetConfirmedServiceACK.Read_property_conditional
            case 24 => BACnetConfirmedServiceACK.Authenticate

            // ========== 非法标签值 ==========
            case _  => throw Bacnet解码错误类(
                "协议错误.无效服务标签"
            )
        }
    }

    // ============== 反向转换函数 (枚举 → Int8) ==============
    public func 从BACnetConfirmedServiceACK转至Int8(ACK: BACnetConfirmedServiceACK): Int8 {
        match (ACK) {
            // ========== 合法服务分支 ==========
            case BACnetConfirmedServiceACK.Get_alarm_summary          => 3
            case BACnetConfirmedServiceACK.Get_enrollment_summary     => 4
            case BACnetConfirmedServiceACK.Get_event_information      => 29

            case BACnetConfirmedServiceACK.Atomic_read_file           => 6
            case BACnetConfirmedServiceACK.Atomic_write_file          => 7

            case BACnetConfirmedServiceACK.Create_object              => 10
            case BACnetConfirmedServiceACK.Read_property              => 12
            case BACnetConfirmedServiceACK.Read_property_multiple     => 14
            case BACnetConfirmedServiceACK.Read_range                 => 26
            case BACnetConfirmedServiceACK.Audit_log_query            => 33

            case BACnetConfirmedServiceACK.Confirmed_private_transfer => 18

            case BACnetConfirmedServiceACK.Vt_open                    => 21
            case BACnetConfirmedServiceACK.Vt_data                   => 23

            // ========== 已删除服务分支（保留标签映射） ==========
            case BACnetConfirmedServiceACK.Authenticate               => 24
            case BACnetConfirmedServiceACK.Read_property_conditional   => 13
        }
    }
}



public enum AtomicWriteFileACK {
    |File_start_position  // [0]
    |File_start_record    // [1]

    // ==================== 正向转换函数 (Int8 → 枚举) ====================
    public func 从Int8转至AtomicWriteFileACK(标签: Int8): AtomicWriteFileACK {
        match (标签) {
            // 合法分支
            case 0 => AtomicWriteFileACK.File_start_position
            case 1 => AtomicWriteFileACK.File_start_record
            
            // 非法标签值（直接抛出字符串描述错误）
            case _ => throw Bacnet解码错误类("协议错误.无效服务标签")
        }
    }

    // ==================== 反向转换函数 (枚举 → Int8) ====================
    public func 从AtomicWriteFileACK转至Int8(ack: AtomicWriteFileACK): Int8 {
        match (ack) {
            // 显式列出所有枚举分支
            case AtomicWriteFileACK.File_start_position => 0
            case AtomicWriteFileACK.File_start_record   => 1
        }
    }
    
}
