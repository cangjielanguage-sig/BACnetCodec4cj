public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum LiftCarMode_Enum <: IFromUInt32<LiftCarMode_Enum> & IToUInt32 & ToString & IFromString<LiftCarMode_Enum> {
    | unknown // (0)
    | normal // (1)
    | vip // (2)
    | homing // (3)
    | parking // (4)
    | attendant_control // (5)
    | firefighter_control // (6)
    | emergency_power // (7)
    | inspection // (8)
    | cabinet_recall // (9)
    | earthquake_operation // (10)
    | fire_operation // (11)
    | out_of_service // (12)
    | occupant_evacuation // (13)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): LiftCarMode_Enum {
        match (arg_tag) {
            case 0 => LiftCarMode_Enum.unknown
            case 1 => LiftCarMode_Enum.normal
            case 2 => LiftCarMode_Enum.vip
            case 3 => LiftCarMode_Enum.homing
            case 4 => LiftCarMode_Enum.parking
            case 5 => LiftCarMode_Enum.attendant_control
            case 6 => LiftCarMode_Enum.firefighter_control
            case 7 => LiftCarMode_Enum.emergency_power
            case 8 => LiftCarMode_Enum.inspection
            case 9 => LiftCarMode_Enum.cabinet_recall
            case 10 => LiftCarMode_Enum.earthquake_operation
            case 11 => LiftCarMode_Enum.fire_operation
            case 12 => LiftCarMode_Enum.out_of_service
            case 13 => LiftCarMode_Enum.occupant_evacuation
            case x where x <= 1023 => LiftCarMode_Enum.reserved(x)
            case y where y > 1023 && y <= 65535 => LiftCarMode_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case LiftCarMode_Enum.unknown => 0
            case LiftCarMode_Enum.normal => 1
            case LiftCarMode_Enum.vip => 2
            case LiftCarMode_Enum.homing => 3
            case LiftCarMode_Enum.parking => 4
            case LiftCarMode_Enum.attendant_control => 5
            case LiftCarMode_Enum.firefighter_control => 6
            case LiftCarMode_Enum.emergency_power => 7
            case LiftCarMode_Enum.inspection => 8
            case LiftCarMode_Enum.cabinet_recall => 9
            case LiftCarMode_Enum.earthquake_operation => 10
            case LiftCarMode_Enum.fire_operation => 11
            case LiftCarMode_Enum.out_of_service => 12
            case LiftCarMode_Enum.occupant_evacuation => 13
            case LiftCarMode_Enum.reserved(x) => x
            case LiftCarMode_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case LiftCarMode_Enum.unknown => "unknown"
            case LiftCarMode_Enum.normal => "normal"
            case LiftCarMode_Enum.vip => "vip"
            case LiftCarMode_Enum.homing => "homing"
            case LiftCarMode_Enum.parking => "parking"
            case LiftCarMode_Enum.attendant_control => "attendant_control"
            case LiftCarMode_Enum.firefighter_control => "firefighter_control"
            case LiftCarMode_Enum.emergency_power => "emergency_power"
            case LiftCarMode_Enum.inspection => "inspection"
            case LiftCarMode_Enum.cabinet_recall => "cabinet_recall"
            case LiftCarMode_Enum.earthquake_operation => "earthquake_operation"
            case LiftCarMode_Enum.fire_operation => "fire_operation"
            case LiftCarMode_Enum.out_of_service => "out_of_service"
            case LiftCarMode_Enum.occupant_evacuation => "occupant_evacuation"
            case LiftCarMode_Enum.reserved(x) => "reserved_${x}"
            case LiftCarMode_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): LiftCarMode_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "unknown" => LiftCarMode_Enum.unknown
            case "normal" => LiftCarMode_Enum.normal
            case "vip" => LiftCarMode_Enum.vip
            case "homing" => LiftCarMode_Enum.homing
            case "parking" => LiftCarMode_Enum.parking
            case "attendant_control" => LiftCarMode_Enum.attendant_control
            case "firefighter_control" => LiftCarMode_Enum.firefighter_control
            case "emergency_power" => LiftCarMode_Enum.emergency_power
            case "inspection" => LiftCarMode_Enum.inspection
            case "cabinet_recall" => LiftCarMode_Enum.cabinet_recall
            case "earthquake_operation" => LiftCarMode_Enum.earthquake_operation
            case "fire_operation" => LiftCarMode_Enum.fire_operation
            case "out_of_service" => LiftCarMode_Enum.out_of_service
            case "occupant_evacuation" => LiftCarMode_Enum.occupant_evacuation
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => LiftCarMode_Enum.reserved(x)
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
                        case Some(x) => LiftCarMode_Enum.non_standardized(x)
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

BACnetLiftCarMode ::= ENUMERATED {
 unknown (0),
 normal (1), -- in service
 vip (2),
 homing (3),
 parking (4),
 attendant-control (5),
 firefighter-control (6),
 emergency-power (7),
 inspection (8),
 cabinet-recall (9),
 earthquake-operation (10),
 fire-operation (11),
 out-of-service (12),
 occupant-evacuation (13),
 ...
 } -- Enumerated values 0-1023 are reserved for definition by ASHRAE. Enumerated values -- 1024-65535 may be used by others subject to the procedures and constraints described -- in Clause 23.
*/
