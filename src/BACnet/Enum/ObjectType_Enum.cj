public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum ObjectType_Enum <: IFromUInt32<ObjectType_Enum> & IToUInt32 & ToString & IFromString<ObjectType_Enum> {
    | analog_input // (0)
    | analog_output // (1)
    | analog_value // (2)
    | binary_input // (3)
    | binary_output // (4)
    | binary_value // (5)
    | calendar // (6)
    | command // (7)
    | device // (8)
    | event_enrollment // (9)
    | file // (10)
    | group // (11)
    | loop // (12)
    | multi_state_input // (13)
    | multi_state_output // (14)
    | notification_class // (15)
    | program // (16)
    | schedule // (17)
    | averaging // (18)
    | multi_state_value // (19)
    | trend_log // (20)
    | life_safety_point // (21)
    | life_safety_zone // (22)
    | accumulator // (23)
    | pulse_converter // (24)
    | event_log // (25)
    | global_group // (26)
    | trend_log_multiple // (27)
    | load_control // (28)
    | structured_view // (29)
    | access_door // (30)
    | timer // (31)
    | access_credential // (32)
    | access_point // (33)
    | access_rights // (34)
    | access_user // (35)
    | access_zone // (36)
    | credential_data_input // (37)
    | bitstring_value // (39)
    | characterstring_value // (40)
    | datepattern_value // (41)
    | date_value // (42)
    | datetimepattern_value // (43)
    | datetime_value // (44)
    | integer_value // (45)
    | large_analog_value // (46)
    | octetstring_value // (47)
    | positive_integer_value // (48)
    | timepattern_value // (49)
    | time_value // (50)
    | notification_forwarder // (51)
    | alert_enrollment // (52)
    | channel // (53)
    | lighting_output // (54)
    | binary_lighting_output // (55)
    | network_port // (56)
    | elevator_group // (57)
    | escalator // (58)
    | lift // (59)
    | staging // (60)
    | audit_log // (61)
    | audit_reporter // (62)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): ObjectType_Enum {
        match (arg_tag) {
            case 0 => ObjectType_Enum.analog_input
            case 1 => ObjectType_Enum.analog_output
            case 2 => ObjectType_Enum.analog_value
            case 3 => ObjectType_Enum.binary_input
            case 4 => ObjectType_Enum.binary_output
            case 5 => ObjectType_Enum.binary_value
            case 6 => ObjectType_Enum.calendar
            case 7 => ObjectType_Enum.command
            case 8 => ObjectType_Enum.device
            case 9 => ObjectType_Enum.event_enrollment
            case 10 => ObjectType_Enum.file
            case 11 => ObjectType_Enum.group
            case 12 => ObjectType_Enum.loop
            case 13 => ObjectType_Enum.multi_state_input
            case 14 => ObjectType_Enum.multi_state_output
            case 15 => ObjectType_Enum.notification_class
            case 16 => ObjectType_Enum.program
            case 17 => ObjectType_Enum.schedule
            case 18 => ObjectType_Enum.averaging
            case 19 => ObjectType_Enum.multi_state_value
            case 20 => ObjectType_Enum.trend_log
            case 21 => ObjectType_Enum.life_safety_point
            case 22 => ObjectType_Enum.life_safety_zone
            case 23 => ObjectType_Enum.accumulator
            case 24 => ObjectType_Enum.pulse_converter
            case 25 => ObjectType_Enum.event_log
            case 26 => ObjectType_Enum.global_group
            case 27 => ObjectType_Enum.trend_log_multiple
            case 28 => ObjectType_Enum.load_control
            case 29 => ObjectType_Enum.structured_view
            case 30 => ObjectType_Enum.access_door
            case 31 => ObjectType_Enum.timer
            case 32 => ObjectType_Enum.access_credential
            case 33 => ObjectType_Enum.access_point
            case 34 => ObjectType_Enum.access_rights
            case 35 => ObjectType_Enum.access_user
            case 36 => ObjectType_Enum.access_zone
            case 37 => ObjectType_Enum.credential_data_input
            case 39 => ObjectType_Enum.bitstring_value
            case 40 => ObjectType_Enum.characterstring_value
            case 41 => ObjectType_Enum.datepattern_value
            case 42 => ObjectType_Enum.date_value
            case 43 => ObjectType_Enum.datetimepattern_value
            case 44 => ObjectType_Enum.datetime_value
            case 45 => ObjectType_Enum.integer_value
            case 46 => ObjectType_Enum.large_analog_value
            case 47 => ObjectType_Enum.octetstring_value
            case 48 => ObjectType_Enum.positive_integer_value
            case 49 => ObjectType_Enum.timepattern_value
            case 50 => ObjectType_Enum.time_value
            case 51 => ObjectType_Enum.notification_forwarder
            case 52 => ObjectType_Enum.alert_enrollment
            case 53 => ObjectType_Enum.channel
            case 54 => ObjectType_Enum.lighting_output
            case 55 => ObjectType_Enum.binary_lighting_output
            case 56 => ObjectType_Enum.network_port
            case 57 => ObjectType_Enum.elevator_group
            case 58 => ObjectType_Enum.escalator
            case 59 => ObjectType_Enum.lift
            case 60 => ObjectType_Enum.staging
            case 61 => ObjectType_Enum.audit_log
            case 62 => ObjectType_Enum.audit_reporter
            case x where x <= 127 => ObjectType_Enum.reserved(x)
            case y where y > 127 && y <= 1023 => ObjectType_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case ObjectType_Enum.analog_input => 0
            case ObjectType_Enum.analog_output => 1
            case ObjectType_Enum.analog_value => 2
            case ObjectType_Enum.binary_input => 3
            case ObjectType_Enum.binary_output => 4
            case ObjectType_Enum.binary_value => 5
            case ObjectType_Enum.calendar => 6
            case ObjectType_Enum.command => 7
            case ObjectType_Enum.device => 8
            case ObjectType_Enum.event_enrollment => 9
            case ObjectType_Enum.file => 10
            case ObjectType_Enum.group => 11
            case ObjectType_Enum.loop => 12
            case ObjectType_Enum.multi_state_input => 13
            case ObjectType_Enum.multi_state_output => 14
            case ObjectType_Enum.notification_class => 15
            case ObjectType_Enum.program => 16
            case ObjectType_Enum.schedule => 17
            case ObjectType_Enum.averaging => 18
            case ObjectType_Enum.multi_state_value => 19
            case ObjectType_Enum.trend_log => 20
            case ObjectType_Enum.life_safety_point => 21
            case ObjectType_Enum.life_safety_zone => 22
            case ObjectType_Enum.accumulator => 23
            case ObjectType_Enum.pulse_converter => 24
            case ObjectType_Enum.event_log => 25
            case ObjectType_Enum.global_group => 26
            case ObjectType_Enum.trend_log_multiple => 27
            case ObjectType_Enum.load_control => 28
            case ObjectType_Enum.structured_view => 29
            case ObjectType_Enum.access_door => 30
            case ObjectType_Enum.timer => 31
            case ObjectType_Enum.access_credential => 32
            case ObjectType_Enum.access_point => 33
            case ObjectType_Enum.access_rights => 34
            case ObjectType_Enum.access_user => 35
            case ObjectType_Enum.access_zone => 36
            case ObjectType_Enum.credential_data_input => 37
            case ObjectType_Enum.bitstring_value => 39
            case ObjectType_Enum.characterstring_value => 40
            case ObjectType_Enum.datepattern_value => 41
            case ObjectType_Enum.date_value => 42
            case ObjectType_Enum.datetimepattern_value => 43
            case ObjectType_Enum.datetime_value => 44
            case ObjectType_Enum.integer_value => 45
            case ObjectType_Enum.large_analog_value => 46
            case ObjectType_Enum.octetstring_value => 47
            case ObjectType_Enum.positive_integer_value => 48
            case ObjectType_Enum.timepattern_value => 49
            case ObjectType_Enum.time_value => 50
            case ObjectType_Enum.notification_forwarder => 51
            case ObjectType_Enum.alert_enrollment => 52
            case ObjectType_Enum.channel => 53
            case ObjectType_Enum.lighting_output => 54
            case ObjectType_Enum.binary_lighting_output => 55
            case ObjectType_Enum.network_port => 56
            case ObjectType_Enum.elevator_group => 57
            case ObjectType_Enum.escalator => 58
            case ObjectType_Enum.lift => 59
            case ObjectType_Enum.staging => 60
            case ObjectType_Enum.audit_log => 61
            case ObjectType_Enum.audit_reporter => 62
            case ObjectType_Enum.reserved(x) => x
            case ObjectType_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case ObjectType_Enum.analog_input => "analog_input"
            case ObjectType_Enum.analog_output => "analog_output"
            case ObjectType_Enum.analog_value => "analog_value"
            case ObjectType_Enum.binary_input => "binary_input"
            case ObjectType_Enum.binary_output => "binary_output"
            case ObjectType_Enum.binary_value => "binary_value"
            case ObjectType_Enum.calendar => "calendar"
            case ObjectType_Enum.command => "command"
            case ObjectType_Enum.device => "device"
            case ObjectType_Enum.event_enrollment => "event_enrollment"
            case ObjectType_Enum.file => "file"
            case ObjectType_Enum.group => "group"
            case ObjectType_Enum.loop => "loop"
            case ObjectType_Enum.multi_state_input => "multi_state_input"
            case ObjectType_Enum.multi_state_output => "multi_state_output"
            case ObjectType_Enum.notification_class => "notification_class"
            case ObjectType_Enum.program => "program"
            case ObjectType_Enum.schedule => "schedule"
            case ObjectType_Enum.averaging => "averaging"
            case ObjectType_Enum.multi_state_value => "multi_state_value"
            case ObjectType_Enum.trend_log => "trend_log"
            case ObjectType_Enum.life_safety_point => "life_safety_point"
            case ObjectType_Enum.life_safety_zone => "life_safety_zone"
            case ObjectType_Enum.accumulator => "accumulator"
            case ObjectType_Enum.pulse_converter => "pulse_converter"
            case ObjectType_Enum.event_log => "event_log"
            case ObjectType_Enum.global_group => "global_group"
            case ObjectType_Enum.trend_log_multiple => "trend_log_multiple"
            case ObjectType_Enum.load_control => "load_control"
            case ObjectType_Enum.structured_view => "structured_view"
            case ObjectType_Enum.access_door => "access_door"
            case ObjectType_Enum.timer => "timer"
            case ObjectType_Enum.access_credential => "access_credential"
            case ObjectType_Enum.access_point => "access_point"
            case ObjectType_Enum.access_rights => "access_rights"
            case ObjectType_Enum.access_user => "access_user"
            case ObjectType_Enum.access_zone => "access_zone"
            case ObjectType_Enum.credential_data_input => "credential_data_input"
            case ObjectType_Enum.bitstring_value => "bitstring_value"
            case ObjectType_Enum.characterstring_value => "characterstring_value"
            case ObjectType_Enum.datepattern_value => "datepattern_value"
            case ObjectType_Enum.date_value => "date_value"
            case ObjectType_Enum.datetimepattern_value => "datetimepattern_value"
            case ObjectType_Enum.datetime_value => "datetime_value"
            case ObjectType_Enum.integer_value => "integer_value"
            case ObjectType_Enum.large_analog_value => "large_analog_value"
            case ObjectType_Enum.octetstring_value => "octetstring_value"
            case ObjectType_Enum.positive_integer_value => "positive_integer_value"
            case ObjectType_Enum.timepattern_value => "timepattern_value"
            case ObjectType_Enum.time_value => "time_value"
            case ObjectType_Enum.notification_forwarder => "notification_forwarder"
            case ObjectType_Enum.alert_enrollment => "alert_enrollment"
            case ObjectType_Enum.channel => "channel"
            case ObjectType_Enum.lighting_output => "lighting_output"
            case ObjectType_Enum.binary_lighting_output => "binary_lighting_output"
            case ObjectType_Enum.network_port => "network_port"
            case ObjectType_Enum.elevator_group => "elevator_group"
            case ObjectType_Enum.escalator => "escalator"
            case ObjectType_Enum.lift => "lift"
            case ObjectType_Enum.staging => "staging"
            case ObjectType_Enum.audit_log => "audit_log"
            case ObjectType_Enum.audit_reporter => "audit_reporter"
            case ObjectType_Enum.reserved(x) => "reserved_${x}"
            case ObjectType_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): ObjectType_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "analog_input" => ObjectType_Enum.analog_input
            case "analog_output" => ObjectType_Enum.analog_output
            case "analog_value" => ObjectType_Enum.analog_value
            case "binary_input" => ObjectType_Enum.binary_input
            case "binary_output" => ObjectType_Enum.binary_output
            case "binary_value" => ObjectType_Enum.binary_value
            case "calendar" => ObjectType_Enum.calendar
            case "command" => ObjectType_Enum.command
            case "device" => ObjectType_Enum.device
            case "event_enrollment" => ObjectType_Enum.event_enrollment
            case "file" => ObjectType_Enum.file
            case "group" => ObjectType_Enum.group
            case "loop" => ObjectType_Enum.loop
            case "multi_state_input" => ObjectType_Enum.multi_state_input
            case "multi_state_output" => ObjectType_Enum.multi_state_output
            case "notification_class" => ObjectType_Enum.notification_class
            case "program" => ObjectType_Enum.program
            case "schedule" => ObjectType_Enum.schedule
            case "averaging" => ObjectType_Enum.averaging
            case "multi_state_value" => ObjectType_Enum.multi_state_value
            case "trend_log" => ObjectType_Enum.trend_log
            case "life_safety_point" => ObjectType_Enum.life_safety_point
            case "life_safety_zone" => ObjectType_Enum.life_safety_zone
            case "accumulator" => ObjectType_Enum.accumulator
            case "pulse_converter" => ObjectType_Enum.pulse_converter
            case "event_log" => ObjectType_Enum.event_log
            case "global_group" => ObjectType_Enum.global_group
            case "trend_log_multiple" => ObjectType_Enum.trend_log_multiple
            case "load_control" => ObjectType_Enum.load_control
            case "structured_view" => ObjectType_Enum.structured_view
            case "access_door" => ObjectType_Enum.access_door
            case "timer" => ObjectType_Enum.timer
            case "access_credential" => ObjectType_Enum.access_credential
            case "access_point" => ObjectType_Enum.access_point
            case "access_rights" => ObjectType_Enum.access_rights
            case "access_user" => ObjectType_Enum.access_user
            case "access_zone" => ObjectType_Enum.access_zone
            case "credential_data_input" => ObjectType_Enum.credential_data_input
            case "bitstring_value" => ObjectType_Enum.bitstring_value
            case "characterstring_value" => ObjectType_Enum.characterstring_value
            case "datepattern_value" => ObjectType_Enum.datepattern_value
            case "date_value" => ObjectType_Enum.date_value
            case "datetimepattern_value" => ObjectType_Enum.datetimepattern_value
            case "datetime_value" => ObjectType_Enum.datetime_value
            case "integer_value" => ObjectType_Enum.integer_value
            case "large_analog_value" => ObjectType_Enum.large_analog_value
            case "octetstring_value" => ObjectType_Enum.octetstring_value
            case "positive_integer_value" => ObjectType_Enum.positive_integer_value
            case "timepattern_value" => ObjectType_Enum.timepattern_value
            case "time_value" => ObjectType_Enum.time_value
            case "notification_forwarder" => ObjectType_Enum.notification_forwarder
            case "alert_enrollment" => ObjectType_Enum.alert_enrollment
            case "channel" => ObjectType_Enum.channel
            case "lighting_output" => ObjectType_Enum.lighting_output
            case "binary_lighting_output" => ObjectType_Enum.binary_lighting_output
            case "network_port" => ObjectType_Enum.network_port
            case "elevator_group" => ObjectType_Enum.elevator_group
            case "escalator" => ObjectType_Enum.escalator
            case "lift" => ObjectType_Enum.lift
            case "staging" => ObjectType_Enum.staging
            case "audit_log" => ObjectType_Enum.audit_log
            case "audit_reporter" => ObjectType_Enum.audit_reporter
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => ObjectType_Enum.reserved(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _n where _n.startsWith("non_standardized_") =>
                let _numStr = _n.removePrefix("non_standardized_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => ObjectType_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_929
--21.6 Base Types

BACnetObjectType ::= ENUMERATED { -- see below for numerical order
 access-credential (32),
 access-door (30),
 access-point (33),
 access-rights (34),
 access-user (35),
 access-zone (36),
 accumulator (23),
 alert-enrollment (52),
 analog-input (0),
 analog-output (1),
 analog-value (2),
 audit-log (61),
 audit-reporter (62),
 averaging (18),
 binary-input (3),
 binary-lighting-output (55),
 binary-output (4),
 binary-value (5),
 bitstring-value (39),
 calendar (6),
 channel (53),
 characterstring-value (40),
 command (7),
 credential-data-input (37),
 datepattern-value (41),
 date-value (42),
 datetimepattern-value (43),
 datetime-value (44),
 device (8),
 elevator-group (57),
 escalator (58),
 event-enrollment  (9),
 event-log (25),
 file (10),
 global-group (26),
 group (11),
 integer-value (45),
 large-analog-value (46),
 life-safety-point (21),
 life-safety-zone (22),
 lift (59),
 lighting-output (54),
 load-control (28),
 loop (12),
 multi-state-input (13),
 multi-state-output (14),
 multi-state-value (19),
 network-port (56),
 notification-class (15),
 notification-forwarder (51),
 octetstring-value (47),
 positive-integer-value (48),
 program (16),
 pulse-converter (24),
 schedule (17),
 staging (60),
 structured-view (29),
 timepattern-value (49),
 time-value (50),
 timer (31),
 trend-log (20),
 trend-log-multiple (27), -- numerical order reference
 -- see analog-input (0),
 -- see analog-output (1),
 -- see analog-value (2),
 -- see binary-input (3),
 -- see binary-output (4),
 -- see binary-value (5),
 -- see calendar (6),
 -- see command (7),
 -- see device (8),
 -- see event-enrollment  (9),
 -- see file (10),
 -- see group (11),
 -- see loop (12),
 -- see multi-state-input (13),
 -- see multi-state-output (14),
 -- see notification-class (15),
 -- see program (16),
 -- see schedule (17),
 -- see averaging (18),
 -- see multi-state-value (19),
 -- see trend-log (20),
 -- see life-safety-point (21),
 -- see life-safety-zone (22),
 -- see accumulator (23),
 -- see pulse-converter (24),
 -- see event-log (25),
 -- see global-group (26),
 -- see trend-log-multiple (27),
 -- see load-control (28),
 -- see structured-view (29),
 -- see access-door (30),
 -- see timer (31),
 -- see access-credential (32),
 -- see access-point (33),
 -- see access-rights (34),
 -- see access-user (35),
 -- see access-zone  (36),
 -- see credential-data-input (37),
 -- (38), removed
 -- see bitstring-value (39),
 -- see characterstring-value (40),
 -- see datepattern-value (41),
 -- see date-value (42),
 -- see datetimepattern-value (43),
 -- see datetime-value (44),
 -- see integer-value (45),
 -- see large-analog-value (46),
 -- see octetstring-value (47),
 -- see positive-integer-value (48),
 -- see timepattern-value (49),
 -- see time-value (50),
 -- see notification-forwarder (51),
 -- see alert-enrollment (52),
 -- see channel (53),
 -- see lighting-output (54),
 -- see binary-lighting-output (55),
 -- see network-port (56),
 -- see elevator-group (57),
 -- see escalator (58),
 -- see lift (59),
 -- see staging (60),
 -- see audit-log (61),
 -- see audit-reporter (62)
 ...
 }
 -- Enumerated values 0-127 are reserved for definition by ASHRAE. Enumerated values
 -- 128-1023 may be used by others subject to the procedures and constraints described
 -- in Clause 23.
--ISO_16484_5_2022_Page_931
*/
