public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum LiftFault_Enum <: IFromUInt32<LiftFault_Enum> & IToUInt32 & ToString & IFromString<LiftFault_Enum> {
    | controller_fault // (0)
    | drive_and_motor_fault // (1)
    | governor_and_safety_gear_fault // (2)
    | lift_shaft_device_fault // (3)
    | power_supply_fault // (4)
    | safety_interlock_fault // (5)
    | door_closing_fault // (6)
    | door_opening_fault // (7)
    | car_stopped_outside_landing_zone // (8)
    | call_button_stuck // (9)
    | start_failure // (10)
    | controller_supply_fault // (11)
    | self_test_failure // (12)
    | runtime_limit_exceeded // (13)
    | position_lost // (14)
    | drive_temperature_exceeded // (15)
    | load_measurement_fault // (16)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): LiftFault_Enum {
        match (arg_tag) {
            case 0 => LiftFault_Enum.controller_fault
            case 1 => LiftFault_Enum.drive_and_motor_fault
            case 2 => LiftFault_Enum.governor_and_safety_gear_fault
            case 3 => LiftFault_Enum.lift_shaft_device_fault
            case 4 => LiftFault_Enum.power_supply_fault
            case 5 => LiftFault_Enum.safety_interlock_fault
            case 6 => LiftFault_Enum.door_closing_fault
            case 7 => LiftFault_Enum.door_opening_fault
            case 8 => LiftFault_Enum.car_stopped_outside_landing_zone
            case 9 => LiftFault_Enum.call_button_stuck
            case 10 => LiftFault_Enum.start_failure
            case 11 => LiftFault_Enum.controller_supply_fault
            case 12 => LiftFault_Enum.self_test_failure
            case 13 => LiftFault_Enum.runtime_limit_exceeded
            case 14 => LiftFault_Enum.position_lost
            case 15 => LiftFault_Enum.drive_temperature_exceeded
            case 16 => LiftFault_Enum.load_measurement_fault
            case x where x <= 1023 => LiftFault_Enum.reserved(x)
            case y where y > 1023 && y <= 65535 => LiftFault_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case LiftFault_Enum.controller_fault => 0
            case LiftFault_Enum.drive_and_motor_fault => 1
            case LiftFault_Enum.governor_and_safety_gear_fault => 2
            case LiftFault_Enum.lift_shaft_device_fault => 3
            case LiftFault_Enum.power_supply_fault => 4
            case LiftFault_Enum.safety_interlock_fault => 5
            case LiftFault_Enum.door_closing_fault => 6
            case LiftFault_Enum.door_opening_fault => 7
            case LiftFault_Enum.car_stopped_outside_landing_zone => 8
            case LiftFault_Enum.call_button_stuck => 9
            case LiftFault_Enum.start_failure => 10
            case LiftFault_Enum.controller_supply_fault => 11
            case LiftFault_Enum.self_test_failure => 12
            case LiftFault_Enum.runtime_limit_exceeded => 13
            case LiftFault_Enum.position_lost => 14
            case LiftFault_Enum.drive_temperature_exceeded => 15
            case LiftFault_Enum.load_measurement_fault => 16
            case LiftFault_Enum.reserved(x) => x
            case LiftFault_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case LiftFault_Enum.controller_fault => "controller_fault"
            case LiftFault_Enum.drive_and_motor_fault => "drive_and_motor_fault"
            case LiftFault_Enum.governor_and_safety_gear_fault => "governor_and_safety_gear_fault"
            case LiftFault_Enum.lift_shaft_device_fault => "lift_shaft_device_fault"
            case LiftFault_Enum.power_supply_fault => "power_supply_fault"
            case LiftFault_Enum.safety_interlock_fault => "safety_interlock_fault"
            case LiftFault_Enum.door_closing_fault => "door_closing_fault"
            case LiftFault_Enum.door_opening_fault => "door_opening_fault"
            case LiftFault_Enum.car_stopped_outside_landing_zone => "car_stopped_outside_landing_zone"
            case LiftFault_Enum.call_button_stuck => "call_button_stuck"
            case LiftFault_Enum.start_failure => "start_failure"
            case LiftFault_Enum.controller_supply_fault => "controller_supply_fault"
            case LiftFault_Enum.self_test_failure => "self_test_failure"
            case LiftFault_Enum.runtime_limit_exceeded => "runtime_limit_exceeded"
            case LiftFault_Enum.position_lost => "position_lost"
            case LiftFault_Enum.drive_temperature_exceeded => "drive_temperature_exceeded"
            case LiftFault_Enum.load_measurement_fault => "load_measurement_fault"
            case LiftFault_Enum.reserved(x) => "reserved_${x}"
            case LiftFault_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): LiftFault_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "controller_fault" => LiftFault_Enum.controller_fault
            case "drive_and_motor_fault" => LiftFault_Enum.drive_and_motor_fault
            case "governor_and_safety_gear_fault" => LiftFault_Enum.governor_and_safety_gear_fault
            case "lift_shaft_device_fault" => LiftFault_Enum.lift_shaft_device_fault
            case "power_supply_fault" => LiftFault_Enum.power_supply_fault
            case "safety_interlock_fault" => LiftFault_Enum.safety_interlock_fault
            case "door_closing_fault" => LiftFault_Enum.door_closing_fault
            case "door_opening_fault" => LiftFault_Enum.door_opening_fault
            case "car_stopped_outside_landing_zone" => LiftFault_Enum.car_stopped_outside_landing_zone
            case "call_button_stuck" => LiftFault_Enum.call_button_stuck
            case "start_failure" => LiftFault_Enum.start_failure
            case "controller_supply_fault" => LiftFault_Enum.controller_supply_fault
            case "self_test_failure" => LiftFault_Enum.self_test_failure
            case "runtime_limit_exceeded" => LiftFault_Enum.runtime_limit_exceeded
            case "position_lost" => LiftFault_Enum.position_lost
            case "drive_temperature_exceeded" => LiftFault_Enum.drive_temperature_exceeded
            case "load_measurement_fault" => LiftFault_Enum.load_measurement_fault
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => LiftFault_Enum.reserved(x)
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
                        case Some(x) => LiftFault_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_921
--21.6 Base Types

BACnetLiftFault ::= ENUMERATED {
 controller-fault (0),
 drive-and-motor-fault (1),
 governor-and-safety-gear-fault (2),
 lift-shaft-device-fault (3),
 power-supply-fault (4),
 safety-interlock-fault (5),
 door-closing-fault (6),
 door-opening-fault (7),
 car-stopped-outside-landing-zone (8),
 call-button-stuck (9),
 start-failure (10),
 controller-supply-fault (11),
 self-test-failure (12),
 runtime-limit-exceeded (13),
 position-lost (14),
 drive-temperature-exceeded (15),
 load-measurement-fault (16),
 ...
 } -- Enumerated values 0-1023 are reserved for definition by ASHRAE. Enumerated values -- 1024-65535 may be used by others subject to the procedures and constraints described -- in Clause 23.
--ISO_16484_5_2022_Page_922
*/
