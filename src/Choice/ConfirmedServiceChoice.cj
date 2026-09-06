public package BACnetCodec4cj.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetException.*

public enum ConfirmedServiceChoice <: IFromUInt8<ConfirmedServiceChoice> & IToUInt8 {
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
    public static func fromUInt8(tag: UInt8): ConfirmedServiceChoice {
        match (tag) {
            // Alarm and Event Services
            case 0 => ConfirmedServiceChoice.AcknowledgeAlarm
            case 1 => ConfirmedServiceChoice.ConfirmedCOVNotification
            case 2 => ConfirmedServiceChoice.ConfirmedEventNotification
            case 3 => ConfirmedServiceChoice.GetAlarmSummary
            case 4 => ConfirmedServiceChoice.GetEnrollmentSummary
            case 5 => ConfirmedServiceChoice.SubscribeCOV
            case 27 => ConfirmedServiceChoice.LifeSafetyOperation
            case 28 => ConfirmedServiceChoice.SubscribeCOVProperty
            case 29 => ConfirmedServiceChoice.GetEventInformation
            case 30 => ConfirmedServiceChoice.SubscribeCOVPropertyMultiple
            case 31 => ConfirmedServiceChoice.ConfirmedCOVNotificationMultiple
            case 32 => ConfirmedServiceChoice.ConfirmedAuditNotification

            // File Access Services
            case 6 => ConfirmedServiceChoice.AtomicReadFile
            case 7 => ConfirmedServiceChoice.AtomicWriteFile

            // Object Access Services
            case 8 => ConfirmedServiceChoice.AddListElement
            case 9 => ConfirmedServiceChoice.RemoveListElement
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
            case _ => throw BACnetDecodeError(
                "Encountered an undefined value when decoding the BACnetConfirmedServiceChoice field.")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            // Alarm and Event Services
            case ConfirmedServiceChoice.AcknowledgeAlarm => 0
            case ConfirmedServiceChoice.ConfirmedCOVNotification => 1
            case ConfirmedServiceChoice.ConfirmedEventNotification => 2
            case ConfirmedServiceChoice.GetAlarmSummary => 3
            case ConfirmedServiceChoice.GetEnrollmentSummary => 4
            case ConfirmedServiceChoice.SubscribeCOV => 5
            case ConfirmedServiceChoice.LifeSafetyOperation => 27
            case ConfirmedServiceChoice.SubscribeCOVProperty => 28
            case ConfirmedServiceChoice.GetEventInformation => 29
            case ConfirmedServiceChoice.SubscribeCOVPropertyMultiple => 30
            case ConfirmedServiceChoice.ConfirmedCOVNotificationMultiple => 31
            case ConfirmedServiceChoice.ConfirmedAuditNotification => 32

            // File Access Services
            case ConfirmedServiceChoice.AtomicReadFile => 6
            case ConfirmedServiceChoice.AtomicWriteFile => 7

            // Object Access Services
            case ConfirmedServiceChoice.AddListElement => 8
            case ConfirmedServiceChoice.RemoveListElement => 9
            case ConfirmedServiceChoice.CreateObject => 10
            case ConfirmedServiceChoice.DeleteObject => 11
            case ConfirmedServiceChoice.ReadProperty => 12
            case ConfirmedServiceChoice.ReadPropertyMultiple => 14
            case ConfirmedServiceChoice.WriteProperty => 15
            case ConfirmedServiceChoice.WritePropertyMultiple => 16
            case ConfirmedServiceChoice.ReadRange => 26
            case ConfirmedServiceChoice.AuditLogQuery => 33

            // Remote Device Management
            case ConfirmedServiceChoice.DeviceCommunicationControl => 17
            case ConfirmedServiceChoice.ConfirmedPrivateTransfer => 18
            case ConfirmedServiceChoice.ConfirmedTextMessage => 19
            case ConfirmedServiceChoice.ReinitializeDevice => 20

            // Virtual Terminal
            case ConfirmedServiceChoice.VTOpen => 21
            case ConfirmedServiceChoice.VTClose => 22
            case ConfirmedServiceChoice.VTData => 23

            //已移除的服务，如果是version 1 revision 11 后版本BACnet则理论上不应出现
            case ConfirmedServiceChoice.Authenticate => 14
            case ConfirmedServiceChoice.Request_Key => 25
            case ConfirmedServiceChoice.Read_Property_Conditional => 13
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
*/
