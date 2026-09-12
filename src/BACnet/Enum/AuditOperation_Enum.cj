public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum AuditOperation_Enum <: IFromUInt32<AuditOperation_Enum> & IToUInt32 & ToString & IFromString<AuditOperation_Enum> {
    | read // (0)
    | write // (1)
    | create // (2)
    | delete // (3)
    | life_safety // (4)
    | acknowledge_alarm // (5)
    | device_disable_comm // (6)
    | device_enable_comm // (7)
    | device_reset // (8)
    | device_backup // (9)
    | device_restore // (10)
    | subscription // (11)
    | notification // (12)
    | auditing_failure // (13)
    | network_changes // (14)
    | general // (15)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): AuditOperation_Enum {
        match (arg_tag) {
            case 0 => AuditOperation_Enum.read
            case 1 => AuditOperation_Enum.write
            case 2 => AuditOperation_Enum.create
            case 3 => AuditOperation_Enum.delete
            case 4 => AuditOperation_Enum.life_safety
            case 5 => AuditOperation_Enum.acknowledge_alarm
            case 6 => AuditOperation_Enum.device_disable_comm
            case 7 => AuditOperation_Enum.device_enable_comm
            case 8 => AuditOperation_Enum.device_reset
            case 9 => AuditOperation_Enum.device_backup
            case 10 => AuditOperation_Enum.device_restore
            case 11 => AuditOperation_Enum.subscription
            case 12 => AuditOperation_Enum.notification
            case 13 => AuditOperation_Enum.auditing_failure
            case 14 => AuditOperation_Enum.network_changes
            case 15 => AuditOperation_Enum.general
            case x where x <= 31 => AuditOperation_Enum.reserved(x)
            case y where y > 31 && y <= 63 => AuditOperation_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case AuditOperation_Enum.read => 0
            case AuditOperation_Enum.write => 1
            case AuditOperation_Enum.create => 2
            case AuditOperation_Enum.delete => 3
            case AuditOperation_Enum.life_safety => 4
            case AuditOperation_Enum.acknowledge_alarm => 5
            case AuditOperation_Enum.device_disable_comm => 6
            case AuditOperation_Enum.device_enable_comm => 7
            case AuditOperation_Enum.device_reset => 8
            case AuditOperation_Enum.device_backup => 9
            case AuditOperation_Enum.device_restore => 10
            case AuditOperation_Enum.subscription => 11
            case AuditOperation_Enum.notification => 12
            case AuditOperation_Enum.auditing_failure => 13
            case AuditOperation_Enum.network_changes => 14
            case AuditOperation_Enum.general => 15
            case AuditOperation_Enum.reserved(x) => x
            case AuditOperation_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case AuditOperation_Enum.read => "read"
            case AuditOperation_Enum.write => "write"
            case AuditOperation_Enum.create => "create"
            case AuditOperation_Enum.delete => "delete"
            case AuditOperation_Enum.life_safety => "life_safety"
            case AuditOperation_Enum.acknowledge_alarm => "acknowledge_alarm"
            case AuditOperation_Enum.device_disable_comm => "device_disable_comm"
            case AuditOperation_Enum.device_enable_comm => "device_enable_comm"
            case AuditOperation_Enum.device_reset => "device_reset"
            case AuditOperation_Enum.device_backup => "device_backup"
            case AuditOperation_Enum.device_restore => "device_restore"
            case AuditOperation_Enum.subscription => "subscription"
            case AuditOperation_Enum.notification => "notification"
            case AuditOperation_Enum.auditing_failure => "auditing_failure"
            case AuditOperation_Enum.network_changes => "network_changes"
            case AuditOperation_Enum.general => "general"
            case AuditOperation_Enum.reserved(x) => "reserved_${x}"
            case AuditOperation_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): AuditOperation_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "read" => AuditOperation_Enum.read
            case "write" => AuditOperation_Enum.write
            case "create" => AuditOperation_Enum.create
            case "delete" => AuditOperation_Enum.delete
            case "life_safety" => AuditOperation_Enum.life_safety
            case "acknowledge_alarm" => AuditOperation_Enum.acknowledge_alarm
            case "device_disable_comm" => AuditOperation_Enum.device_disable_comm
            case "device_enable_comm" => AuditOperation_Enum.device_enable_comm
            case "device_reset" => AuditOperation_Enum.device_reset
            case "device_backup" => AuditOperation_Enum.device_backup
            case "device_restore" => AuditOperation_Enum.device_restore
            case "subscription" => AuditOperation_Enum.subscription
            case "notification" => AuditOperation_Enum.notification
            case "auditing_failure" => AuditOperation_Enum.auditing_failure
            case "network_changes" => AuditOperation_Enum.network_changes
            case "general" => AuditOperation_Enum.general
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => AuditOperation_Enum.reserved(x)
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
                        case Some(x) => AuditOperation_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_897
--21.6 Base Types

BACnetAuditOperation ::= ENUMERATED {
 read (0),
 write (1),
 create (2),
 delete (3),
 life-safety (4),
 acknowledge-alarm (5),
 device-disable-comm (6),
 device-enable-comm (7),
 device-reset (8),
 device-backup (9),
 device-restore (10),
 subscription (11),
 notification (12),
 auditing-failure (13),
 network-changes (14),
 general (15),
 ...
 } -- Enumerated values 0-31 are reserved for definition by ASHRAE. Enumerated values 32-63 may be used -- by others subject to the procedures and constraints described in Clause 23. -- The enumerated values match the bit positions in BACnetAuditOperationFlags.
*/
