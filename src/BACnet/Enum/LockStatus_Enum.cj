public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum LockStatus_Enum <: IFromUInt32<LockStatus_Enum> & IToUInt32 & ToString & IFromString<LockStatus_Enum> {
    | locked // (0)
    | unlocked // (1)
    | lock_fault // (2)
    | unused // (3)
    | unknown // (4)

    public static func fromUInt32(arg_tag: UInt32): LockStatus_Enum {
        match (arg_tag) {
            case 0 => LockStatus_Enum.locked
            case 1 => LockStatus_Enum.unlocked
            case 2 => LockStatus_Enum.lock_fault
            case 3 => LockStatus_Enum.unused
            case 4 => LockStatus_Enum.unknown
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case LockStatus_Enum.locked => 0
            case LockStatus_Enum.unlocked => 1
            case LockStatus_Enum.lock_fault => 2
            case LockStatus_Enum.unused => 3
            case LockStatus_Enum.unknown => 4
        }
    }

    public func toString(): String {
        match (this) {
            case LockStatus_Enum.locked => "locked"
            case LockStatus_Enum.unlocked => "unlocked"
            case LockStatus_Enum.lock_fault => "lock_fault"
            case LockStatus_Enum.unused => "unused"
            case LockStatus_Enum.unknown => "unknown"
        }
    }

    public static func fromString(arg_str: String): LockStatus_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "locked" => LockStatus_Enum.locked
            case "unlocked" => LockStatus_Enum.unlocked
            case "lock_fault" => LockStatus_Enum.lock_fault
            case "unused" => LockStatus_Enum.unused
            case "unknown" => LockStatus_Enum.unknown
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_923
--21.6 Base Types

BACnetLockStatus ::= ENUMERATED {
 locked (0),
 unlocked (1),
 lock-fault (2),
 unused (3),
 unknown (4)
 }
*/
