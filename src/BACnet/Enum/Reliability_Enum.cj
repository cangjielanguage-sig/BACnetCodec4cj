public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum Reliability_Enum <: IFromUInt32<Reliability_Enum> & IToUInt32 & ToString & IFromString<Reliability_Enum> {
    | no_fault_detected // (0)
    | no_sensor // (1)
    | over_range // (2)
    | under_range // (3)
    | open_loop // (4)
    | shorted_loop // (5)
    | no_output // (6)
    | unreliable_other // (7)
    | process_error // (8)
    | multi_state_fault // (9)
    | configuration_error // (10)
    | communication_failure // (12)
    | member_fault // (13)
    | monitored_object_fault // (14)
    | tripped // (15)
    | lamp_failure // (16)
    | activation_failure // (17)
    | renew_dhcp_failure // (18)
    | renew_fd_registration_failure // (19)
    | restart_auto_negotiation_failure // (20)
    | restart_failure // (21)
    | proprietary_command_failure // (22)
    | faults_listed // (23)
    | referenced_object_fault // (24)
    | multi_state_out_of_range // (25)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): Reliability_Enum {
        match (arg_tag) {
            case 0 => Reliability_Enum.no_fault_detected
            case 1 => Reliability_Enum.no_sensor
            case 2 => Reliability_Enum.over_range
            case 3 => Reliability_Enum.under_range
            case 4 => Reliability_Enum.open_loop
            case 5 => Reliability_Enum.shorted_loop
            case 6 => Reliability_Enum.no_output
            case 7 => Reliability_Enum.unreliable_other
            case 8 => Reliability_Enum.process_error
            case 9 => Reliability_Enum.multi_state_fault
            case 10 => Reliability_Enum.configuration_error
            case 12 => Reliability_Enum.communication_failure
            case 13 => Reliability_Enum.member_fault
            case 14 => Reliability_Enum.monitored_object_fault
            case 15 => Reliability_Enum.tripped
            case 16 => Reliability_Enum.lamp_failure
            case 17 => Reliability_Enum.activation_failure
            case 18 => Reliability_Enum.renew_dhcp_failure
            case 19 => Reliability_Enum.renew_fd_registration_failure
            case 20 => Reliability_Enum.restart_auto_negotiation_failure
            case 21 => Reliability_Enum.restart_failure
            case 22 => Reliability_Enum.proprietary_command_failure
            case 23 => Reliability_Enum.faults_listed
            case 24 => Reliability_Enum.referenced_object_fault
            case 25 => Reliability_Enum.multi_state_out_of_range
            case x where x <= 63 => Reliability_Enum.reserved(x)
            case y where y > 63 && y <= 65535 => Reliability_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case Reliability_Enum.no_fault_detected => 0
            case Reliability_Enum.no_sensor => 1
            case Reliability_Enum.over_range => 2
            case Reliability_Enum.under_range => 3
            case Reliability_Enum.open_loop => 4
            case Reliability_Enum.shorted_loop => 5
            case Reliability_Enum.no_output => 6
            case Reliability_Enum.unreliable_other => 7
            case Reliability_Enum.process_error => 8
            case Reliability_Enum.multi_state_fault => 9
            case Reliability_Enum.configuration_error => 10
            case Reliability_Enum.communication_failure => 12
            case Reliability_Enum.member_fault => 13
            case Reliability_Enum.monitored_object_fault => 14
            case Reliability_Enum.tripped => 15
            case Reliability_Enum.lamp_failure => 16
            case Reliability_Enum.activation_failure => 17
            case Reliability_Enum.renew_dhcp_failure => 18
            case Reliability_Enum.renew_fd_registration_failure => 19
            case Reliability_Enum.restart_auto_negotiation_failure => 20
            case Reliability_Enum.restart_failure => 21
            case Reliability_Enum.proprietary_command_failure => 22
            case Reliability_Enum.faults_listed => 23
            case Reliability_Enum.referenced_object_fault => 24
            case Reliability_Enum.multi_state_out_of_range => 25
            case Reliability_Enum.reserved(x) => x
            case Reliability_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case Reliability_Enum.no_fault_detected => "no_fault_detected"
            case Reliability_Enum.no_sensor => "no_sensor"
            case Reliability_Enum.over_range => "over_range"
            case Reliability_Enum.under_range => "under_range"
            case Reliability_Enum.open_loop => "open_loop"
            case Reliability_Enum.shorted_loop => "shorted_loop"
            case Reliability_Enum.no_output => "no_output"
            case Reliability_Enum.unreliable_other => "unreliable_other"
            case Reliability_Enum.process_error => "process_error"
            case Reliability_Enum.multi_state_fault => "multi_state_fault"
            case Reliability_Enum.configuration_error => "configuration_error"
            case Reliability_Enum.communication_failure => "communication_failure"
            case Reliability_Enum.member_fault => "member_fault"
            case Reliability_Enum.monitored_object_fault => "monitored_object_fault"
            case Reliability_Enum.tripped => "tripped"
            case Reliability_Enum.lamp_failure => "lamp_failure"
            case Reliability_Enum.activation_failure => "activation_failure"
            case Reliability_Enum.renew_dhcp_failure => "renew_dhcp_failure"
            case Reliability_Enum.renew_fd_registration_failure => "renew_fd_registration_failure"
            case Reliability_Enum.restart_auto_negotiation_failure => "restart_auto_negotiation_failure"
            case Reliability_Enum.restart_failure => "restart_failure"
            case Reliability_Enum.proprietary_command_failure => "proprietary_command_failure"
            case Reliability_Enum.faults_listed => "faults_listed"
            case Reliability_Enum.referenced_object_fault => "referenced_object_fault"
            case Reliability_Enum.multi_state_out_of_range => "multi_state_out_of_range"
            case Reliability_Enum.reserved(x) => "reserved_${x}"
            case Reliability_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): Reliability_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "no_fault_detected" => Reliability_Enum.no_fault_detected
            case "no_sensor" => Reliability_Enum.no_sensor
            case "over_range" => Reliability_Enum.over_range
            case "under_range" => Reliability_Enum.under_range
            case "open_loop" => Reliability_Enum.open_loop
            case "shorted_loop" => Reliability_Enum.shorted_loop
            case "no_output" => Reliability_Enum.no_output
            case "unreliable_other" => Reliability_Enum.unreliable_other
            case "process_error" => Reliability_Enum.process_error
            case "multi_state_fault" => Reliability_Enum.multi_state_fault
            case "configuration_error" => Reliability_Enum.configuration_error
            case "communication_failure" => Reliability_Enum.communication_failure
            case "member_fault" => Reliability_Enum.member_fault
            case "monitored_object_fault" => Reliability_Enum.monitored_object_fault
            case "tripped" => Reliability_Enum.tripped
            case "lamp_failure" => Reliability_Enum.lamp_failure
            case "activation_failure" => Reliability_Enum.activation_failure
            case "renew_dhcp_failure" => Reliability_Enum.renew_dhcp_failure
            case "renew_fd_registration_failure" => Reliability_Enum.renew_fd_registration_failure
            case "restart_auto_negotiation_failure" => Reliability_Enum.restart_auto_negotiation_failure
            case "restart_failure" => Reliability_Enum.restart_failure
            case "proprietary_command_failure" => Reliability_Enum.proprietary_command_failure
            case "faults_listed" => Reliability_Enum.faults_listed
            case "referenced_object_fault" => Reliability_Enum.referenced_object_fault
            case "multi_state_out_of_range" => Reliability_Enum.multi_state_out_of_range
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => Reliability_Enum.reserved(x)
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
                        case Some(x) => Reliability_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_953
--21.6 Base Types

BACnetReliability ::= ENUMERATED {
 no-fault-detected (0),
 no-sensor (1),
 over-range (2),
 under-range (3),
 open-loop (4),
 shorted-loop (5),
 no-output (6),
 unreliable-other (7),
 process-error (8),
 multi-state-fault (9),
 configuration-error (10),
 -- enumeration value 11 is reserved for a future addendum
 communication-failure (12),
 member-fault (13),
 monitored-object-fault (14),
 tripped (15),
 lamp-failure (16),
 activation-failure (17),
 renew-dhcp-failure  (18),
 renew-fd-registration-failure  (19),
 restart-auto-negotiation-failure  (20),
 restart-failure  (21),
 proprietary-command-failure  (22),
 faults-listed (23),
 referenced-object-fault (24),
 multi-state-out-of-range (25),
 ...
 }
 -- Enumerated values 0-63 are reserved for definition by ASHRAE. Enumerated values
 -- 64-65535 may be used by others subject to the procedures and constraints described
 -- in Clause 23.
--ISO_16484_5_2022_Page_953
*/
