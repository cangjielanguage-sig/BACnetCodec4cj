public package BACnetCodec4cj.Types.ConfirmedRequestPdu
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




