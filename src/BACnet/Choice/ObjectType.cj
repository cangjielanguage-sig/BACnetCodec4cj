public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

// 枚举定义（按数值顺序）
public enum ObjectType <: IFromUInt16<ObjectType> & IToUInt16 & ToString & IFromString<ObjectType> {
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
    //|reserved_38                      // (38) 已删除项
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
    | reserved(UInt16) // 保留值，就是不明确值
    | non_standardized(UInt16) // 非标自定义值

    // ==================== 正向转换函数 (UInt8 → 枚举) ====================
    public static func fromUInt16(arg_tag: UInt16): ObjectType {
        match (arg_tag) {
            // 数值范围 0-62（包括已删除项）
            case 0 => ObjectType.analog_input
            case 1 => ObjectType.analog_output
            case 2 => ObjectType.analog_value
            case 3 => ObjectType.binary_input
            case 4 => ObjectType.binary_output
            case 5 => ObjectType.binary_value
            case 6 => ObjectType.calendar
            case 7 => ObjectType.command
            case 8 => ObjectType.device
            case 9 => ObjectType.event_enrollment
            case 10 => ObjectType.file
            case 11 => ObjectType.group
            case 12 => ObjectType.loop
            case 13 => ObjectType.multi_state_input
            case 14 => ObjectType.multi_state_output
            case 15 => ObjectType.notification_class
            case 16 => ObjectType.program
            case 17 => ObjectType.schedule
            case 18 => ObjectType.averaging
            case 19 => ObjectType.multi_state_value
            case 20 => ObjectType.trend_log
            case 21 => ObjectType.life_safety_point
            case 22 => ObjectType.life_safety_zone
            case 23 => ObjectType.accumulator
            case 24 => ObjectType.pulse_converter
            case 25 => ObjectType.event_log
            case 26 => ObjectType.global_group
            case 27 => ObjectType.trend_log_multiple
            case 28 => ObjectType.load_control
            case 29 => ObjectType.structured_view
            case 30 => ObjectType.access_door
            case 31 => ObjectType.timer
            case 32 => ObjectType.access_credential
            case 33 => ObjectType.access_point
            case 34 => ObjectType.access_rights
            case 35 => ObjectType.access_user
            case 36 => ObjectType.access_zone
            case 37 => ObjectType.credential_data_input
            case 38 => ObjectType.reserved(38) // 已删除项正常处理
            case 39 => ObjectType.bitstring_value
            case 40 => ObjectType.characterstring_value
            case 41 => ObjectType.datepattern_value
            case 42 => ObjectType.date_value
            case 43 => ObjectType.datetimepattern_value
            case 44 => ObjectType.datetime_value
            case 45 => ObjectType.integer_value
            case 46 => ObjectType.large_analog_value
            case 47 => ObjectType.octetstring_value
            case 48 => ObjectType.positive_integer_value
            case 49 => ObjectType.timepattern_value
            case 50 => ObjectType.time_value
            case 51 => ObjectType.notification_forwarder
            case 52 => ObjectType.alert_enrollment
            case 53 => ObjectType.channel
            case 54 => ObjectType.lighting_output
            case 55 => ObjectType.binary_lighting_output
            case 56 => ObjectType.network_port
            case 57 => ObjectType.elevator_group
            case 58 => ObjectType.escalator
            case 59 => ObjectType.lift
            case 60 => ObjectType.staging
            case 61 => ObjectType.audit_log
            case 62 => ObjectType.audit_reporter
            case x where x > 62 && x < 128 => ObjectType.reserved(x)
            case y where y > 127 && y < 1024 => ObjectType.non_standardized(y)

            // 非法值抛出协议错误
            case _ => throw DecodeException("协议错误.无效对象类型标签")
        }
    }

    // ==================== 反向转换函数 (枚举 → UInt8) ====================

