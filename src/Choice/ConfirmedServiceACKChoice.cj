public package BACnetCodec4cj.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetException.*

public enum ConfirmedServiceACKChoice <: IFromUInt8<ConfirmedServiceACKChoice> & IToUInt8 {
    // ==================== Alarm and Event Services ====================
    | Get_alarm_summary // [3]
    | Get_enrollment_summary // [4]
    | Get_event_information // [29]

    // ==================== File Access Services ====================
    | Atomic_read_file // [6]
    | Atomic_write_file // [7]

    // ==================== Object Access Services ====================
    | Create_object // [10]
    | Read_property // [12]
    | Read_property_multiple // [14]
    | Read_range // [26]
    | Audit_log_query // [33]

    // ==================== Remote Device Management ====================
    | Confirmed_private_transfer // [18]

    // ==================== Virtual Terminal Services ====================
    | Vt_open // [21]
    | Vt_data // [23]

    // ==================== Removed Services ====================
    | Authenticate // [24] (已删除)
    | Read_property_conditional // [13] (已删除)

    public static func fromUInt8(tag: UInt8): ConfirmedServiceACKChoice {
        match (tag) {
            // ========== 合法服务分支 ==========
            // Alarm and Event Services
            case 3 => ConfirmedServiceACKChoice.Get_alarm_summary
            case 4 => ConfirmedServiceACKChoice.Get_enrollment_summary
            case 29 => ConfirmedServiceACKChoice.Get_event_information

            // File Access Services
            case 6 => ConfirmedServiceACKChoice.Atomic_read_file
            case 7 => ConfirmedServiceACKChoice.Atomic_write_file

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
            case _ => throw BACnetDecodeError(
                "Encountered an undefined value when decoding the BACnetConfirmedServiceACK field.")
        }
    }

    // ============== 反向转换函数 (枚举 → Int8) ==============

    public func toUInt8(): UInt8 {
        match (this) {
            // ========== 合法服务分支 ==========
            case ConfirmedServiceACKChoice.Get_alarm_summary => 3
            case ConfirmedServiceACKChoice.Get_enrollment_summary => 4
            case ConfirmedServiceACKChoice.Get_event_information => 29

            case ConfirmedServiceACKChoice.Atomic_read_file => 6
            case ConfirmedServiceACKChoice.Atomic_write_file => 7

            case ConfirmedServiceACKChoice.Create_object => 10
            case ConfirmedServiceACKChoice.Read_property => 12
            case ConfirmedServiceACKChoice.Read_property_multiple => 14
            case ConfirmedServiceACKChoice.Read_range => 26
            case ConfirmedServiceACKChoice.Audit_log_query => 33

            case ConfirmedServiceACKChoice.Confirmed_private_transfer => 18

            case ConfirmedServiceACKChoice.Vt_open => 21
            case ConfirmedServiceACKChoice.Vt_data => 23

            // ========== 已删除服务分支（保留标签映射） ==========
            case ConfirmedServiceACKChoice.Authenticate => 24
            case ConfirmedServiceACKChoice.Read_property_conditional => 13
        }
    }
}

/*
--ISO_16484_5_2022_Page_870
--21.2 Confirmed Service Productions

BACnet-Confirmed-Service-ACK  ::= CHOICE { -- This production represents the Result(+) parameters defined for each confirmed service that returns one or more -- parameters with 'Result(+).
 -- Alarm and Event Services
 get-alarm-summary [3] GetAlarmSummary-ACK,
 get-enrollment-summary [4] GetEnrollmentSummary-ACK,
 get-event-information [29] GetEventInformation-ACK,
 -- File Access Services
 atomic-read-file [6] AtomicReadFile-ACK,
 atomic-write-file [7] AtomicWriteFile-ACK,
 -- Object Access Services
 create-object [10] CreateObject-ACK,
 read-property [12] ReadProperty-ACK,
 read-property-multiple [14] ReadPropertyMultiple-ACK,
 read-range [26] ReadRange-ACK,
 audit-log-query [33] AuditLogQuery-ACK,
 -- Remote Device Management Services
 confirmed-private-transfer [18] ConfirmedPrivateTransfer-ACK,
 -- Virtual Terminal Services
 vt-open [21] VT-Open-ACK,
 vt-data [23] VT-Data-ACK
 -- Removed Services
 -- formerly: authenticate [24] removed in version 1 revision 11
 -- formerly: read-property-conditional [13] removed in version 1 revision 12
 -- Context-specific tags 3..33 are NOT used in the encoding. The tag number is transferred as the service-ack-choice -- parameter in the BACnet-ComplexACK-PDU. -- -- Other services to be added as they are defined. All choice values in this production are reserved for definition by -- ASHRAE. Proprietary extensions are made by using the ConfirmedPrivateTransfer service. -- See Clause 23.
 }
*/
