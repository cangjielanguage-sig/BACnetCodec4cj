public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum ConfirmedService <: IFromUInt8<ConfirmedService> & IToUInt8 {
    // ==================== Alarm and Event Services ====================
    | AcknowledgeAlarm // (0)
    | ConfirmedCOVNotification // (1)
    | ConfirmedEventNotification // (2)
    | GetAlarmSummary // (3)
    | GetEnrollmentSummary // (4)
    | SubscribeCOV // (5)
    | LifeSafetyOperation // (27) Added after 1995
    | SubscribeCOVProperty // (28) Added after 1995
    | GetEventInformation // (29) Added after 1995
    | SubscribeCOVPropertyMultiple // (30) Added after 2012
    | ConfirmedCOVNotificationMultiple // (31) Added after 2012
    | ConfirmedAuditNotification // (32) Added after 2016

    // ==================== File Access Services ====================
    | AtomicReadFile // (6)
    | AtomicWriteFile // (7)

    // ==================== Object Access Services ====================
    | AddListElement // (8)
    | RemoveListElement // (9)
    | CreateObject // (10)
    | DeleteObject // (11)
    | ReadProperty // (12)
    | ReadPropertyMultiple // (14)
    | WriteProperty // (15)
    | WritePropertyMultiple // (16)
    | ReadRange // (26) Added after 1995
    | AuditLogQuery // (33) Added after 2016

    // ==================== Remote Device Management Services ====================
    | DeviceCommunicationControl // (17)
    | ConfirmedPrivateTransfer // (18)
    | ConfirmedTextMessage // (19)
    | ReinitializeDevice // (20)

    // ==================== Virtual Terminal Services ====================
    | VTOpen // (21)
    | VTClose // (22)
    | VTData // (23)
    | Read_Property_Conditional // (13)//已删除服务removed in version 1 revision 11
    | Request_Key // (25)//已删除服务removed in version 1 revision 11 
    | Authenticate // (24)//已删除服务removed in version 1 revision 12  

    // ============== 正向转换函数（Int8 → 枚举） ==============
    public static func fromUInt8(tag: UInt8): ConfirmedService {
        match (tag) {
            // Alarm and Event Services
            case 0 => ConfirmedService.AcknowledgeAlarm
            case 1 => ConfirmedService.ConfirmedCOVNotification
            case 2 => ConfirmedService.ConfirmedEventNotification
            case 3 => ConfirmedService.GetAlarmSummary
            case 4 => ConfirmedService.GetEnrollmentSummary
            case 5 => ConfirmedService.SubscribeCOV
            case 27 => ConfirmedService.LifeSafetyOperation
            case 28 => ConfirmedService.SubscribeCOVProperty
            case 29 => ConfirmedService.GetEventInformation
            case 30 => ConfirmedService.SubscribeCOVPropertyMultiple
            case 31 => ConfirmedService.ConfirmedCOVNotificationMultiple
            case 32 => ConfirmedService.ConfirmedAuditNotification

            // File Access Services
            case 6 => ConfirmedService.AtomicReadFile
            case 7 => ConfirmedService.AtomicWriteFile

            // Object Access Services
            case 8 => ConfirmedService.AddListElement
            case 9 => ConfirmedService.RemoveListElement
            case 10 => ConfirmedService.CreateObject
            case 11 => ConfirmedService.DeleteObject
            case 12 => ConfirmedService.ReadProperty
            case 14 => ConfirmedService.ReadPropertyMultiple
            case 15 => ConfirmedService.WriteProperty
            case 16 => ConfirmedService.WritePropertyMultiple
            case 26 => ConfirmedService.ReadRange
            case 33 => ConfirmedService.AuditLogQuery

            // Remote Device Management
            case 17 => ConfirmedService.DeviceCommunicationControl
            case 18 => ConfirmedService.ConfirmedPrivateTransfer
            case 19 => ConfirmedService.ConfirmedTextMessage
            case 20 => ConfirmedService.ReinitializeDevice

            // Virtual Terminal
            case 21 => ConfirmedService.VTOpen
            case 22 => ConfirmedService.VTClose
            case 23 => ConfirmedService.VTData

            // 非法值和已删除服务
            case 13 => ConfirmedService.Read_Property_Conditional
            case 24 => ConfirmedService.Authenticate
            case 25 => ConfirmedService.Request_Key
            case _ => throw DecodeException(
                "Encountered an undefined value when decoding the BACnetConfirmedService field.")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            // Alarm and Event Services
            case ConfirmedService.AcknowledgeAlarm => 0
            case ConfirmedService.ConfirmedCOVNotification => 1
            case ConfirmedService.ConfirmedEventNotification => 2
            case ConfirmedService.GetAlarmSummary => 3
            case ConfirmedService.GetEnrollmentSummary => 4
            case ConfirmedService.SubscribeCOV => 5
            case ConfirmedService.LifeSafetyOperation => 27
            case ConfirmedService.SubscribeCOVProperty => 28
            case ConfirmedService.GetEventInformation => 29
            case ConfirmedService.SubscribeCOVPropertyMultiple => 30
            case ConfirmedService.ConfirmedCOVNotificationMultiple => 31
            case ConfirmedService.ConfirmedAuditNotification => 32

            // File Access Services
            case ConfirmedService.AtomicReadFile => 6
            case ConfirmedService.AtomicWriteFile => 7

            // Object Access Services
            case ConfirmedService.AddListElement => 8
            case ConfirmedService.RemoveListElement => 9
            case ConfirmedService.CreateObject => 10
            case ConfirmedService.DeleteObject => 11
            case ConfirmedService.ReadProperty => 12
            case ConfirmedService.ReadPropertyMultiple => 14
            case ConfirmedService.WriteProperty => 15
            case ConfirmedService.WritePropertyMultiple => 16
            case ConfirmedService.ReadRange => 26
            case ConfirmedService.AuditLogQuery => 33

            // Remote Device Management
            case ConfirmedService.DeviceCommunicationControl => 17
            case ConfirmedService.ConfirmedPrivateTransfer => 18
            case ConfirmedService.ConfirmedTextMessage => 19
            case ConfirmedService.ReinitializeDevice => 20

            // Virtual Terminal
            case ConfirmedService.VTOpen => 21
            case ConfirmedService.VTClose => 22
            case ConfirmedService.VTData => 23

            //已移除的服务，如果是version 1 revision 11 后版本BACnet则理论上不应出现
            case ConfirmedService.Authenticate => 14
            case ConfirmedService.Request_Key => 25
            case ConfirmedService.Read_Property_Conditional => 13
        }
    }
}

/*
--ISO_16484_5_2022_Page_868
--21.2 Confirmed Service Productions

BACnetConfirmedService ::= ENUMERATED { -- Alarm and Event Services
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
*/