    public func toUInt16(): UInt16 {
        match (this) {
            // 显式列出所有枚举分支（包括已删除项）
            case ObjectType.analog_input => 0
            case ObjectType.analog_output => 1
            case ObjectType.analog_value => 2
            case ObjectType.binary_input => 3
            case ObjectType.binary_output => 4
            case ObjectType.binary_value => 5
            case ObjectType.calendar => 6
            case ObjectType.command => 7
            case ObjectType.device => 8
            case ObjectType.event_enrollment => 9
            case ObjectType.file => 10
            case ObjectType.group => 11
            case ObjectType.loop => 12
            case ObjectType.multi_state_input => 13
            case ObjectType.multi_state_output => 14
            case ObjectType.notification_class => 15
            case ObjectType.program => 16
            case ObjectType.schedule => 17
            case ObjectType.averaging => 18
            case ObjectType.multi_state_value => 19
            case ObjectType.trend_log => 20
            case ObjectType.life_safety_point => 21
            case ObjectType.life_safety_zone => 22
            case ObjectType.accumulator => 23
            case ObjectType.pulse_converter => 24
            case ObjectType.event_log => 25
            case ObjectType.global_group => 26
            case ObjectType.trend_log_multiple => 27
            case ObjectType.load_control => 28
            case ObjectType.structured_view => 29
            case ObjectType.access_door => 30
            case ObjectType.timer => 31
            case ObjectType.access_credential => 32
            case ObjectType.access_point => 33
            case ObjectType.access_rights => 34
            case ObjectType.access_user => 35
            case ObjectType.access_zone => 36
            case ObjectType.credential_data_input => 37
            case ObjectType.reserved(38) => 38 // 已删除项正常处理
            case ObjectType.bitstring_value => 39
            case ObjectType.characterstring_value => 40
            case ObjectType.datepattern_value => 41
            case ObjectType.date_value => 42
            case ObjectType.datetimepattern_value => 43
            case ObjectType.datetime_value => 44
            case ObjectType.integer_value => 45
            case ObjectType.large_analog_value => 46
            case ObjectType.octetstring_value => 47
            case ObjectType.positive_integer_value => 48
            case ObjectType.timepattern_value => 49
            case ObjectType.time_value => 50
            case ObjectType.notification_forwarder => 51
            case ObjectType.alert_enrollment => 52
            case ObjectType.channel => 53
            case ObjectType.lighting_output => 54
            case ObjectType.binary_lighting_output => 55
            case ObjectType.network_port => 56
            case ObjectType.elevator_group => 57
            case ObjectType.escalator => 58
            case ObjectType.lift => 59
            case ObjectType.staging => 60
            case ObjectType.audit_log => 61
            case ObjectType.audit_reporter => 62
            case ObjectType.reserved(x) => x
            case ObjectType.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case ObjectType.analog_input => "analog_input"
            case ObjectType.analog_output => "analog_output"
            case ObjectType.analog_value => "analog_value"
            case ObjectType.binary_input => "binary_input"
            case ObjectType.binary_output => "binary_output"
            case ObjectType.binary_value => "binary_value"
            case ObjectType.calendar => "calendar"
            case ObjectType.command => "command"
            case ObjectType.device => "device"
            case ObjectType.event_enrollment => "event_enrollment"
            case ObjectType.file => "file"
            case ObjectType.group => "group"
            case ObjectType.loop => "loop"
            case ObjectType.multi_state_input => "multi_state_input"
            case ObjectType.multi_state_output => "multi_state_output"
            case ObjectType.notification_class => "notification_class"
            case ObjectType.program => "program"
            case ObjectType.schedule => "schedule"
            case ObjectType.averaging => "averaging"
            case ObjectType.multi_state_value => "multi_state_value"
            case ObjectType.trend_log => "trend_log"
            case ObjectType.life_safety_point => "life_safety_point"
            case ObjectType.life_safety_zone => "life_safety_zone"
            case ObjectType.accumulator => "accumulator"
            case ObjectType.pulse_converter => "pulse_converter"
            case ObjectType.event_log => "event_log"
            case ObjectType.global_group => "global_group"
            case ObjectType.trend_log_multiple => "trend_log_multiple"
            case ObjectType.load_control => "load_control"
            case ObjectType.structured_view => "structured_view"
            case ObjectType.access_door => "access_door"
            case ObjectType.timer => "timer"
            case ObjectType.access_credential => "access_credential"
            case ObjectType.access_point => "access_point"
            case ObjectType.access_rights => "access_rights"
            case ObjectType.access_user => "access_user"
            case ObjectType.access_zone => "access_zone"
            case ObjectType.credential_data_input => "credential_data_input"
            case ObjectType.reserved(38) => "reserved_38"
            case ObjectType.bitstring_value => "bitstring_value"
            case ObjectType.characterstring_value => "characterstring_value"
            case ObjectType.datepattern_value => "datepattern_value"
            case ObjectType.date_value => "date_value"
            case ObjectType.datetimepattern_value => "datetimepattern_value"
            case ObjectType.datetime_value => "datetime_value"
            case ObjectType.integer_value => "integer_value"
            case ObjectType.large_analog_value => "large_analog_value"
            case ObjectType.octetstring_value => "octetstring_value"
            case ObjectType.positive_integer_value => "positive_integer_value"
            case ObjectType.timepattern_value => "timepattern_value"
            case ObjectType.time_value => "time_value"
            case ObjectType.notification_forwarder => "notification_forwarder"
            case ObjectType.alert_enrollment => "alert_enrollment"
            case ObjectType.channel => "channel"
            case ObjectType.lighting_output => "lighting_output"
            case ObjectType.binary_lighting_output => "binary_lighting_output"
            case ObjectType.network_port => "network_port"
            case ObjectType.elevator_group => "elevator_group"
            case ObjectType.escalator => "escalator"
            case ObjectType.lift => "lift"
            case ObjectType.staging => "staging"
            case ObjectType.audit_log => "audit_log"
            case ObjectType.audit_reporter => "audit_reporter"
            case ObjectType.reserved(x) => "reserved_${x}"
            case ObjectType.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): ObjectType {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "analog_input" => ObjectType.analog_input
            case "analog_output" => ObjectType.analog_output
            case "analog_value" => ObjectType.analog_value
            case "binary_input" => ObjectType.binary_input
            case "binary_output" => ObjectType.binary_output
            case "binary_value" => ObjectType.binary_value
            case "calendar" => ObjectType.calendar
            case "command" => ObjectType.command
            case "device" => ObjectType.device
            case "event_enrollment" => ObjectType.event_enrollment
            case "file" => ObjectType.file
            case "group" => ObjectType.group
            case "loop" => ObjectType.loop
            case "multi_state_input" => ObjectType.multi_state_input
            case "multi_state_output" => ObjectType.multi_state_output
            case "notification_class" => ObjectType.notification_class
            case "program" => ObjectType.program
            case "schedule" => ObjectType.schedule
            case "averaging" => ObjectType.averaging
            case "multi_state_value" => ObjectType.multi_state_value
            case "trend_log" => ObjectType.trend_log
            case "life_safety_point" => ObjectType.life_safety_point
            case "life_safety_zone" => ObjectType.life_safety_zone
            case "accumulator" => ObjectType.accumulator
            case "pulse_converter" => ObjectType.pulse_converter
            case "event_log" => ObjectType.event_log
            case "global_group" => ObjectType.global_group
            case "trend_log_multiple" => ObjectType.trend_log_multiple
            case "load_control" => ObjectType.load_control
            case "structured_view" => ObjectType.structured_view
            case "access_door" => ObjectType.access_door
            case "timer" => ObjectType.timer
            case "access_credential" => ObjectType.access_credential
            case "access_point" => ObjectType.access_point
            case "access_rights" => ObjectType.access_rights
            case "access_user" => ObjectType.access_user
            case "access_zone" => ObjectType.access_zone
            case "credential_data_input" => ObjectType.credential_data_input
            case "bitstring_value" => ObjectType.bitstring_value
            case "characterstring_value" => ObjectType.characterstring_value
            case "datepattern_value" => ObjectType.datepattern_value
            case "date_value" => ObjectType.date_value
            case "datetimepattern_value" => ObjectType.datetimepattern_value
            case "datetime_value" => ObjectType.datetime_value
            case "integer_value" => ObjectType.integer_value
            case "large_analog_value" => ObjectType.large_analog_value
            case "octetstring_value" => ObjectType.octetstring_value
            case "positive_integer_value" => ObjectType.positive_integer_value
            case "timepattern_value" => ObjectType.timepattern_value
            case "time_value" => ObjectType.time_value
            case "notification_forwarder" => ObjectType.notification_forwarder
            case "alert_enrollment" => ObjectType.alert_enrollment
            case "channel" => ObjectType.channel
            case "lighting_output" => ObjectType.lighting_output
            case "binary_lighting_output" => ObjectType.binary_lighting_output
            case "network_port" => ObjectType.network_port
            case "elevator_group" => ObjectType.elevator_group
            case "escalator" => ObjectType.escalator
            case "lift" => ObjectType.lift
            case "staging" => ObjectType.staging
            case "audit_log" => ObjectType.audit_log
            case "audit_reporter" => ObjectType.audit_reporter
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt16.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => ObjectType.reserved(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _n where _n.startsWith("non_standardized_") =>
                let _numStr = _n.removePrefix("non_standardized_")
                try {
                    let _num_Option = UInt16.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => ObjectType.non_standardized(x)
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
*/
