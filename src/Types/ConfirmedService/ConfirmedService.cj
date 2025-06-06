public package BACnetCodec4cj.Types.ConfirmedService
import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetException.*

public enum ConfirmedServiceChoice  
<: IFromUInt8<ConfirmedServiceChoice> 
& IToUInt8
{
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
    public static func 从UInt8转换而来(标签: UInt8): ConfirmedServiceChoice 
    {
        match (标签) 
        {
            // Alarm and Event Services
            case 0  => ConfirmedServiceChoice.AcknowledgeAlarm
            case 1  => ConfirmedServiceChoice.ConfirmedCOVNotification
            case 2  => ConfirmedServiceChoice.ConfirmedEventNotification
            case 3  => ConfirmedServiceChoice.GetAlarmSummary
            case 4  => ConfirmedServiceChoice.GetEnrollmentSummary
            case 5  => ConfirmedServiceChoice.SubscribeCOV
            case 27 => ConfirmedServiceChoice.LifeSafetyOperation
            case 28 => ConfirmedServiceChoice.SubscribeCOVProperty
            case 29 => ConfirmedServiceChoice.GetEventInformation
            case 30 => ConfirmedServiceChoice.SubscribeCOVPropertyMultiple
            case 31 => ConfirmedServiceChoice.ConfirmedCOVNotificationMultiple
            case 32 => ConfirmedServiceChoice.ConfirmedAuditNotification

            // File Access Services
            case 6  => ConfirmedServiceChoice.AtomicReadFile
            case 7  => ConfirmedServiceChoice.AtomicWriteFile

            // Object Access Services
            case 8  => ConfirmedServiceChoice.AddListElement
            case 9  => ConfirmedServiceChoice.RemoveListElement
            case 10 => ConfirmedServiceChoice.CreateObject
            case 11 => ConfirmedServiceChoice.DeleteObject
            case 12 => ConfirmedServiceChoice.ReadProperty
            case 14 => ConfirmedServiceChoice.ReadPropertyMultiple
            case 15 => ConfirmedServiceChoice.WriteProperty
            case 16 => ConfirmedServiceChoice.WritePropertyMultiple
            case 26 => ConfirmedServiceChoice.ReadRange
            case 33 => ConfirmedServiceChoice.AuditLogQuery

            // Remote Device Management
            case 17 => ConfirmedServiceChoice.DeviceCommunicationControl
            case 18 => ConfirmedServiceChoice.ConfirmedPrivateTransfer
            case 19 => ConfirmedServiceChoice.ConfirmedTextMessage
            case 20 => ConfirmedServiceChoice.ReinitializeDevice

            // Virtual Terminal
            case 21 => ConfirmedServiceChoice.VTOpen
            case 22 => ConfirmedServiceChoice.VTClose
            case 23 => ConfirmedServiceChoice.VTData

            // 非法值和已删除服务
            case 13 => ConfirmedServiceChoice.Read_Property_Conditional
            case 24 => ConfirmedServiceChoice.Authenticate
            case 25 => ConfirmedServiceChoice.Request_Key
            case _ => throw BACnetDecodeErro("协议错误.无效服务标签")
        }
    }

    public static func fromUInt8(tag: UInt8): ConfirmedServiceChoice 
    {
        match (tag) 
        {
            // Alarm and Event Services
            case 0  => ConfirmedServiceChoice.AcknowledgeAlarm
            case 1  => ConfirmedServiceChoice.ConfirmedCOVNotification
            case 2  => ConfirmedServiceChoice.ConfirmedEventNotification
            case 3  => ConfirmedServiceChoice.GetAlarmSummary
            case 4  => ConfirmedServiceChoice.GetEnrollmentSummary
            case 5  => ConfirmedServiceChoice.SubscribeCOV
            case 27 => ConfirmedServiceChoice.LifeSafetyOperation
            case 28 => ConfirmedServiceChoice.SubscribeCOVProperty
            case 29 => ConfirmedServiceChoice.GetEventInformation
            case 30 => ConfirmedServiceChoice.SubscribeCOVPropertyMultiple
            case 31 => ConfirmedServiceChoice.ConfirmedCOVNotificationMultiple
            case 32 => ConfirmedServiceChoice.ConfirmedAuditNotification

            // File Access Services
            case 6  => ConfirmedServiceChoice.AtomicReadFile
            case 7  => ConfirmedServiceChoice.AtomicWriteFile

            // Object Access Services
            case 8  => ConfirmedServiceChoice.AddListElement
            case 9  => ConfirmedServiceChoice.RemoveListElement
            case 10 => ConfirmedServiceChoice.CreateObject
            case 11 => ConfirmedServiceChoice.DeleteObject
            case 12 => ConfirmedServiceChoice.ReadProperty
            case 14 => ConfirmedServiceChoice.ReadPropertyMultiple
            case 15 => ConfirmedServiceChoice.WriteProperty
            case 16 => ConfirmedServiceChoice.WritePropertyMultiple
            case 26 => ConfirmedServiceChoice.ReadRange
            case 33 => ConfirmedServiceChoice.AuditLogQuery

            // Remote Device Management
            case 17 => ConfirmedServiceChoice.DeviceCommunicationControl
            case 18 => ConfirmedServiceChoice.ConfirmedPrivateTransfer
            case 19 => ConfirmedServiceChoice.ConfirmedTextMessage
            case 20 => ConfirmedServiceChoice.ReinitializeDevice

            // Virtual Terminal
            case 21 => ConfirmedServiceChoice.VTOpen
            case 22 => ConfirmedServiceChoice.VTClose
            case 23 => ConfirmedServiceChoice.VTData

            // 非法值和已删除服务
            case 13 => ConfirmedServiceChoice.Read_Property_Conditional
            case 24 => ConfirmedServiceChoice.Authenticate
            case 25 => ConfirmedServiceChoice.Request_Key
            case _ => throw BACnetDecodeErro("Encountered an undefined value when decoding the BACnetConfirmedServiceChoice field.")
        }
    }

    public func 转换到UInt8(): UInt8 
    {
        match (this) 
        {
            // Alarm and Event Services
            case ConfirmedServiceChoice.AcknowledgeAlarm                  => 0
            case ConfirmedServiceChoice.ConfirmedCOVNotification          => 1
            case ConfirmedServiceChoice.ConfirmedEventNotification        => 2
            case ConfirmedServiceChoice.GetAlarmSummary                   => 3
            case ConfirmedServiceChoice.GetEnrollmentSummary              => 4
            case ConfirmedServiceChoice.SubscribeCOV                      => 5
            case ConfirmedServiceChoice.LifeSafetyOperation               => 27
            case ConfirmedServiceChoice.SubscribeCOVProperty              => 28
            case ConfirmedServiceChoice.GetEventInformation               => 29
            case ConfirmedServiceChoice.SubscribeCOVPropertyMultiple      => 30
            case ConfirmedServiceChoice.ConfirmedCOVNotificationMultiple => 31
            case ConfirmedServiceChoice.ConfirmedAuditNotification       => 32

            // File Access Services
            case ConfirmedServiceChoice.AtomicReadFile                    => 6
            case ConfirmedServiceChoice.AtomicWriteFile                   => 7

            // Object Access Services
            case ConfirmedServiceChoice.AddListElement                    => 8
            case ConfirmedServiceChoice.RemoveListElement                 => 9
            case ConfirmedServiceChoice.CreateObject                      => 10
            case ConfirmedServiceChoice.DeleteObject                      => 11
            case ConfirmedServiceChoice.ReadProperty                      => 12
            case ConfirmedServiceChoice.ReadPropertyMultiple              => 14
            case ConfirmedServiceChoice.WriteProperty                     => 15
            case ConfirmedServiceChoice.WritePropertyMultiple             => 16
            case ConfirmedServiceChoice.ReadRange                         => 26
            case ConfirmedServiceChoice.AuditLogQuery                     => 33

            // Remote Device Management
            case ConfirmedServiceChoice.DeviceCommunicationControl        => 17
            case ConfirmedServiceChoice.ConfirmedPrivateTransfer          => 18
            case ConfirmedServiceChoice.ConfirmedTextMessage              => 19
            case ConfirmedServiceChoice.ReinitializeDevice                => 20

            // Virtual Terminal
            case ConfirmedServiceChoice.VTOpen                            => 21
            case ConfirmedServiceChoice.VTClose                           => 22
            case ConfirmedServiceChoice.VTData                            => 23

            //已移除的服务，如果是version 1 revision 11 后版本BACnet则理论上不应出现
            case ConfirmedServiceChoice.Authenticate                      => 14
            case ConfirmedServiceChoice.Request_Key                       => 25
            case ConfirmedServiceChoice.Read_Property_Conditional         => 13
        }
    }

    public func toUInt8(): UInt8 
    {
        match (this) 
        {
            // Alarm and Event Services
            case ConfirmedServiceChoice.AcknowledgeAlarm                  => 0
            case ConfirmedServiceChoice.ConfirmedCOVNotification          => 1
            case ConfirmedServiceChoice.ConfirmedEventNotification        => 2
            case ConfirmedServiceChoice.GetAlarmSummary                   => 3
            case ConfirmedServiceChoice.GetEnrollmentSummary              => 4
            case ConfirmedServiceChoice.SubscribeCOV                      => 5
            case ConfirmedServiceChoice.LifeSafetyOperation               => 27
            case ConfirmedServiceChoice.SubscribeCOVProperty              => 28
            case ConfirmedServiceChoice.GetEventInformation               => 29
            case ConfirmedServiceChoice.SubscribeCOVPropertyMultiple      => 30
            case ConfirmedServiceChoice.ConfirmedCOVNotificationMultiple => 31
            case ConfirmedServiceChoice.ConfirmedAuditNotification       => 32

            // File Access Services
            case ConfirmedServiceChoice.AtomicReadFile                    => 6
            case ConfirmedServiceChoice.AtomicWriteFile                   => 7

            // Object Access Services
            case ConfirmedServiceChoice.AddListElement                    => 8
            case ConfirmedServiceChoice.RemoveListElement                 => 9
            case ConfirmedServiceChoice.CreateObject                      => 10
            case ConfirmedServiceChoice.DeleteObject                      => 11
            case ConfirmedServiceChoice.ReadProperty                      => 12
            case ConfirmedServiceChoice.ReadPropertyMultiple              => 14
            case ConfirmedServiceChoice.WriteProperty                     => 15
            case ConfirmedServiceChoice.WritePropertyMultiple             => 16
            case ConfirmedServiceChoice.ReadRange                         => 26
            case ConfirmedServiceChoice.AuditLogQuery                     => 33

            // Remote Device Management
            case ConfirmedServiceChoice.DeviceCommunicationControl        => 17
            case ConfirmedServiceChoice.ConfirmedPrivateTransfer          => 18
            case ConfirmedServiceChoice.ConfirmedTextMessage              => 19
            case ConfirmedServiceChoice.ReinitializeDevice                => 20

            // Virtual Terminal
            case ConfirmedServiceChoice.VTOpen                            => 21
            case ConfirmedServiceChoice.VTClose                           => 22
            case ConfirmedServiceChoice.VTData                            => 23

            //已移除的服务，如果是version 1 revision 11 后版本BACnet则理论上不应出现
            case ConfirmedServiceChoice.Authenticate                      => 14
            case ConfirmedServiceChoice.Request_Key                       => 25
            case ConfirmedServiceChoice.Read_Property_Conditional         => 13
        }
    }
}

