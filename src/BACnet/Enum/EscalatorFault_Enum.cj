public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum EscalatorFault_Enum <: IFromUInt32<EscalatorFault_Enum> & IToUInt32 & ToString & IFromString<EscalatorFault_Enum> {
    | controller_fault // (0)
    | drive_and_motor_fault // (1)
    | mechanical_component_fault // (2)
    | overspeed_fault // (3)
    | power_supply_fault // (4)
    | safety_device_fault // (5)
    | controller_supply_fault // (6)
    | drive_temperature_exceeded // (7)
    | comb_plate_fault // (8)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): EscalatorFault_Enum {
        match (arg_tag) {
            case 0 => EscalatorFault_Enum.controller_fault
            case 1 => EscalatorFault_Enum.drive_and_motor_fault
            case 2 => EscalatorFault_Enum.mechanical_component_fault
            case 3 => EscalatorFault_Enum.overspeed_fault
            case 4 => EscalatorFault_Enum.power_supply_fault
            case 5 => EscalatorFault_Enum.safety_device_fault
            case 6 => EscalatorFault_Enum.controller_supply_fault
            case 7 => EscalatorFault_Enum.drive_temperature_exceeded
            case 8 => EscalatorFault_Enum.comb_plate_fault
            case x where x <= 1023 => EscalatorFault_Enum.reserved(x)
            case y where y > 1023 && y <= 65535 => EscalatorFault_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case EscalatorFault_Enum.controller_fault => 0
            case EscalatorFault_Enum.drive_and_motor_fault => 1
            case EscalatorFault_Enum.mechanical_component_fault => 2
            case EscalatorFault_Enum.overspeed_fault => 3
            case EscalatorFault_Enum.power_supply_fault => 4
            case EscalatorFault_Enum.safety_device_fault => 5
            case EscalatorFault_Enum.controller_supply_fault => 6
            case EscalatorFault_Enum.drive_temperature_exceeded => 7
            case EscalatorFault_Enum.comb_plate_fault => 8
            case EscalatorFault_Enum.reserved(x) => x
            case EscalatorFault_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case EscalatorFault_Enum.controller_fault => "controller_fault"
            case EscalatorFault_Enum.drive_and_motor_fault => "drive_and_motor_fault"
            case EscalatorFault_Enum.mechanical_component_fault => "mechanical_component_fault"
            case EscalatorFault_Enum.overspeed_fault => "overspeed_fault"
            case EscalatorFault_Enum.power_supply_fault => "power_supply_fault"
            case EscalatorFault_Enum.safety_device_fault => "safety_device_fault"
            case EscalatorFault_Enum.controller_supply_fault => "controller_supply_fault"
            case EscalatorFault_Enum.drive_temperature_exceeded => "drive_temperature_exceeded"
            case EscalatorFault_Enum.comb_plate_fault => "comb_plate_fault"
            case EscalatorFault_Enum.reserved(x) => "reserved_${x}"
            case EscalatorFault_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): EscalatorFault_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "controller_fault" => EscalatorFault_Enum.controller_fault
            case "drive_and_motor_fault" => EscalatorFault_Enum.drive_and_motor_fault
            case "mechanical_component_fault" => EscalatorFault_Enum.mechanical_component_fault
            case "overspeed_fault" => EscalatorFault_Enum.overspeed_fault
            case "power_supply_fault" => EscalatorFault_Enum.power_supply_fault
            case "safety_device_fault" => EscalatorFault_Enum.safety_device_fault
            case "controller_supply_fault" => EscalatorFault_Enum.controller_supply_fault
            case "drive_temperature_exceeded" => EscalatorFault_Enum.drive_temperature_exceeded
            case "comb_plate_fault" => EscalatorFault_Enum.comb_plate_fault
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => EscalatorFault_Enum.reserved(x)
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
                        case Some(x) => EscalatorFault_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_913
--21.6 Base Types

BACnetEscalatorFault ::= ENUMERATED {
 controller-fault (0),
 drive-and-motor-fault (1),
 mechanical-component-fault (2),
 overspeed-fault (3),
 power-supply-fault (4),
 safety-device-fault (5),
 controller-supply-fault (6),
 drive-temperature-exceeded (7),
 comb-plate-fault (8),
 ...
 } -- Enumerated values 0-1023 are reserved for definition by ASHRAE. Enumerated values -- 1024-65535 may be used by others subject to the procedures and constraints described -- in Clause 23.
*/
