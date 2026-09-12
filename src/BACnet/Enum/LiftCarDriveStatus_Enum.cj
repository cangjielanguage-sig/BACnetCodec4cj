public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum LiftCarDriveStatus_Enum <: IFromUInt32<LiftCarDriveStatus_Enum> & IToUInt32 & ToString & IFromString<LiftCarDriveStatus_Enum> {
    | unknown // (0)
    | stationary // (1)
    | braking // (2)
    | accelerate // (3)
    | decelerate // (4)
    | rated_speed // (5)
    | single_floor_jump // (6)
    | two_floor_jump // (7)
    | three_floor_jump // (8)
    | multi_floor_jump // (9)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): LiftCarDriveStatus_Enum {
        match (arg_tag) {
            case 0 => LiftCarDriveStatus_Enum.unknown
            case 1 => LiftCarDriveStatus_Enum.stationary
            case 2 => LiftCarDriveStatus_Enum.braking
            case 3 => LiftCarDriveStatus_Enum.accelerate
            case 4 => LiftCarDriveStatus_Enum.decelerate
            case 5 => LiftCarDriveStatus_Enum.rated_speed
            case 6 => LiftCarDriveStatus_Enum.single_floor_jump
            case 7 => LiftCarDriveStatus_Enum.two_floor_jump
            case 8 => LiftCarDriveStatus_Enum.three_floor_jump
            case 9 => LiftCarDriveStatus_Enum.multi_floor_jump
            case x where x <= 1023 => LiftCarDriveStatus_Enum.reserved(x)
            case y where y > 1023 && y <= 65535 => LiftCarDriveStatus_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case LiftCarDriveStatus_Enum.unknown => 0
            case LiftCarDriveStatus_Enum.stationary => 1
            case LiftCarDriveStatus_Enum.braking => 2
            case LiftCarDriveStatus_Enum.accelerate => 3
            case LiftCarDriveStatus_Enum.decelerate => 4
            case LiftCarDriveStatus_Enum.rated_speed => 5
            case LiftCarDriveStatus_Enum.single_floor_jump => 6
            case LiftCarDriveStatus_Enum.two_floor_jump => 7
            case LiftCarDriveStatus_Enum.three_floor_jump => 8
            case LiftCarDriveStatus_Enum.multi_floor_jump => 9
            case LiftCarDriveStatus_Enum.reserved(x) => x
            case LiftCarDriveStatus_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case LiftCarDriveStatus_Enum.unknown => "unknown"
            case LiftCarDriveStatus_Enum.stationary => "stationary"
            case LiftCarDriveStatus_Enum.braking => "braking"
            case LiftCarDriveStatus_Enum.accelerate => "accelerate"
            case LiftCarDriveStatus_Enum.decelerate => "decelerate"
            case LiftCarDriveStatus_Enum.rated_speed => "rated_speed"
            case LiftCarDriveStatus_Enum.single_floor_jump => "single_floor_jump"
            case LiftCarDriveStatus_Enum.two_floor_jump => "two_floor_jump"
            case LiftCarDriveStatus_Enum.three_floor_jump => "three_floor_jump"
            case LiftCarDriveStatus_Enum.multi_floor_jump => "multi_floor_jump"
            case LiftCarDriveStatus_Enum.reserved(x) => "reserved_${x}"
            case LiftCarDriveStatus_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): LiftCarDriveStatus_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "unknown" => LiftCarDriveStatus_Enum.unknown
            case "stationary" => LiftCarDriveStatus_Enum.stationary
            case "braking" => LiftCarDriveStatus_Enum.braking
            case "accelerate" => LiftCarDriveStatus_Enum.accelerate
            case "decelerate" => LiftCarDriveStatus_Enum.decelerate
            case "rated_speed" => LiftCarDriveStatus_Enum.rated_speed
            case "single_floor_jump" => LiftCarDriveStatus_Enum.single_floor_jump
            case "two_floor_jump" => LiftCarDriveStatus_Enum.two_floor_jump
            case "three_floor_jump" => LiftCarDriveStatus_Enum.three_floor_jump
            case "multi_floor_jump" => LiftCarDriveStatus_Enum.multi_floor_jump
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => LiftCarDriveStatus_Enum.reserved(x)
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
                        case Some(x) => LiftCarDriveStatus_Enum.non_standardized(x)
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

BACnetLiftCarDriveStatus ::= ENUMERATED {
 unknown (0),
 stationary (1),
 braking (2),
 accelerate (3),
 decelerate (4),
 rated-speed (5),
 single-floor-jump (6),
 two-floor-jump (7),
 three-floor-jump (8),
 multi-floor-jump (9),
 ...
 } -- Enumerated values 0-1023 are reserved for definition by ASHRAE. Enumerated values -- 1024-65535 may be used by others subject to the procedures and constraints described -- in Clause 23.
*/
