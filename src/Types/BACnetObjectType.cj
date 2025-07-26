public package BACnetCodec4cj.Types
import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetException.*
import std.convert.*

// 枚举定义（按数值顺序）
public enum BACnetObjectTypeChoice  
<: IFromUInt16<BACnetObjectTypeChoice> 
& IToUInt16 
& ToString
& IFromString<BACnetObjectTypeChoice>
{
    |analog_input                     // (0)
    |analog_output                    // (1)
    |analog_value                     // (2)
    |binary_input                     // (3)
    |binary_output                    // (4)
    |binary_value                     // (5)
    |calendar                         // (6)
    |command                          // (7)
    |device                           // (8)
    |event_enrollment                 // (9)
    |file                             // (10)
    |group                            // (11)
    |loop                             // (12)
    |multi_state_input                // (13)
    |multi_state_output               // (14)
    |notification_class               // (15)
    |program                          // (16)
    |schedule                         // (17)
    |averaging                        // (18)
    |multi_state_value                // (19)
    |trend_log                        // (20)
    |life_safety_point                // (21)
    |life_safety_zone                 // (22)
    |accumulator                      // (23)
    |pulse_converter                  // (24)
    |event_log                        // (25)
    |global_group                     // (26)
    |trend_log_multiple               // (27)
    |load_control                     // (28)
    |structured_view                  // (29)
    |access_door                      // (30)
    |timer                            // (31)
    |access_credential                // (32)
    |access_point                     // (33)
    |access_rights                    // (34)
    |access_user                      // (35)
    |access_zone                      // (36)
    |credential_data_input            // (37)
    //|reserved_38                      // (38) 已删除项
    |bitstring_value                  // (39)
    |characterstring_value            // (40)
    |datepattern_value                // (41)
    |date_value                       // (42)
    |datetimepattern_value            // (43)
    |datetime_value                   // (44)
    |integer_value                    // (45)
    |large_analog_value               // (46)
    |octetstring_value                // (47)
    |positive_integer_value           // (48)
    |timepattern_value                // (49)
    |time_value                       // (50)
    |notification_forwarder           // (51)
    |alert_enrollment                 // (52)
    |channel                          // (53)
    |lighting_output                  // (54)
    |binary_lighting_output           // (55)
    |network_port                     // (56)
    |elevator_group                   // (57)
    |escalator                        // (58)
    |lift                             // (59)
    |staging                          // (60)
    |audit_log                        // (61)
    |audit_reporter                   // (62)
    |reserved(UInt16)                 // 保留值，就是不明确值
    |non_standardized(UInt16)         // 非标自定义值

    // ==================== 正向转换函数 (UInt8 → 枚举) ====================
    public static func 从UInt16转换而来(标签: UInt16): BACnetObjectTypeChoice {
        match (标签) {
            // 数值范围 0-62（包括已删除项）
            case 0 => BACnetObjectTypeChoice.analog_input
            case 1 => BACnetObjectTypeChoice.analog_output
            case 2 => BACnetObjectTypeChoice.analog_value
            case 3 => BACnetObjectTypeChoice.binary_input
            case 4 => BACnetObjectTypeChoice.binary_output
            case 5 => BACnetObjectTypeChoice.binary_value
            case 6 => BACnetObjectTypeChoice.calendar
            case 7 => BACnetObjectTypeChoice.command
            case 8 => BACnetObjectTypeChoice.device
            case 9 => BACnetObjectTypeChoice.event_enrollment
            case 10 => BACnetObjectTypeChoice.file
            case 11 => BACnetObjectTypeChoice.group
            case 12 => BACnetObjectTypeChoice.loop
            case 13 => BACnetObjectTypeChoice.multi_state_input
            case 14 => BACnetObjectTypeChoice.multi_state_output
            case 15 => BACnetObjectTypeChoice.notification_class
            case 16 => BACnetObjectTypeChoice.program
            case 17 => BACnetObjectTypeChoice.schedule
            case 18 => BACnetObjectTypeChoice.averaging
            case 19 => BACnetObjectTypeChoice.multi_state_value
            case 20 => BACnetObjectTypeChoice.trend_log
            case 21 => BACnetObjectTypeChoice.life_safety_point
            case 22 => BACnetObjectTypeChoice.life_safety_zone
            case 23 => BACnetObjectTypeChoice.accumulator
            case 24 => BACnetObjectTypeChoice.pulse_converter
            case 25 => BACnetObjectTypeChoice.event_log
            case 26 => BACnetObjectTypeChoice.global_group
            case 27 => BACnetObjectTypeChoice.trend_log_multiple
            case 28 => BACnetObjectTypeChoice.load_control
            case 29 => BACnetObjectTypeChoice.structured_view
            case 30 => BACnetObjectTypeChoice.access_door
            case 31 => BACnetObjectTypeChoice.timer
            case 32 => BACnetObjectTypeChoice.access_credential
            case 33 => BACnetObjectTypeChoice.access_point
            case 34 => BACnetObjectTypeChoice.access_rights
            case 35 => BACnetObjectTypeChoice.access_user
            case 36 => BACnetObjectTypeChoice.access_zone
            case 37 => BACnetObjectTypeChoice.credential_data_input
            case 38 => BACnetObjectTypeChoice.reserved(38)  // 已删除项正常处理
            case 39 => BACnetObjectTypeChoice.bitstring_value
            case 40 => BACnetObjectTypeChoice.characterstring_value
            case 41 => BACnetObjectTypeChoice.datepattern_value
            case 42 => BACnetObjectTypeChoice.date_value
            case 43 => BACnetObjectTypeChoice.datetimepattern_value
            case 44 => BACnetObjectTypeChoice.datetime_value
            case 45 => BACnetObjectTypeChoice.integer_value
            case 46 => BACnetObjectTypeChoice.large_analog_value
            case 47 => BACnetObjectTypeChoice.octetstring_value
            case 48 => BACnetObjectTypeChoice.positive_integer_value
            case 49 => BACnetObjectTypeChoice.timepattern_value
            case 50 => BACnetObjectTypeChoice.time_value
            case 51 => BACnetObjectTypeChoice.notification_forwarder
            case 52 => BACnetObjectTypeChoice.alert_enrollment
            case 53 => BACnetObjectTypeChoice.channel
            case 54 => BACnetObjectTypeChoice.lighting_output
            case 55 => BACnetObjectTypeChoice.binary_lighting_output
            case 56 => BACnetObjectTypeChoice.network_port
            case 57 => BACnetObjectTypeChoice.elevator_group
            case 58 => BACnetObjectTypeChoice.escalator
            case 59 => BACnetObjectTypeChoice.lift
            case 60 => BACnetObjectTypeChoice.staging
            case 61 => BACnetObjectTypeChoice.audit_log
            case 62 => BACnetObjectTypeChoice.audit_reporter
            case x where x>62&&x<128 =>BACnetObjectTypeChoice.reserved(x)
            case y where y>127&&y<1024 =>BACnetObjectTypeChoice.non_standardized(y)
            
            // 非法值抛出协议错误
            case _ => throw BACnetDecodeErro("协议错误.无效对象类型标签")
        }
    }

    public static func fromUInt16(arg_tag: UInt16): BACnetObjectTypeChoice {
        match (arg_tag) {
            // 数值范围 0-62（包括已删除项）
            case 0 => BACnetObjectTypeChoice.analog_input
            case 1 => BACnetObjectTypeChoice.analog_output
            case 2 => BACnetObjectTypeChoice.analog_value
            case 3 => BACnetObjectTypeChoice.binary_input
            case 4 => BACnetObjectTypeChoice.binary_output
            case 5 => BACnetObjectTypeChoice.binary_value
            case 6 => BACnetObjectTypeChoice.calendar
            case 7 => BACnetObjectTypeChoice.command
            case 8 => BACnetObjectTypeChoice.device
            case 9 => BACnetObjectTypeChoice.event_enrollment
            case 10 => BACnetObjectTypeChoice.file
            case 11 => BACnetObjectTypeChoice.group
            case 12 => BACnetObjectTypeChoice.loop
            case 13 => BACnetObjectTypeChoice.multi_state_input
            case 14 => BACnetObjectTypeChoice.multi_state_output
            case 15 => BACnetObjectTypeChoice.notification_class
            case 16 => BACnetObjectTypeChoice.program
            case 17 => BACnetObjectTypeChoice.schedule
            case 18 => BACnetObjectTypeChoice.averaging
            case 19 => BACnetObjectTypeChoice.multi_state_value
            case 20 => BACnetObjectTypeChoice.trend_log
            case 21 => BACnetObjectTypeChoice.life_safety_point
            case 22 => BACnetObjectTypeChoice.life_safety_zone
            case 23 => BACnetObjectTypeChoice.accumulator
            case 24 => BACnetObjectTypeChoice.pulse_converter
            case 25 => BACnetObjectTypeChoice.event_log
            case 26 => BACnetObjectTypeChoice.global_group
            case 27 => BACnetObjectTypeChoice.trend_log_multiple
            case 28 => BACnetObjectTypeChoice.load_control
            case 29 => BACnetObjectTypeChoice.structured_view
            case 30 => BACnetObjectTypeChoice.access_door
            case 31 => BACnetObjectTypeChoice.timer
            case 32 => BACnetObjectTypeChoice.access_credential
            case 33 => BACnetObjectTypeChoice.access_point
            case 34 => BACnetObjectTypeChoice.access_rights
            case 35 => BACnetObjectTypeChoice.access_user
            case 36 => BACnetObjectTypeChoice.access_zone
            case 37 => BACnetObjectTypeChoice.credential_data_input
            case 38 => BACnetObjectTypeChoice.reserved(38)  // 已删除项正常处理
            case 39 => BACnetObjectTypeChoice.bitstring_value
            case 40 => BACnetObjectTypeChoice.characterstring_value
            case 41 => BACnetObjectTypeChoice.datepattern_value
            case 42 => BACnetObjectTypeChoice.date_value
            case 43 => BACnetObjectTypeChoice.datetimepattern_value
            case 44 => BACnetObjectTypeChoice.datetime_value
            case 45 => BACnetObjectTypeChoice.integer_value
            case 46 => BACnetObjectTypeChoice.large_analog_value
            case 47 => BACnetObjectTypeChoice.octetstring_value
            case 48 => BACnetObjectTypeChoice.positive_integer_value
            case 49 => BACnetObjectTypeChoice.timepattern_value
            case 50 => BACnetObjectTypeChoice.time_value
            case 51 => BACnetObjectTypeChoice.notification_forwarder
            case 52 => BACnetObjectTypeChoice.alert_enrollment
            case 53 => BACnetObjectTypeChoice.channel
            case 54 => BACnetObjectTypeChoice.lighting_output
            case 55 => BACnetObjectTypeChoice.binary_lighting_output
            case 56 => BACnetObjectTypeChoice.network_port
            case 57 => BACnetObjectTypeChoice.elevator_group
            case 58 => BACnetObjectTypeChoice.escalator
            case 59 => BACnetObjectTypeChoice.lift
            case 60 => BACnetObjectTypeChoice.staging
            case 61 => BACnetObjectTypeChoice.audit_log
            case 62 => BACnetObjectTypeChoice.audit_reporter
            case x where x>62&&x<128 =>BACnetObjectTypeChoice.reserved(x)
            case y where y>127&&y<1024 =>BACnetObjectTypeChoice.non_standardized(y)
            
            // 非法值抛出协议错误
            case _ => throw BACnetDecodeErro("协议错误.无效对象类型标签")
        }
    }

    // ==================== 反向转换函数 (枚举 → UInt8) ====================
    public func 转换到UInt16(): UInt16 {
        match (this) {
            // 显式列出所有枚举分支（包括已删除项）
            case BACnetObjectTypeChoice.analog_input                     => 0
            case BACnetObjectTypeChoice.analog_output                    => 1
            case BACnetObjectTypeChoice.analog_value                     => 2
            case BACnetObjectTypeChoice.binary_input                     => 3
            case BACnetObjectTypeChoice.binary_output                    => 4
            case BACnetObjectTypeChoice.binary_value                     => 5
            case BACnetObjectTypeChoice.calendar                         => 6
            case BACnetObjectTypeChoice.command                          => 7
            case BACnetObjectTypeChoice.device                           => 8
            case BACnetObjectTypeChoice.event_enrollment                 => 9
            case BACnetObjectTypeChoice.file                             => 10
            case BACnetObjectTypeChoice.group                            => 11
            case BACnetObjectTypeChoice.loop                             => 12
            case BACnetObjectTypeChoice.multi_state_input                => 13
            case BACnetObjectTypeChoice.multi_state_output               => 14
            case BACnetObjectTypeChoice.notification_class               => 15
            case BACnetObjectTypeChoice.program                          => 16
            case BACnetObjectTypeChoice.schedule                         => 17
            case BACnetObjectTypeChoice.averaging                        => 18
            case BACnetObjectTypeChoice.multi_state_value                => 19
            case BACnetObjectTypeChoice.trend_log                        => 20
            case BACnetObjectTypeChoice.life_safety_point                => 21
            case BACnetObjectTypeChoice.life_safety_zone                 => 22
            case BACnetObjectTypeChoice.accumulator                      => 23
            case BACnetObjectTypeChoice.pulse_converter                  => 24
            case BACnetObjectTypeChoice.event_log                        => 25
            case BACnetObjectTypeChoice.global_group                     => 26
            case BACnetObjectTypeChoice.trend_log_multiple               => 27
            case BACnetObjectTypeChoice.load_control                     => 28
            case BACnetObjectTypeChoice.structured_view                  => 29
            case BACnetObjectTypeChoice.access_door                      => 30
            case BACnetObjectTypeChoice.timer                            => 31
            case BACnetObjectTypeChoice.access_credential                => 32
            case BACnetObjectTypeChoice.access_point                     => 33
            case BACnetObjectTypeChoice.access_rights                    => 34
            case BACnetObjectTypeChoice.access_user                      => 35
            case BACnetObjectTypeChoice.access_zone                      => 36
            case BACnetObjectTypeChoice.credential_data_input            => 37
            case BACnetObjectTypeChoice.reserved(38)                     => 38  // 已删除项正常处理
            case BACnetObjectTypeChoice.bitstring_value                  => 39
            case BACnetObjectTypeChoice.characterstring_value            => 40
            case BACnetObjectTypeChoice.datepattern_value                => 41
            case BACnetObjectTypeChoice.date_value                       => 42
            case BACnetObjectTypeChoice.datetimepattern_value            => 43
            case BACnetObjectTypeChoice.datetime_value                   => 44
            case BACnetObjectTypeChoice.integer_value                    => 45
            case BACnetObjectTypeChoice.large_analog_value               => 46
            case BACnetObjectTypeChoice.octetstring_value                => 47
            case BACnetObjectTypeChoice.positive_integer_value           => 48
            case BACnetObjectTypeChoice.timepattern_value                => 49
            case BACnetObjectTypeChoice.time_value                       => 50
            case BACnetObjectTypeChoice.notification_forwarder           => 51
            case BACnetObjectTypeChoice.alert_enrollment                 => 52
            case BACnetObjectTypeChoice.channel                          => 53
            case BACnetObjectTypeChoice.lighting_output                  => 54
            case BACnetObjectTypeChoice.binary_lighting_output           => 55
            case BACnetObjectTypeChoice.network_port                     => 56
            case BACnetObjectTypeChoice.elevator_group                   => 57
            case BACnetObjectTypeChoice.escalator                        => 58
            case BACnetObjectTypeChoice.lift                             => 59
            case BACnetObjectTypeChoice.staging                          => 60
            case BACnetObjectTypeChoice.audit_log                        => 61
            case BACnetObjectTypeChoice.audit_reporter                   => 62
            case BACnetObjectTypeChoice.reserved(x)                      => x
            case BACnetObjectTypeChoice.non_standardized(y)              => y
        }
    }

    public func toUInt16(): UInt16 {
        match (this) {
            // 显式列出所有枚举分支（包括已删除项）
            case BACnetObjectTypeChoice.analog_input                     => 0
            case BACnetObjectTypeChoice.analog_output                    => 1
            case BACnetObjectTypeChoice.analog_value                     => 2
            case BACnetObjectTypeChoice.binary_input                     => 3
            case BACnetObjectTypeChoice.binary_output                    => 4
            case BACnetObjectTypeChoice.binary_value                     => 5
            case BACnetObjectTypeChoice.calendar                         => 6
            case BACnetObjectTypeChoice.command                          => 7
            case BACnetObjectTypeChoice.device                           => 8
            case BACnetObjectTypeChoice.event_enrollment                 => 9
            case BACnetObjectTypeChoice.file                             => 10
            case BACnetObjectTypeChoice.group                            => 11
            case BACnetObjectTypeChoice.loop                             => 12
            case BACnetObjectTypeChoice.multi_state_input                => 13
            case BACnetObjectTypeChoice.multi_state_output               => 14
            case BACnetObjectTypeChoice.notification_class               => 15
            case BACnetObjectTypeChoice.program                          => 16
            case BACnetObjectTypeChoice.schedule                         => 17
            case BACnetObjectTypeChoice.averaging                        => 18
            case BACnetObjectTypeChoice.multi_state_value                => 19
            case BACnetObjectTypeChoice.trend_log                        => 20
            case BACnetObjectTypeChoice.life_safety_point                => 21
            case BACnetObjectTypeChoice.life_safety_zone                 => 22
            case BACnetObjectTypeChoice.accumulator                      => 23
            case BACnetObjectTypeChoice.pulse_converter                  => 24
            case BACnetObjectTypeChoice.event_log                        => 25
            case BACnetObjectTypeChoice.global_group                     => 26
            case BACnetObjectTypeChoice.trend_log_multiple               => 27
            case BACnetObjectTypeChoice.load_control                     => 28
            case BACnetObjectTypeChoice.structured_view                  => 29
            case BACnetObjectTypeChoice.access_door                      => 30
            case BACnetObjectTypeChoice.timer                            => 31
            case BACnetObjectTypeChoice.access_credential                => 32
            case BACnetObjectTypeChoice.access_point                     => 33
            case BACnetObjectTypeChoice.access_rights                    => 34
            case BACnetObjectTypeChoice.access_user                      => 35
            case BACnetObjectTypeChoice.access_zone                      => 36
            case BACnetObjectTypeChoice.credential_data_input            => 37
            case BACnetObjectTypeChoice.reserved(38)                     => 38  // 已删除项正常处理
            case BACnetObjectTypeChoice.bitstring_value                  => 39
            case BACnetObjectTypeChoice.characterstring_value            => 40
            case BACnetObjectTypeChoice.datepattern_value                => 41
            case BACnetObjectTypeChoice.date_value                       => 42
            case BACnetObjectTypeChoice.datetimepattern_value            => 43
            case BACnetObjectTypeChoice.datetime_value                   => 44
            case BACnetObjectTypeChoice.integer_value                    => 45
            case BACnetObjectTypeChoice.large_analog_value               => 46
            case BACnetObjectTypeChoice.octetstring_value                => 47
            case BACnetObjectTypeChoice.positive_integer_value           => 48
            case BACnetObjectTypeChoice.timepattern_value                => 49
            case BACnetObjectTypeChoice.time_value                       => 50
            case BACnetObjectTypeChoice.notification_forwarder           => 51
            case BACnetObjectTypeChoice.alert_enrollment                 => 52
            case BACnetObjectTypeChoice.channel                          => 53
            case BACnetObjectTypeChoice.lighting_output                  => 54
            case BACnetObjectTypeChoice.binary_lighting_output           => 55
            case BACnetObjectTypeChoice.network_port                     => 56
            case BACnetObjectTypeChoice.elevator_group                   => 57
            case BACnetObjectTypeChoice.escalator                        => 58
            case BACnetObjectTypeChoice.lift                             => 59
            case BACnetObjectTypeChoice.staging                          => 60
            case BACnetObjectTypeChoice.audit_log                        => 61
            case BACnetObjectTypeChoice.audit_reporter                   => 62
            case BACnetObjectTypeChoice.reserved(x)                      => x
            case BACnetObjectTypeChoice.non_standardized(y)              => y
        }
    }

    public func toString(): String {
        match (this) {
            case BACnetObjectTypeChoice.analog_input                     => "analog_input"
            case BACnetObjectTypeChoice.analog_output                    => "analog_output"
            case BACnetObjectTypeChoice.analog_value                     => "analog_value"
            case BACnetObjectTypeChoice.binary_input                     => "binary_input"
            case BACnetObjectTypeChoice.binary_output                    => "binary_output"
            case BACnetObjectTypeChoice.binary_value                     => "binary_value"
            case BACnetObjectTypeChoice.calendar                         => "calendar"
            case BACnetObjectTypeChoice.command                          => "command"
            case BACnetObjectTypeChoice.device                           => "device"
            case BACnetObjectTypeChoice.event_enrollment                 => "event_enrollment"
            case BACnetObjectTypeChoice.file                             => "file"
            case BACnetObjectTypeChoice.group                            => "group"
            case BACnetObjectTypeChoice.loop                             => "loop"
            case BACnetObjectTypeChoice.multi_state_input                => "multi_state_input"
            case BACnetObjectTypeChoice.multi_state_output               => "multi_state_output"
            case BACnetObjectTypeChoice.notification_class               => "notification_class"
            case BACnetObjectTypeChoice.program                          => "program"
            case BACnetObjectTypeChoice.schedule                         => "schedule"
            case BACnetObjectTypeChoice.averaging                        => "averaging"
            case BACnetObjectTypeChoice.multi_state_value                => "multi_state_value"
            case BACnetObjectTypeChoice.trend_log                        => "trend_log"
            case BACnetObjectTypeChoice.life_safety_point                => "life_safety_point"
            case BACnetObjectTypeChoice.life_safety_zone                 => "life_safety_zone"
            case BACnetObjectTypeChoice.accumulator                      => "accumulator"
            case BACnetObjectTypeChoice.pulse_converter                  => "pulse_converter"
            case BACnetObjectTypeChoice.event_log                        => "event_log"
            case BACnetObjectTypeChoice.global_group                     => "global_group"
            case BACnetObjectTypeChoice.trend_log_multiple               => "trend_log_multiple"
            case BACnetObjectTypeChoice.load_control                     => "load_control"
            case BACnetObjectTypeChoice.structured_view                  => "structured_view"
            case BACnetObjectTypeChoice.access_door                      => "access_door"
            case BACnetObjectTypeChoice.timer                            => "timer"
            case BACnetObjectTypeChoice.access_credential                => "access_credential"
            case BACnetObjectTypeChoice.access_point                     => "access_point"
            case BACnetObjectTypeChoice.access_rights                    => "access_rights"
            case BACnetObjectTypeChoice.access_user                      => "access_user"
            case BACnetObjectTypeChoice.access_zone                      => "access_zone"
            case BACnetObjectTypeChoice.credential_data_input            => "credential_data_input"
            case BACnetObjectTypeChoice.reserved(38)                     => "reserved_38"
            case BACnetObjectTypeChoice.bitstring_value                  => "bitstring_value"
            case BACnetObjectTypeChoice.characterstring_value            => "characterstring_value"
            case BACnetObjectTypeChoice.datepattern_value                => "datepattern_value"
            case BACnetObjectTypeChoice.date_value                       => "date_value"
            case BACnetObjectTypeChoice.datetimepattern_value            => "datetimepattern_value"
            case BACnetObjectTypeChoice.datetime_value                   => "datetime_value"
            case BACnetObjectTypeChoice.integer_value                    => "integer_value"
            case BACnetObjectTypeChoice.large_analog_value               => "large_analog_value"
            case BACnetObjectTypeChoice.octetstring_value                => "octetstring_value"
            case BACnetObjectTypeChoice.positive_integer_value           => "positive_integer_value"
            case BACnetObjectTypeChoice.timepattern_value                => "timepattern_value"
            case BACnetObjectTypeChoice.time_value                       => "time_value"
            case BACnetObjectTypeChoice.notification_forwarder           => "notification_forwarder"
            case BACnetObjectTypeChoice.alert_enrollment                 => "alert_enrollment"
            case BACnetObjectTypeChoice.channel                          => "channel"
            case BACnetObjectTypeChoice.lighting_output                  => "lighting_output"
            case BACnetObjectTypeChoice.binary_lighting_output           => "binary_lighting_output"
            case BACnetObjectTypeChoice.network_port                     => "network_port"
            case BACnetObjectTypeChoice.elevator_group                   => "elevator_group"
            case BACnetObjectTypeChoice.escalator                        => "escalator"
            case BACnetObjectTypeChoice.lift                             => "lift"
            case BACnetObjectTypeChoice.staging                          => "staging"
            case BACnetObjectTypeChoice.audit_log                        => "audit_log"
            case BACnetObjectTypeChoice.audit_reporter                  => "audit_reporter"
            case BACnetObjectTypeChoice.reserved(x)                      => "reserved_${x}"
            case BACnetObjectTypeChoice.non_standardized(y)              => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): BACnetObjectTypeChoice {
        // 统一转换为小写并替换连字符为下划线
        let 标准化名称 = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (标准化名称) {
            case "analog_input"                     => BACnetObjectTypeChoice.analog_input
            case "analog_output"                    => BACnetObjectTypeChoice.analog_output
            case "analog_value"                     => BACnetObjectTypeChoice.analog_value
            case "binary_input"                     => BACnetObjectTypeChoice.binary_input
            case "binary_output"                    => BACnetObjectTypeChoice.binary_output
            case "binary_value"                     => BACnetObjectTypeChoice.binary_value
            case "calendar"                         => BACnetObjectTypeChoice.calendar
            case "command"                          => BACnetObjectTypeChoice.command
            case "device"                           => BACnetObjectTypeChoice.device
            case "event_enrollment"                 => BACnetObjectTypeChoice.event_enrollment
            case "file"                             => BACnetObjectTypeChoice.file
            case "group"                            => BACnetObjectTypeChoice.group
            case "loop"                             => BACnetObjectTypeChoice.loop
            case "multi_state_input"                => BACnetObjectTypeChoice.multi_state_input
            case "multi_state_output"               => BACnetObjectTypeChoice.multi_state_output
            case "notification_class"               => BACnetObjectTypeChoice.notification_class
            case "program"                          => BACnetObjectTypeChoice.program
            case "schedule"                         => BACnetObjectTypeChoice.schedule
            case "averaging"                        => BACnetObjectTypeChoice.averaging
            case "multi_state_value"                => BACnetObjectTypeChoice.multi_state_value
            case "trend_log"                        => BACnetObjectTypeChoice.trend_log
            case "life_safety_point"                => BACnetObjectTypeChoice.life_safety_point
            case "life_safety_zone"                 => BACnetObjectTypeChoice.life_safety_zone
            case "accumulator"                      => BACnetObjectTypeChoice.accumulator
            case "pulse_converter"                  => BACnetObjectTypeChoice.pulse_converter
            case "event_log"                        => BACnetObjectTypeChoice.event_log
            case "global_group"                     => BACnetObjectTypeChoice.global_group
            case "trend_log_multiple"               => BACnetObjectTypeChoice.trend_log_multiple
            case "load_control"                     => BACnetObjectTypeChoice.load_control
            case "structured_view"                  => BACnetObjectTypeChoice.structured_view
            case "access_door"                      => BACnetObjectTypeChoice.access_door
            case "timer"                            => BACnetObjectTypeChoice.timer
            case "access_credential"                => BACnetObjectTypeChoice.access_credential
            case "access_point"                     => BACnetObjectTypeChoice.access_point
            case "access_rights"                    => BACnetObjectTypeChoice.access_rights
            case "access_user"                      => BACnetObjectTypeChoice.access_user
            case "access_zone"                      => BACnetObjectTypeChoice.access_zone
            case "credential_data_input"            => BACnetObjectTypeChoice.credential_data_input
            case "reserved_38"                      => BACnetObjectTypeChoice.reserved(38)
            case "bitstring_value"                  => BACnetObjectTypeChoice.bitstring_value
            case "characterstring_value"            => BACnetObjectTypeChoice.characterstring_value
            case "datepattern_value"                => BACnetObjectTypeChoice.datepattern_value
            case "date_value"                       => BACnetObjectTypeChoice.date_value
            case "datetimepattern_value"            => BACnetObjectTypeChoice.datetimepattern_value
            case "datetime_value"                   => BACnetObjectTypeChoice.datetime_value
            case "integer_value"                    => BACnetObjectTypeChoice.integer_value
            case "large_analog_value"               => BACnetObjectTypeChoice.large_analog_value
            case "octetstring_value"                => BACnetObjectTypeChoice.octetstring_value
            case "positive_integer_value"           => BACnetObjectTypeChoice.positive_integer_value
            case "timepattern_value"                => BACnetObjectTypeChoice.timepattern_value
            case "time_value"                       => BACnetObjectTypeChoice.time_value
            case "notification_forwarder"           => BACnetObjectTypeChoice.notification_forwarder
            case "alert_enrollment"                 => BACnetObjectTypeChoice.alert_enrollment
            case "channel"                          => BACnetObjectTypeChoice.channel
            case "lighting_output"                  => BACnetObjectTypeChoice.lighting_output
            case "binary_lighting_output"           => BACnetObjectTypeChoice.binary_lighting_output
            case "network_port"                     => BACnetObjectTypeChoice.network_port
            case "elevator_group"                   => BACnetObjectTypeChoice.elevator_group
            case "escalator"                        => BACnetObjectTypeChoice.escalator
            case "lift"                             => BACnetObjectTypeChoice.lift
            case "staging"                          => BACnetObjectTypeChoice.staging
            case "audit_log"                        => BACnetObjectTypeChoice.audit_log
            case "audit_reporter"                   => BACnetObjectTypeChoice.audit_reporter

            case _s where _s.startsWith("reserved_") => let _numStr = _s.removePrefix("reserved_")
                                                        try {
                                                            let _num_Option = UInt16.tryParse(_numStr)
                                                            match (_num_Option) {
                                                                case None => throw BACnetEncodeErro("转换错误.输入字符串为无效对象类型标签或非标准定义对象")
                                                                case Some(x) where x>127 => throw BACnetEncodeErro("转换错误.输入字符串为无效对象类型标签或非标准定义对象")
                                                                case Some(x) where x<=127 => BACnetObjectTypeChoice.reserved(x)
                                                                case _ => throw BACnetEncodeErro("转换错误.输入字符串为无效对象类型标签或非标准定义对象")
                                                            }  
                                                        }catch (e:Exception) {
                                                            throw BACnetEncodeErro("转换错误.输入字符串为无效对象类型标签或非标准定义对象")
                                                        }
                                                        
            case _sn where _sn.startsWith("non_standardized_") =>   let _numStr = _sn.removePrefix("non_standardized_")
                                                                    try {
                                                                        let _num_Option = UInt16.tryParse(_numStr)
                                                                        match (_num_Option) {
                                                                            case None => throw BACnetEncodeErro("转换错误.输入字符串为无效对象类型标签或非标准定义对象")
                                                                            case Some(x) where x<128||x>1023 => throw BACnetEncodeErro("转换错误.输入字符串为无效对象类型标签或非标准定义对象")
                                                                            case Some(x) where x>127&&x<1024 => BACnetObjectTypeChoice.non_standardized(x)
                                                                            case _ => throw BACnetEncodeErro("转换错误.输入字符串为无效对象类型标签或非标准定义对象")
                                                                        }  
                                                                    }catch (e:Exception) {
                                                                        throw BACnetEncodeErro("转换错误.输入字符串为无效对象类型标签或非标准定义对象")
                                                                    }
            // 非法值抛出协议错误
            case _ => throw BACnetEncodeErro("转换错误.输入字符串为无效对象类型标签或非标准定义对象")
        }
    }
}

