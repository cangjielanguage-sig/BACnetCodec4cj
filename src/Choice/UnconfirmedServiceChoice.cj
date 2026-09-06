public package BACnetCodec4cj.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetException.*

public enum UnconfirmedServiceChoice <: IFromUInt8<UnconfirmedServiceChoice> & IToUInt8 {
    | I_am // [0]
    | I_have // [1]
    | Unconfirmed_cov_notification // [2]
    | Unconfirmed_event_notification // [3]
    | Unconfirmed_private_transfer // [4]
    | Unconfirmed_text_message // [5]
    | Time_synchronization // [6]
    | Who_has // [7]
    | Who_is // [8]
    | Utc_time_synchronization // [9]
    | Write_group // [10]
    | Unconfirmed_cov_notification_multiple // [11]
    | Unconfirmed_audit_notification // [12]
    | Who_Am_I // [13]
    | You_Are // [14]

    // ==================== 正向转换函数 (Int8 → 枚举) ====================
    public static func fromUInt8(tag: UInt8): UnconfirmedServiceChoice {
        match (tag) {
            // 合法分支（覆盖所有协议定义标签 0-14）
            case 0 => UnconfirmedServiceChoice.I_am
            case 1 => UnconfirmedServiceChoice.I_have
            case 2 => UnconfirmedServiceChoice.Unconfirmed_cov_notification
            case 3 => UnconfirmedServiceChoice.Unconfirmed_event_notification
            case 4 => UnconfirmedServiceChoice.Unconfirmed_private_transfer
            case 5 => UnconfirmedServiceChoice.Unconfirmed_text_message
            case 6 => UnconfirmedServiceChoice.Time_synchronization
            case 7 => UnconfirmedServiceChoice.Who_has
            case 8 => UnconfirmedServiceChoice.Who_is
            case 9 => UnconfirmedServiceChoice.Utc_time_synchronization
            case 10 => UnconfirmedServiceChoice.Write_group
            case 11 => UnconfirmedServiceChoice.Unconfirmed_cov_notification_multiple
            case 12 => UnconfirmedServiceChoice.Unconfirmed_audit_notification
            case 13 => UnconfirmedServiceChoice.Who_Am_I
            case 14 => UnconfirmedServiceChoice.You_Are

            // 非法标签值（直接抛出字符串描述错误）
            case _ => throw BACnetDecodeError(
                "Encountered an undefined value when decoding the BACnetUnconfirmedServiceChoice field.")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            // 显式列出所有枚举分支
            case UnconfirmedServiceChoice.I_am => 0
            case UnconfirmedServiceChoice.I_have => 1
            case UnconfirmedServiceChoice.Unconfirmed_cov_notification => 2
            case UnconfirmedServiceChoice.Unconfirmed_event_notification => 3
            case UnconfirmedServiceChoice.Unconfirmed_private_transfer => 4
            case UnconfirmedServiceChoice.Unconfirmed_text_message => 5
            case UnconfirmedServiceChoice.Time_synchronization => 6
            case UnconfirmedServiceChoice.Who_has => 7
            case UnconfirmedServiceChoice.Who_is => 8
            case UnconfirmedServiceChoice.Utc_time_synchronization => 9
            case UnconfirmedServiceChoice.Write_group => 10
            case UnconfirmedServiceChoice.Unconfirmed_cov_notification_multiple => 11
            case UnconfirmedServiceChoice.Unconfirmed_audit_notification => 12
            case UnconfirmedServiceChoice.Who_Am_I => 13
            case UnconfirmedServiceChoice.You_Are => 14
        }
    }
}

/*
--ISO_16484_5_2022_Page_878
--21.3 Unconfirmed Service Productions

BACnetUnconfirmedServiceChoice ::= ENUMERATED {
 i-am (0),
 i-have (1),
 unconfirmed-cov-notification (2),
 unconfirmed-event-notification (3),
 unconfirmed-private-transfer (4),
 unconfirmed-text-message (5),
 time-synchronization (6),
 who-has (7),
 who-is (8),
 utc-time-synchronization (9),
 write-group (10),
 unconfirmed-cov-notification-multiple (11),
 unconfirmed-audit-notification (12),
 who-Am-I (13),
 you-Are (14)
 } -- Other services to be added as they are defined. All choice values in this production are reserved for definition by -- ASHRAE. Proprietary extensions are made by using the UnconfirmedPrivateTransfer service. See Clause 23.
*/
