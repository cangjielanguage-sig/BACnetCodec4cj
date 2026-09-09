public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum Confirmed_Service_ACK <: IFromUInt8<Confirmed_Service_ACK> & IToUInt8 & ToString & IFromString<Confirmed_Service_ACK> {
    | get_alarm_summary // get-alarm-summary [3] GetAlarmSummary-ACK,
    | get_enrollment_summary // get-enrollment-summary [4] GetEnrollmentSummary-ACK,
    | atomic_read_file // atomic-read-file [6] AtomicReadFile-ACK,
    | atomic_write_file // atomic-write-file [7] AtomicWriteFile-ACK,
    | create_object // create-object [10] CreateObject-ACK,
    | read_property // read-property [12] ReadProperty-ACK,
    | read_property_conditional // 已在协议中删除(removed)，此处保留旧版本标记作兼容
    | read_property_multiple // read-property-multiple [14] ReadPropertyMultiple-ACK,
    | confirmed_private_transfer // confirmed-private-transfer [18] ConfirmedPrivateTransfer-ACK,
    | vt_open // vt-open [21] VT-Open-ACK,
    | vt_data // vt-data [23] VT-Data-ACK
    | authenticate // 已在协议中删除(removed)，此处保留旧版本标记作兼容
    | read_range // read-range [26] ReadRange-ACK,
    | get_event_information // get-event-information [29] GetEventInformation-ACK,
    | audit_log_query // audit-log-query [33] AuditLogQuery-ACK,
    | reserved(UInt8) // 协议中保留(reserved)但未定义的兼容值
    | remove(UInt8) // 协议中已删除(removed)且无旧版本标记的兼容值

    public static func fromUInt8(tag: UInt8): Confirmed_Service_ACK {
        match (tag) {
            case 3 => Confirmed_Service_ACK.get_alarm_summary
            case 4 => Confirmed_Service_ACK.get_enrollment_summary
            case 6 => Confirmed_Service_ACK.atomic_read_file
            case 7 => Confirmed_Service_ACK.atomic_write_file
            case 10 => Confirmed_Service_ACK.create_object
            case 12 => Confirmed_Service_ACK.read_property
            case 13 => Confirmed_Service_ACK.read_property_conditional
            case 14 => Confirmed_Service_ACK.read_property_multiple
            case 18 => Confirmed_Service_ACK.confirmed_private_transfer
            case 21 => Confirmed_Service_ACK.vt_open
            case 23 => Confirmed_Service_ACK.vt_data
            case 24 => Confirmed_Service_ACK.authenticate
            case 26 => Confirmed_Service_ACK.read_range
            case 29 => Confirmed_Service_ACK.get_event_information
            case 33 => Confirmed_Service_ACK.audit_log_query
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case Confirmed_Service_ACK.get_alarm_summary => 3
            case Confirmed_Service_ACK.get_enrollment_summary => 4
            case Confirmed_Service_ACK.atomic_read_file => 6
            case Confirmed_Service_ACK.atomic_write_file => 7
            case Confirmed_Service_ACK.create_object => 10
            case Confirmed_Service_ACK.read_property => 12
            case Confirmed_Service_ACK.read_property_conditional => 13
            case Confirmed_Service_ACK.read_property_multiple => 14
            case Confirmed_Service_ACK.confirmed_private_transfer => 18
            case Confirmed_Service_ACK.vt_open => 21
            case Confirmed_Service_ACK.vt_data => 23
            case Confirmed_Service_ACK.authenticate => 24
            case Confirmed_Service_ACK.read_range => 26
            case Confirmed_Service_ACK.get_event_information => 29
            case Confirmed_Service_ACK.audit_log_query => 33
            case Confirmed_Service_ACK.reserved(x) => x
            case Confirmed_Service_ACK.remove(x) => x
        }
    }

    public func toString(): String {
        match (this) {
            case Confirmed_Service_ACK.get_alarm_summary => "get_alarm_summary"
            case Confirmed_Service_ACK.get_enrollment_summary => "get_enrollment_summary"
            case Confirmed_Service_ACK.atomic_read_file => "atomic_read_file"
            case Confirmed_Service_ACK.atomic_write_file => "atomic_write_file"
            case Confirmed_Service_ACK.create_object => "create_object"
            case Confirmed_Service_ACK.read_property => "read_property"
            case Confirmed_Service_ACK.read_property_conditional => "read_property_conditional"
            case Confirmed_Service_ACK.read_property_multiple => "read_property_multiple"
            case Confirmed_Service_ACK.confirmed_private_transfer => "confirmed_private_transfer"
            case Confirmed_Service_ACK.vt_open => "vt_open"
            case Confirmed_Service_ACK.vt_data => "vt_data"
            case Confirmed_Service_ACK.authenticate => "authenticate"
            case Confirmed_Service_ACK.read_range => "read_range"
            case Confirmed_Service_ACK.get_event_information => "get_event_information"
            case Confirmed_Service_ACK.audit_log_query => "audit_log_query"
            case Confirmed_Service_ACK.reserved(x) => "reserved_${x}"
            case Confirmed_Service_ACK.remove(x) => "remove_${x}"
        }
    }

    public static func fromString(arg_str: String): Confirmed_Service_ACK {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "get_alarm_summary" => Confirmed_Service_ACK.get_alarm_summary
            case "get_enrollment_summary" => Confirmed_Service_ACK.get_enrollment_summary
            case "atomic_read_file" => Confirmed_Service_ACK.atomic_read_file
            case "atomic_write_file" => Confirmed_Service_ACK.atomic_write_file
            case "create_object" => Confirmed_Service_ACK.create_object
            case "read_property" => Confirmed_Service_ACK.read_property
            case "read_property_conditional" => Confirmed_Service_ACK.read_property_conditional
            case "read_property_multiple" => Confirmed_Service_ACK.read_property_multiple
            case "confirmed_private_transfer" => Confirmed_Service_ACK.confirmed_private_transfer
            case "vt_open" => Confirmed_Service_ACK.vt_open
            case "vt_data" => Confirmed_Service_ACK.vt_data
            case "authenticate" => Confirmed_Service_ACK.authenticate
            case "read_range" => Confirmed_Service_ACK.read_range
            case "get_event_information" => Confirmed_Service_ACK.get_event_information
            case "audit_log_query" => Confirmed_Service_ACK.audit_log_query
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt8.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => Confirmed_Service_ACK.reserved(x)
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
                        case Some(x) => Confirmed_Service_ACK.remove(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_870
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

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