public enum ConfirmedServiceRequestChoice   
<: IFromUInt8<ConfirmedServiceRequestChoice> 
& IToUInt8
{
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

    public static func 从UInt8转换而来(标签: UInt8): ConfirmedServiceRequestChoice 
    {
        match (标签) 
        {
            // Alarm and Event Services
            case 0  => ConfirmedServiceRequestChoice.Acknowledge_alarm
            case 1  => ConfirmedServiceRequestChoice.Confirmed_cov_notification
            case 31 => ConfirmedServiceRequestChoice.Confirmed_cov_notification_multiple
            case 2  => ConfirmedServiceRequestChoice.Confirmed_event_notification
            case 4  => ConfirmedServiceRequestChoice.Get_enrollment_summary
            case 29 => ConfirmedServiceRequestChoice.Get_event_information
            case 27 => ConfirmedServiceRequestChoice.Life_safety_operation
            case 5  => ConfirmedServiceRequestChoice.Subscribe_cov
            case 28 => ConfirmedServiceRequestChoice.Subscribe_cov_property
            case 30 => ConfirmedServiceRequestChoice.Subscribe_cov_property_multiple
            case 32 => ConfirmedServiceRequestChoice.Confirmed_audit_notification

            // File Access Services
            case 6  => ConfirmedServiceRequestChoice.Atomic_read_file
            case 7  => ConfirmedServiceRequestChoice.Atomic_write_file

            // Object Access Services
            case 8  => ConfirmedServiceRequestChoice.Add_list_element
            case 9  => ConfirmedServiceRequestChoice.Remove_list_element
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
            case _  => throw BACnetDecodeErro("协议错误.无效服务标签")
        }
    }

    public static func fromUInt8(tag: UInt8): ConfirmedServiceRequestChoice 
    {
        match (tag) 
        {
            // Alarm and Event Services
            case 0  => ConfirmedServiceRequestChoice.Acknowledge_alarm
            case 1  => ConfirmedServiceRequestChoice.Confirmed_cov_notification
            case 31 => ConfirmedServiceRequestChoice.Confirmed_cov_notification_multiple
            case 2  => ConfirmedServiceRequestChoice.Confirmed_event_notification
            case 4  => ConfirmedServiceRequestChoice.Get_enrollment_summary
            case 29 => ConfirmedServiceRequestChoice.Get_event_information
            case 27 => ConfirmedServiceRequestChoice.Life_safety_operation
            case 5  => ConfirmedServiceRequestChoice.Subscribe_cov
            case 28 => ConfirmedServiceRequestChoice.Subscribe_cov_property
            case 30 => ConfirmedServiceRequestChoice.Subscribe_cov_property_multiple
            case 32 => ConfirmedServiceRequestChoice.Confirmed_audit_notification

            // File Access Services
            case 6  => ConfirmedServiceRequestChoice.Atomic_read_file
            case 7  => ConfirmedServiceRequestChoice.Atomic_write_file

            // Object Access Services
            case 8  => ConfirmedServiceRequestChoice.Add_list_element
            case 9  => ConfirmedServiceRequestChoice.Remove_list_element
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
            case _  => throw BACnetDecodeErro("Encountered an undefined value when decoding the BACnetConfirmedServiceRequest field.")
        }
    }

    public func 转换到UInt8(): UInt8 
    {
        match (this) 
        {
            // ========== 合法服务分支 ==========
            // Alarm and Event Services
            case ConfirmedServiceRequestChoice.Acknowledge_alarm                   => 0
            case ConfirmedServiceRequestChoice.Confirmed_cov_notification          => 1
            case ConfirmedServiceRequestChoice.Confirmed_cov_notification_multiple => 31
            case ConfirmedServiceRequestChoice.Confirmed_event_notification        => 2
            case ConfirmedServiceRequestChoice.Get_enrollment_summary              => 4
            case ConfirmedServiceRequestChoice.Get_event_information               => 29
            case ConfirmedServiceRequestChoice.Life_safety_operation               => 27
            case ConfirmedServiceRequestChoice.Subscribe_cov                       => 5
            case ConfirmedServiceRequestChoice.Subscribe_cov_property              => 28
            case ConfirmedServiceRequestChoice.Subscribe_cov_property_multiple     => 30
            case ConfirmedServiceRequestChoice.Confirmed_audit_notification        => 32

            // File Access Services
            case ConfirmedServiceRequestChoice.Atomic_read_file                    => 6
            case ConfirmedServiceRequestChoice.Atomic_write_file                   => 7

            // Object Access Services
            case ConfirmedServiceRequestChoice.Add_list_element                    => 8
            case ConfirmedServiceRequestChoice.Remove_list_element                 => 9
            case ConfirmedServiceRequestChoice.Create_object                       => 10
            case ConfirmedServiceRequestChoice.Delete_object                       => 11
            case ConfirmedServiceRequestChoice.Read_property                       => 12
            case ConfirmedServiceRequestChoice.Read_property_multiple              => 14
            case ConfirmedServiceRequestChoice.Read_range                          => 26
            case ConfirmedServiceRequestChoice.Write_property                      => 15
            case ConfirmedServiceRequestChoice.Write_property_multiple             => 16
            case ConfirmedServiceRequestChoice.Audit_log_query                     => 33

            // Remote Device Management
            case ConfirmedServiceRequestChoice.Device_communication_control        => 17
            case ConfirmedServiceRequestChoice.Confirmed_private_transfer          => 18
            case ConfirmedServiceRequestChoice.Confirmed_text_message              => 19
            case ConfirmedServiceRequestChoice.Reinitialize_device                 => 20

            // Virtual Terminal
            case ConfirmedServiceRequestChoice.Vt_open                            => 21
            case ConfirmedServiceRequestChoice.Vt_close                            => 22
            case ConfirmedServiceRequestChoice.Vt_data                             => 23

            // ========== 已删除服务分支（保留标签映射） ==========
            case ConfirmedServiceRequestChoice.Authenticate                        => 24
            case ConfirmedServiceRequestChoice.Request_key                         => 25
            case ConfirmedServiceRequestChoice.Read_property_conditional           => 13
        }
    }

    public func toUInt8(): UInt8 
    {
        match (this) 
        {
            // ========== 合法服务分支 ==========
            // Alarm and Event Services
            case ConfirmedServiceRequestChoice.Acknowledge_alarm                   => 0
            case ConfirmedServiceRequestChoice.Confirmed_cov_notification          => 1
            case ConfirmedServiceRequestChoice.Confirmed_cov_notification_multiple => 31
            case ConfirmedServiceRequestChoice.Confirmed_event_notification        => 2
            case ConfirmedServiceRequestChoice.Get_enrollment_summary              => 4
            case ConfirmedServiceRequestChoice.Get_event_information               => 29
            case ConfirmedServiceRequestChoice.Life_safety_operation               => 27
            case ConfirmedServiceRequestChoice.Subscribe_cov                       => 5
            case ConfirmedServiceRequestChoice.Subscribe_cov_property              => 28
            case ConfirmedServiceRequestChoice.Subscribe_cov_property_multiple     => 30
            case ConfirmedServiceRequestChoice.Confirmed_audit_notification        => 32

            // File Access Services
            case ConfirmedServiceRequestChoice.Atomic_read_file                    => 6
            case ConfirmedServiceRequestChoice.Atomic_write_file                   => 7

            // Object Access Services
            case ConfirmedServiceRequestChoice.Add_list_element                    => 8
            case ConfirmedServiceRequestChoice.Remove_list_element                 => 9
            case ConfirmedServiceRequestChoice.Create_object                       => 10
            case ConfirmedServiceRequestChoice.Delete_object                       => 11
            case ConfirmedServiceRequestChoice.Read_property                       => 12
            case ConfirmedServiceRequestChoice.Read_property_multiple              => 14
            case ConfirmedServiceRequestChoice.Read_range                          => 26
            case ConfirmedServiceRequestChoice.Write_property                      => 15
            case ConfirmedServiceRequestChoice.Write_property_multiple             => 16
            case ConfirmedServiceRequestChoice.Audit_log_query                     => 33

            // Remote Device Management
            case ConfirmedServiceRequestChoice.Device_communication_control        => 17
            case ConfirmedServiceRequestChoice.Confirmed_private_transfer          => 18
            case ConfirmedServiceRequestChoice.Confirmed_text_message              => 19
            case ConfirmedServiceRequestChoice.Reinitialize_device                 => 20

            // Virtual Terminal
            case ConfirmedServiceRequestChoice.Vt_open                            => 21
            case ConfirmedServiceRequestChoice.Vt_close                            => 22
            case ConfirmedServiceRequestChoice.Vt_data                             => 23

            // ========== 已删除服务分支（保留标签映射） ==========
            case ConfirmedServiceRequestChoice.Authenticate                        => 24
            case ConfirmedServiceRequestChoice.Request_key                         => 25
            case ConfirmedServiceRequestChoice.Read_property_conditional           => 13
        }
    }
}

