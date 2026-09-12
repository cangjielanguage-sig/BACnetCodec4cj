public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum PropertyStates_Choice <: IFromUInt8<PropertyStates_Choice> & IToUInt8 & ToString & IFromString<PropertyStates_Choice> {
    | boolean_value // boolean-value [0] BOOLEAN,
    | binary_value // binary-value [1] BACnetBinaryPV,
    | event_type // event-type [2] BACnetEventType,
    | polarity // polarity [3] BACnetPolarity,
    | program_change // program-change [4] BACnetProgramRequest,
    | program_state // program-state [5] BACnetProgramState,
    | reason_for_halt // reason-for-halt [6] BACnetProgramError,
    | reliability // reliability [7] BACnetReliability,
    | state // state [8] BACnetEventState,
    | system_status // system-status [9] BACnetDeviceStatus,
    | units // units [10] BACnetEngineeringUnits,
    | unsigned_value // unsigned-value [11] Unsigned,
    | life_safety_mode // life-safety-mode [12] BACnetLifeSafetyMode,
    | life_safety_state // life-safety-state [13] BACnetLifeSafetyState,
    | restart_reason // restart-reason [14] BACnetRestartReason,
    | door_alarm_state // door-alarm-state [15] BACnetDoorAlarmState,
    | action // action [16] BACnetAction,
    | door_secured_status // door-secured-status [17] BACnetDoorSecuredStatus,
    | door_status // door-status [18] BACnetDoorStatus,
    | door_value // door-value [19] BACnetDoorValue,
    | file_access_method // file-access-method [20] BACnetFileAccessMethod,
    | lock_status // lock-status [21] BACnetLockStatus,
    | life_safety_operation // life-safety-operation [22] BACnetLifeSafetyOperation,
    | maintenance // maintenance [23] BACnetMaintenance,
    | node_type // node-type [24] BACnetNodeType,
    | notify_type // notify-type [25] BACnetNotifyType,
    | shed_state // shed-state [27] BACnetShedState,
    | silenced_state // silenced-state [28] BACnetSilencedState,
    | access_event // access-event [30] BACnetAccessEvent,
    | zone_occupancy_state // zone-occupancy-state [31] BACnetAccessZoneOccupancyState,
    | access_credential_disable_reason // access-credential-disable-reason [32] BACnetAccessCredentialDisableReason,
    | access_credential_disable // access-credential-disable [33] BACnetAccessCredentialDisable,
    | authentication_status // authentication-status [34] BACnetAuthenticationStatus,
    | backup_state // backup-state [36] BACnetBackupState,
    | write_status // write-status [37] BACnetWriteStatus,
    | lighting_in_progress // lighting-in-progress [38] BACnetLightingInProgress,
    | lighting_operation // lighting-operation [39] BACnetLightingOperation,
    | lighting_transition // lighting-transition [40] BACnetLightingTransition,
    | integer_value // integer-value [41] INTEGER,
    | binary_lighting_value // binary-lighting-value [42] BACnetBinaryLightingPV,
    | timer_state // timer-state [43] BACnetTimerState,
    | timer_transition // timer-transition [44] BACnetTimerTransition,
    | bacnet_ip_mode // bacnet-ip-mode [45] BACnetIPMode,
    | network_port_command // network-port-command [46] BACnetNetworkPortCommand,
    | network_type // network-type [47] BACnetNetworkType,
    | network_number_quality // network-number-quality [48] BACnetNetworkNumberQuality,
    | escalator_operation_direction // escalator-operation-direction [49] BACnetEscalatorOperationDirection,
    | escalator_fault // escalator-fault [50] BACnetEscalatorFault,
    | escalator_mode // escalator-mode [51] BACnetEscalatorMode,
    | lift_car_direction // lift-car-direction [52] BACnetLiftCarDirection,
    | lift_car_door_command // lift-car-door-command [53] BACnetLiftCarDoorCommand,
    | lift_car_drive_status // lift-car-drive-status [54] BACnetLiftCarDriveStatus,
    | lift_car_mode // lift-car-mode [55] BACnetLiftCarMode,
    | lift_group_mode // lift-group-mode [56] BACnetLiftGroupMode,
    | lift_fault // lift-fault [57] BACnetLiftFault,
    | protocol_level // protocol-level [58] BACnetProtocolLevel,
    | audit_level // audit-level [59] BACnetAuditLevel,
    | audit_operation // audit-operation [60] BACnetAuditOperation,
    | extended_value // extended-value [63] Unsigned32,
    | reserved(UInt8) // 协议中保留(reserved)但未定义的兼容值
    | remove(UInt8) // 协议中已删除(removed)且无旧版本标记的兼容值

    public static func fromUInt8(tag: UInt8): PropertyStates_Choice {
        match (tag) {
            case 0 => PropertyStates_Choice.boolean_value
            case 1 => PropertyStates_Choice.binary_value
            case 2 => PropertyStates_Choice.event_type
            case 3 => PropertyStates_Choice.polarity
            case 4 => PropertyStates_Choice.program_change
            case 5 => PropertyStates_Choice.program_state
            case 6 => PropertyStates_Choice.reason_for_halt
            case 7 => PropertyStates_Choice.reliability
            case 8 => PropertyStates_Choice.state
            case 9 => PropertyStates_Choice.system_status
            case 10 => PropertyStates_Choice.units
            case 11 => PropertyStates_Choice.unsigned_value
            case 12 => PropertyStates_Choice.life_safety_mode
            case 13 => PropertyStates_Choice.life_safety_state
            case 14 => PropertyStates_Choice.restart_reason
            case 15 => PropertyStates_Choice.door_alarm_state
            case 16 => PropertyStates_Choice.action
            case 17 => PropertyStates_Choice.door_secured_status
            case 18 => PropertyStates_Choice.door_status
            case 19 => PropertyStates_Choice.door_value
            case 20 => PropertyStates_Choice.file_access_method
            case 21 => PropertyStates_Choice.lock_status
            case 22 => PropertyStates_Choice.life_safety_operation
            case 23 => PropertyStates_Choice.maintenance
            case 24 => PropertyStates_Choice.node_type
            case 25 => PropertyStates_Choice.notify_type
            case 27 => PropertyStates_Choice.shed_state
            case 28 => PropertyStates_Choice.silenced_state
            case 30 => PropertyStates_Choice.access_event
            case 31 => PropertyStates_Choice.zone_occupancy_state
            case 32 => PropertyStates_Choice.access_credential_disable_reason
            case 33 => PropertyStates_Choice.access_credential_disable
            case 34 => PropertyStates_Choice.authentication_status
            case 36 => PropertyStates_Choice.backup_state
            case 37 => PropertyStates_Choice.write_status
            case 38 => PropertyStates_Choice.lighting_in_progress
            case 39 => PropertyStates_Choice.lighting_operation
            case 40 => PropertyStates_Choice.lighting_transition
            case 41 => PropertyStates_Choice.integer_value
            case 42 => PropertyStates_Choice.binary_lighting_value
            case 43 => PropertyStates_Choice.timer_state
            case 44 => PropertyStates_Choice.timer_transition
            case 45 => PropertyStates_Choice.bacnet_ip_mode
            case 46 => PropertyStates_Choice.network_port_command
            case 47 => PropertyStates_Choice.network_type
            case 48 => PropertyStates_Choice.network_number_quality
            case 49 => PropertyStates_Choice.escalator_operation_direction
            case 50 => PropertyStates_Choice.escalator_fault
            case 51 => PropertyStates_Choice.escalator_mode
            case 52 => PropertyStates_Choice.lift_car_direction
            case 53 => PropertyStates_Choice.lift_car_door_command
            case 54 => PropertyStates_Choice.lift_car_drive_status
            case 55 => PropertyStates_Choice.lift_car_mode
            case 56 => PropertyStates_Choice.lift_group_mode
            case 57 => PropertyStates_Choice.lift_fault
            case 58 => PropertyStates_Choice.protocol_level
            case 59 => PropertyStates_Choice.audit_level
            case 60 => PropertyStates_Choice.audit_operation
            case 63 => PropertyStates_Choice.extended_value
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case PropertyStates_Choice.boolean_value => 0
            case PropertyStates_Choice.binary_value => 1
            case PropertyStates_Choice.event_type => 2
            case PropertyStates_Choice.polarity => 3
            case PropertyStates_Choice.program_change => 4
            case PropertyStates_Choice.program_state => 5
            case PropertyStates_Choice.reason_for_halt => 6
            case PropertyStates_Choice.reliability => 7
            case PropertyStates_Choice.state => 8
            case PropertyStates_Choice.system_status => 9
            case PropertyStates_Choice.units => 10
            case PropertyStates_Choice.unsigned_value => 11
            case PropertyStates_Choice.life_safety_mode => 12
            case PropertyStates_Choice.life_safety_state => 13
            case PropertyStates_Choice.restart_reason => 14
            case PropertyStates_Choice.door_alarm_state => 15
            case PropertyStates_Choice.action => 16
            case PropertyStates_Choice.door_secured_status => 17
            case PropertyStates_Choice.door_status => 18
            case PropertyStates_Choice.door_value => 19
            case PropertyStates_Choice.file_access_method => 20
            case PropertyStates_Choice.lock_status => 21
            case PropertyStates_Choice.life_safety_operation => 22
            case PropertyStates_Choice.maintenance => 23
            case PropertyStates_Choice.node_type => 24
            case PropertyStates_Choice.notify_type => 25
            case PropertyStates_Choice.shed_state => 27
            case PropertyStates_Choice.silenced_state => 28
            case PropertyStates_Choice.access_event => 30
            case PropertyStates_Choice.zone_occupancy_state => 31
            case PropertyStates_Choice.access_credential_disable_reason => 32
            case PropertyStates_Choice.access_credential_disable => 33
            case PropertyStates_Choice.authentication_status => 34
            case PropertyStates_Choice.backup_state => 36
            case PropertyStates_Choice.write_status => 37
            case PropertyStates_Choice.lighting_in_progress => 38
            case PropertyStates_Choice.lighting_operation => 39
            case PropertyStates_Choice.lighting_transition => 40
            case PropertyStates_Choice.integer_value => 41
            case PropertyStates_Choice.binary_lighting_value => 42
            case PropertyStates_Choice.timer_state => 43
            case PropertyStates_Choice.timer_transition => 44
            case PropertyStates_Choice.bacnet_ip_mode => 45
            case PropertyStates_Choice.network_port_command => 46
            case PropertyStates_Choice.network_type => 47
            case PropertyStates_Choice.network_number_quality => 48
            case PropertyStates_Choice.escalator_operation_direction => 49
            case PropertyStates_Choice.escalator_fault => 50
            case PropertyStates_Choice.escalator_mode => 51
            case PropertyStates_Choice.lift_car_direction => 52
            case PropertyStates_Choice.lift_car_door_command => 53
            case PropertyStates_Choice.lift_car_drive_status => 54
            case PropertyStates_Choice.lift_car_mode => 55
            case PropertyStates_Choice.lift_group_mode => 56
            case PropertyStates_Choice.lift_fault => 57
            case PropertyStates_Choice.protocol_level => 58
            case PropertyStates_Choice.audit_level => 59
            case PropertyStates_Choice.audit_operation => 60
            case PropertyStates_Choice.extended_value => 63
            case PropertyStates_Choice.reserved(x) => x
            case PropertyStates_Choice.remove(x) => x
        }
    }

    public func toString(): String {
        match (this) {
            case PropertyStates_Choice.boolean_value => "boolean_value"
            case PropertyStates_Choice.binary_value => "binary_value"
            case PropertyStates_Choice.event_type => "event_type"
            case PropertyStates_Choice.polarity => "polarity"
            case PropertyStates_Choice.program_change => "program_change"
            case PropertyStates_Choice.program_state => "program_state"
            case PropertyStates_Choice.reason_for_halt => "reason_for_halt"
            case PropertyStates_Choice.reliability => "reliability"
            case PropertyStates_Choice.state => "state"
            case PropertyStates_Choice.system_status => "system_status"
            case PropertyStates_Choice.units => "units"
            case PropertyStates_Choice.unsigned_value => "unsigned_value"
            case PropertyStates_Choice.life_safety_mode => "life_safety_mode"
            case PropertyStates_Choice.life_safety_state => "life_safety_state"
            case PropertyStates_Choice.restart_reason => "restart_reason"
            case PropertyStates_Choice.door_alarm_state => "door_alarm_state"
            case PropertyStates_Choice.action => "action"
            case PropertyStates_Choice.door_secured_status => "door_secured_status"
            case PropertyStates_Choice.door_status => "door_status"
            case PropertyStates_Choice.door_value => "door_value"
            case PropertyStates_Choice.file_access_method => "file_access_method"
            case PropertyStates_Choice.lock_status => "lock_status"
            case PropertyStates_Choice.life_safety_operation => "life_safety_operation"
            case PropertyStates_Choice.maintenance => "maintenance"
            case PropertyStates_Choice.node_type => "node_type"
            case PropertyStates_Choice.notify_type => "notify_type"
            case PropertyStates_Choice.shed_state => "shed_state"
            case PropertyStates_Choice.silenced_state => "silenced_state"
            case PropertyStates_Choice.access_event => "access_event"
            case PropertyStates_Choice.zone_occupancy_state => "zone_occupancy_state"
            case PropertyStates_Choice.access_credential_disable_reason => "access_credential_disable_reason"
            case PropertyStates_Choice.access_credential_disable => "access_credential_disable"
            case PropertyStates_Choice.authentication_status => "authentication_status"
            case PropertyStates_Choice.backup_state => "backup_state"
            case PropertyStates_Choice.write_status => "write_status"
            case PropertyStates_Choice.lighting_in_progress => "lighting_in_progress"
            case PropertyStates_Choice.lighting_operation => "lighting_operation"
            case PropertyStates_Choice.lighting_transition => "lighting_transition"
            case PropertyStates_Choice.integer_value => "integer_value"
            case PropertyStates_Choice.binary_lighting_value => "binary_lighting_value"
            case PropertyStates_Choice.timer_state => "timer_state"
            case PropertyStates_Choice.timer_transition => "timer_transition"
            case PropertyStates_Choice.bacnet_ip_mode => "bacnet_ip_mode"
            case PropertyStates_Choice.network_port_command => "network_port_command"
            case PropertyStates_Choice.network_type => "network_type"
            case PropertyStates_Choice.network_number_quality => "network_number_quality"
            case PropertyStates_Choice.escalator_operation_direction => "escalator_operation_direction"
            case PropertyStates_Choice.escalator_fault => "escalator_fault"
            case PropertyStates_Choice.escalator_mode => "escalator_mode"
            case PropertyStates_Choice.lift_car_direction => "lift_car_direction"
            case PropertyStates_Choice.lift_car_door_command => "lift_car_door_command"
            case PropertyStates_Choice.lift_car_drive_status => "lift_car_drive_status"
            case PropertyStates_Choice.lift_car_mode => "lift_car_mode"
            case PropertyStates_Choice.lift_group_mode => "lift_group_mode"
            case PropertyStates_Choice.lift_fault => "lift_fault"
            case PropertyStates_Choice.protocol_level => "protocol_level"
            case PropertyStates_Choice.audit_level => "audit_level"
            case PropertyStates_Choice.audit_operation => "audit_operation"
            case PropertyStates_Choice.extended_value => "extended_value"
            case PropertyStates_Choice.reserved(x) => "reserved_${x}"
            case PropertyStates_Choice.remove(x) => "remove_${x}"
        }
    }

    public static func fromString(arg_str: String): PropertyStates_Choice {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "boolean_value" => PropertyStates_Choice.boolean_value
            case "binary_value" => PropertyStates_Choice.binary_value
            case "event_type" => PropertyStates_Choice.event_type
            case "polarity" => PropertyStates_Choice.polarity
            case "program_change" => PropertyStates_Choice.program_change
            case "program_state" => PropertyStates_Choice.program_state
            case "reason_for_halt" => PropertyStates_Choice.reason_for_halt
            case "reliability" => PropertyStates_Choice.reliability
            case "state" => PropertyStates_Choice.state
            case "system_status" => PropertyStates_Choice.system_status
            case "units" => PropertyStates_Choice.units
            case "unsigned_value" => PropertyStates_Choice.unsigned_value
            case "life_safety_mode" => PropertyStates_Choice.life_safety_mode
            case "life_safety_state" => PropertyStates_Choice.life_safety_state
            case "restart_reason" => PropertyStates_Choice.restart_reason
            case "door_alarm_state" => PropertyStates_Choice.door_alarm_state
            case "action" => PropertyStates_Choice.action
            case "door_secured_status" => PropertyStates_Choice.door_secured_status
            case "door_status" => PropertyStates_Choice.door_status
            case "door_value" => PropertyStates_Choice.door_value
            case "file_access_method" => PropertyStates_Choice.file_access_method
            case "lock_status" => PropertyStates_Choice.lock_status
            case "life_safety_operation" => PropertyStates_Choice.life_safety_operation
            case "maintenance" => PropertyStates_Choice.maintenance
            case "node_type" => PropertyStates_Choice.node_type
            case "notify_type" => PropertyStates_Choice.notify_type
            case "shed_state" => PropertyStates_Choice.shed_state
            case "silenced_state" => PropertyStates_Choice.silenced_state
            case "access_event" => PropertyStates_Choice.access_event
            case "zone_occupancy_state" => PropertyStates_Choice.zone_occupancy_state
            case "access_credential_disable_reason" => PropertyStates_Choice.access_credential_disable_reason
            case "access_credential_disable" => PropertyStates_Choice.access_credential_disable
            case "authentication_status" => PropertyStates_Choice.authentication_status
            case "backup_state" => PropertyStates_Choice.backup_state
            case "write_status" => PropertyStates_Choice.write_status
            case "lighting_in_progress" => PropertyStates_Choice.lighting_in_progress
            case "lighting_operation" => PropertyStates_Choice.lighting_operation
            case "lighting_transition" => PropertyStates_Choice.lighting_transition
            case "integer_value" => PropertyStates_Choice.integer_value
            case "binary_lighting_value" => PropertyStates_Choice.binary_lighting_value
            case "timer_state" => PropertyStates_Choice.timer_state
            case "timer_transition" => PropertyStates_Choice.timer_transition
            case "bacnet_ip_mode" => PropertyStates_Choice.bacnet_ip_mode
            case "network_port_command" => PropertyStates_Choice.network_port_command
            case "network_type" => PropertyStates_Choice.network_type
            case "network_number_quality" => PropertyStates_Choice.network_number_quality
            case "escalator_operation_direction" => PropertyStates_Choice.escalator_operation_direction
            case "escalator_fault" => PropertyStates_Choice.escalator_fault
            case "escalator_mode" => PropertyStates_Choice.escalator_mode
            case "lift_car_direction" => PropertyStates_Choice.lift_car_direction
            case "lift_car_door_command" => PropertyStates_Choice.lift_car_door_command
            case "lift_car_drive_status" => PropertyStates_Choice.lift_car_drive_status
            case "lift_car_mode" => PropertyStates_Choice.lift_car_mode
            case "lift_group_mode" => PropertyStates_Choice.lift_group_mode
            case "lift_fault" => PropertyStates_Choice.lift_fault
            case "protocol_level" => PropertyStates_Choice.protocol_level
            case "audit_level" => PropertyStates_Choice.audit_level
            case "audit_operation" => PropertyStates_Choice.audit_operation
            case "extended_value" => PropertyStates_Choice.extended_value
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt8.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => PropertyStates_Choice.reserved(x)
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
                        case Some(x) => PropertyStates_Choice.remove(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_950
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnetPropertyStates ::= CHOICE { -- This production represents the possible datatypes for properties that -- have discrete or enumerated values. The choice shall be consistent with the -- datatype of the property referenced in the Event Enrollment Object.
 boolean-value [0] BOOLEAN,
 binary-value [1] BACnetBinaryPV,
 event-type [2] BACnetEventType,
 polarity [3] BACnetPolarity,
 program-change [4] BACnetProgramRequest,
 program-state [5] BACnetProgramState,
 reason-for-halt [6] BACnetProgramError,
 reliability [7] BACnetReliability,
 state [8] BACnetEventState,
 system-status [9] BACnetDeviceStatus,
 units [10] BACnetEngineeringUnits,
 unsigned-value [11] Unsigned,
 life-safety-mode [12] BACnetLifeSafetyMode,
 life-safety-state [13] BACnetLifeSafetyState,
 restart-reason [14] BACnetRestartReason,
 door-alarm-state [15] BACnetDoorAlarmState,
 action [16] BACnetAction,
 door-secured-status [17] BACnetDoorSecuredStatus,
 door-status [18] BACnetDoorStatus,
 door-value [19] BACnetDoorValue,
 file-access-method [20] BACnetFileAccessMethod,
 lock-status [21] BACnetLockStatus,
 life-safety-operation [22] BACnetLifeSafetyOperation,
 maintenance [23] BACnetMaintenance,
 node-type [24] BACnetNodeType,
 notify-type [25] BACnetNotifyType,
 -- [26] removed,
 shed-state [27] BACnetShedState,
 silenced-state [28] BACnetSilencedState,
 -- [29] reserved for future addenda
 access-event [30] BACnetAccessEvent,
 zone-occupancy-state [31] BACnetAccessZoneOccupancyState,
 access-credential-disable-reason [32] BACnetAccessCredentialDisableReason,
 access-credential-disable [33] BACnetAccessCredentialDisable,
 authentication-status [34] BACnetAuthenticationStatus,
 backup-state [36] BACnetBackupState,
 write-status [37] BACnetWriteStatus,
 lighting-in-progress [38] BACnetLightingInProgress,
 lighting-operation [39] BACnetLightingOperation,
 lighting-transition [40] BACnetLightingTransition,
 integer-value [41] INTEGER,
 binary-lighting-value [42] BACnetBinaryLightingPV,
 timer-state [43] BACnetTimerState,
 timer-transition [44] BACnetTimerTransition,
 bacnet-ip-mode [45] BACnetIPMode,
 network-port-command [46] BACnetNetworkPortCommand,
 network-type [47] BACnetNetworkType,
 network-number-quality [48] BACnetNetworkNumberQuality,
 escalator-operation-direction [49] BACnetEscalatorOperationDirection,
 escalator-fault [50] BACnetEscalatorFault,
 escalator-mode [51] BACnetEscalatorMode,
 lift-car-direction [52] BACnetLiftCarDirection,
 lift-car-door-command [53] BACnetLiftCarDoorCommand,
 lift-car-drive-status [54] BACnetLiftCarDriveStatus,
 lift-car-mode [55] BACnetLiftCarMode,
 lift-group-mode [56] BACnetLiftGroupMode,
 lift-fault [57] BACnetLiftFault,
 protocol-level [58] BACnetProtocolLevel,
 audit-level [59] BACnetAuditLevel,
 audit-operation [60] BACnetAuditOperation,
 extended-value [63] Unsigned32,
 -- example-one [256] BACnetExampleTypeOne,
 -- example-two [257] BACnetExampleTypeTwo,
 ...
 }
*/
