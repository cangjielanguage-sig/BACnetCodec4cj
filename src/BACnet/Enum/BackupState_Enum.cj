public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum BackupState_Enum <: IFromUInt32<BackupState_Enum> & IToUInt32 & ToString & IFromString<BackupState_Enum> {
    | idle // (0)
    | preparing_for_backup // (1)
    | preparing_for_restore // (2)
    | performing_a_backup // (3)
    | performing_a_restore // (4)
    | backup_failure // (5)
    | restore_failure // (6)

    public static func fromUInt32(arg_tag: UInt32): BackupState_Enum {
        match (arg_tag) {
            case 0 => BackupState_Enum.idle
            case 1 => BackupState_Enum.preparing_for_backup
            case 2 => BackupState_Enum.preparing_for_restore
            case 3 => BackupState_Enum.performing_a_backup
            case 4 => BackupState_Enum.performing_a_restore
            case 5 => BackupState_Enum.backup_failure
            case 6 => BackupState_Enum.restore_failure
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case BackupState_Enum.idle => 0
            case BackupState_Enum.preparing_for_backup => 1
            case BackupState_Enum.preparing_for_restore => 2
            case BackupState_Enum.performing_a_backup => 3
            case BackupState_Enum.performing_a_restore => 4
            case BackupState_Enum.backup_failure => 5
            case BackupState_Enum.restore_failure => 6
        }
    }

    public func toString(): String {
        match (this) {
            case BackupState_Enum.idle => "idle"
            case BackupState_Enum.preparing_for_backup => "preparing_for_backup"
            case BackupState_Enum.preparing_for_restore => "preparing_for_restore"
            case BackupState_Enum.performing_a_backup => "performing_a_backup"
            case BackupState_Enum.performing_a_restore => "performing_a_restore"
            case BackupState_Enum.backup_failure => "backup_failure"
            case BackupState_Enum.restore_failure => "restore_failure"
        }
    }

    public static func fromString(arg_str: String): BackupState_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "idle" => BackupState_Enum.idle
            case "preparing_for_backup" => BackupState_Enum.preparing_for_backup
            case "preparing_for_restore" => BackupState_Enum.preparing_for_restore
            case "performing_a_backup" => BackupState_Enum.performing_a_backup
            case "performing_a_restore" => BackupState_Enum.performing_a_restore
            case "backup_failure" => BackupState_Enum.backup_failure
            case "restore_failure" => BackupState_Enum.restore_failure
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_899
--21.6 Base Types

BACnetBackupState ::= ENUMERATED {
 idle (0),
 preparing-for-backup (1),
 preparing-for-restore (2),
 performing-a-backup (3),
 performing-a-restore (4),
 backup-failure (5),
 restore-failure (6)
 }
*/