public enum ConfirmedServiceACKChoice    
<: IFromUInt8<ConfirmedServiceACKChoice> 
& IToUInt8
{
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

    public static func 从UInt8转换而来(标签: UInt8): ConfirmedServiceACKChoice 
    {
        match (标签) 
        {
            // ========== 合法服务分支 ==========
            // Alarm and Event Services
            case 3  => ConfirmedServiceACKChoice.Get_alarm_summary
            case 4  => ConfirmedServiceACKChoice.Get_enrollment_summary
            case 29 => ConfirmedServiceACKChoice.Get_event_information

            // File Access Services
            case 6  => ConfirmedServiceACKChoice.Atomic_read_file
            case 7  => ConfirmedServiceACKChoice.Atomic_write_file

            // Object Access Services
            case 10 => ConfirmedServiceACKChoice.Create_object
            case 12 => ConfirmedServiceACKChoice.Read_property
            case 14 => ConfirmedServiceACKChoice.Read_property_multiple
            case 26 => ConfirmedServiceACKChoice.Read_range
            case 33 => ConfirmedServiceACKChoice.Audit_log_query

            // Remote Device Management
            case 18 => ConfirmedServiceACKChoice.Confirmed_private_transfer

            // Virtual Terminal
            case 21 => ConfirmedServiceACKChoice.Vt_open
            case 23 => ConfirmedServiceACKChoice.Vt_data

            // ========== 已删除服务分支 ==========
            case 13 => ConfirmedServiceACKChoice.Read_property_conditional
            case 24 => ConfirmedServiceACKChoice.Authenticate

            // ========== 非法标签值 ==========
            case _  => throw BACnetDecodeErro(
                "协议错误.无效服务标签"
            )
        }
    }

    public static func fromUInt8(tag : UInt8): ConfirmedServiceACKChoice 
    {
        match (tag ) 
        {
            // ========== 合法服务分支 ==========
            // Alarm and Event Services
            case 3  => ConfirmedServiceACKChoice.Get_alarm_summary
            case 4  => ConfirmedServiceACKChoice.Get_enrollment_summary
            case 29 => ConfirmedServiceACKChoice.Get_event_information

            // File Access Services
            case 6  => ConfirmedServiceACKChoice.Atomic_read_file
            case 7  => ConfirmedServiceACKChoice.Atomic_write_file

            // Object Access Services
            case 10 => ConfirmedServiceACKChoice.Create_object
            case 12 => ConfirmedServiceACKChoice.Read_property
            case 14 => ConfirmedServiceACKChoice.Read_property_multiple
            case 26 => ConfirmedServiceACKChoice.Read_range
            case 33 => ConfirmedServiceACKChoice.Audit_log_query

            // Remote Device Management
            case 18 => ConfirmedServiceACKChoice.Confirmed_private_transfer

            // Virtual Terminal
            case 21 => ConfirmedServiceACKChoice.Vt_open
            case 23 => ConfirmedServiceACKChoice.Vt_data

            // ========== 已删除服务分支 ==========
            case 13 => ConfirmedServiceACKChoice.Read_property_conditional
            case 24 => ConfirmedServiceACKChoice.Authenticate

            // ========== 非法标签值 ==========
            case _  => throw BACnetDecodeErro(
                "Encountered an undefined value when decoding the BACnetConfirmedServiceACK field."
            )
        }
    }


    // ============== 反向转换函数 (枚举 → Int8) ==============
    public func 转换到UInt8(): UInt8 {
        match (this) 
        {
            // ========== 合法服务分支 ==========
            case ConfirmedServiceACKChoice.Get_alarm_summary          => 3
            case ConfirmedServiceACKChoice.Get_enrollment_summary     => 4
            case ConfirmedServiceACKChoice.Get_event_information      => 29

            case ConfirmedServiceACKChoice.Atomic_read_file           => 6
            case ConfirmedServiceACKChoice.Atomic_write_file          => 7

            case ConfirmedServiceACKChoice.Create_object              => 10
            case ConfirmedServiceACKChoice.Read_property              => 12
            case ConfirmedServiceACKChoice.Read_property_multiple     => 14
            case ConfirmedServiceACKChoice.Read_range                 => 26
            case ConfirmedServiceACKChoice.Audit_log_query            => 33

            case ConfirmedServiceACKChoice.Confirmed_private_transfer => 18

            case ConfirmedServiceACKChoice.Vt_open                    => 21
            case ConfirmedServiceACKChoice.Vt_data                   => 23

            // ========== 已删除服务分支（保留标签映射） ==========
            case ConfirmedServiceACKChoice.Authenticate               => 24
            case ConfirmedServiceACKChoice.Read_property_conditional   => 13
        }
    }

    public func toUInt8(): UInt8 {
        match (this) 
        {
            // ========== 合法服务分支 ==========
            case ConfirmedServiceACKChoice.Get_alarm_summary          => 3
            case ConfirmedServiceACKChoice.Get_enrollment_summary     => 4
            case ConfirmedServiceACKChoice.Get_event_information      => 29

            case ConfirmedServiceACKChoice.Atomic_read_file           => 6
            case ConfirmedServiceACKChoice.Atomic_write_file          => 7

            case ConfirmedServiceACKChoice.Create_object              => 10
            case ConfirmedServiceACKChoice.Read_property              => 12
            case ConfirmedServiceACKChoice.Read_property_multiple     => 14
            case ConfirmedServiceACKChoice.Read_range                 => 26
            case ConfirmedServiceACKChoice.Audit_log_query            => 33

            case ConfirmedServiceACKChoice.Confirmed_private_transfer => 18

            case ConfirmedServiceACKChoice.Vt_open                    => 21
            case ConfirmedServiceACKChoice.Vt_data                   => 23

            // ========== 已删除服务分支（保留标签映射） ==========
            case ConfirmedServiceACKChoice.Authenticate               => 24
            case ConfirmedServiceACKChoice.Read_property_conditional   => 13
        }
    }
}



