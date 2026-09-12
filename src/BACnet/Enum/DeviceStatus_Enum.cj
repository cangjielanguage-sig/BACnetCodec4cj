public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum DeviceStatus_Enum <: IFromUInt32<DeviceStatus_Enum> & IToUInt32 & ToString & IFromString<DeviceStatus_Enum> {
    | operational // (0)
    | operational_read_only // (1)
    | download_required // (2)
    | download_in_progress // (3)
    | non_operational // (4)
    | backup_in_progress // (5)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): DeviceStatus_Enum {
        match (arg_tag) {
            case 0 => DeviceStatus_Enum.operational
            case 1 => DeviceStatus_Enum.operational_read_only
            case 2 => DeviceStatus_Enum.download_required
            case 3 => DeviceStatus_Enum.download_in_progress
            case 4 => DeviceStatus_Enum.non_operational
            case 5 => DeviceStatus_Enum.backup_in_progress
            case x where x <= 63 => DeviceStatus_Enum.reserved(x)
            case y where y > 63 && y <= 65535 => DeviceStatus_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case DeviceStatus_Enum.operational => 0
            case DeviceStatus_Enum.operational_read_only => 1
            case DeviceStatus_Enum.download_required => 2
            case DeviceStatus_Enum.download_in_progress => 3
            case DeviceStatus_Enum.non_operational => 4
            case DeviceStatus_Enum.backup_in_progress => 5
            case DeviceStatus_Enum.reserved(x) => x
            case DeviceStatus_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case DeviceStatus_Enum.operational => "operational"
            case DeviceStatus_Enum.operational_read_only => "operational_read_only"
            case DeviceStatus_Enum.download_required => "download_required"
            case DeviceStatus_Enum.download_in_progress => "download_in_progress"
            case DeviceStatus_Enum.non_operational => "non_operational"
            case DeviceStatus_Enum.backup_in_progress => "backup_in_progress"
            case DeviceStatus_Enum.reserved(x) => "reserved_${x}"
            case DeviceStatus_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): DeviceStatus_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "operational" => DeviceStatus_Enum.operational
            case "operational_read_only" => DeviceStatus_Enum.operational_read_only
            case "download_required" => DeviceStatus_Enum.download_required
            case "download_in_progress" => DeviceStatus_Enum.download_in_progress
            case "non_operational" => DeviceStatus_Enum.non_operational
            case "backup_in_progress" => DeviceStatus_Enum.backup_in_progress
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => DeviceStatus_Enum.reserved(x)
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
                        case Some(x) => DeviceStatus_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_901
--21.6 Base Types

BACnetDeviceStatus ::= ENUMERATED {
 operational (0),
 operational-read-only (1),
 download-required (2),
 download-in-progress (3),
 non-operational (4),
 backup-in-progress (5),
 ...
 }
 -- Enumerated values 0-63 are reserved for definition by ASHRAE. Enumerated values
 -- 64-65535 may be used by others subject to the procedures and constraints described
 -- in Clause 23.
--ISO_16484_5_2022_Page_902
*/