public enum AtomicWriteFileACK  
<: IFromUInt8<AtomicWriteFileACK> 
& IToUInt8
{
    |File_start_position  // [0]
    |File_start_record    // [1]

    // ==================== 正向转换函数 (Int8 → 枚举) ====================
    public static func 从UInt8转换而来(标签: UInt8): AtomicWriteFileACK 
    {
        match (标签) 
        {
            // 合法分支
            case 0 => AtomicWriteFileACK.File_start_position
            case 1 => AtomicWriteFileACK.File_start_record
            
            // 非法标签值（直接抛出字符串描述错误）
            case _ => throw BACnetDecodeErro("协议错误.无效服务标签")
        }
    }
    public static func fromUInt8(标签: UInt8): AtomicWriteFileACK 
    {
        match (标签) 
        {
            // 合法分支
            case 0 => AtomicWriteFileACK.File_start_position
            case 1 => AtomicWriteFileACK.File_start_record
            
            // 非法标签值（直接抛出字符串描述错误）
            case _ => throw BACnetDecodeErro("Encountered an undefined value when decoding the AtomicWriteFileACK field.")
        }
    }

    // ==================== 反向转换函数 (枚举 → Int8) ====================
    public func 转换到UInt8(): UInt8 
    {
        match (this) 
        {
            // 显式列出所有枚举分支
            case AtomicWriteFileACK.File_start_position => 0
            case AtomicWriteFileACK.File_start_record   => 1
        }
    }
    public func toUInt8(): UInt8 
    {
        match (this) 
        {
            // 显式列出所有枚举分支
            case AtomicWriteFileACK.File_start_position => 0
            case AtomicWriteFileACK.File_start_record   => 1
        }
    }
    
}


