public package BACnetCodec4cj.Types.UnconfirmedService

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

public enum UnconfirmedServiceRequest <: IFromUInt8<UnconfirmedServiceRequest> & IToUInt8 {
    | I_am_request // [0] I-Am-Request
    | I_have_request // [1] I-Have-Request
    | Unconfirmed_cov_notification_request // [2] UnconfirmedCOVNotification-Request
    | Unconfirmed_event_notification_request // [3] UnconfirmedEventNotification-Request
    | Unconfirmed_private_transfer_request // [4] UnconfirmedPrivateTransfer-Request
    | Unconfirmed_text_message_request // [5] UnconfirmedTextMessage-Request
    | Time_synchronization_request // [6] TimeSynchronization-Request
    | Who_has_request // [7] Who-Has-Request
    | Who_is_request // [8] Who-Is-Request
    | Utc_time_synchronization_request // [9] UTCTimeSynchronization-Request
    | Write_group_request // [10] WriteGroup-Request
    | Unconfirmed_cov_notification_multiple_request // [11] UnconfirmedCOVNotificationMultiple-Request
    | Unconfirmed_audit_notification_request // [12] UnconfirmedAuditNotification-Request
    | Who_am_i_request // [13] Who-Am-I_Request
    | You_are_request // [14] You-Are-Request

    // ==================== 正向转换函数 (Int8 → 枚举) ====================
    public static func fromUInt8(tag: UInt8): UnconfirmedServiceRequest {
        match (tag) {
            // 合法分支（覆盖所有协议定义标签 0-14）
            case 0 => UnconfirmedServiceRequest.I_am_request
            case 1 => UnconfirmedServiceRequest.I_have_request
            case 2 => UnconfirmedServiceRequest.Unconfirmed_cov_notification_request
            case 3 => UnconfirmedServiceRequest.Unconfirmed_event_notification_request
            case 4 => UnconfirmedServiceRequest.Unconfirmed_private_transfer_request
            case 5 => UnconfirmedServiceRequest.Unconfirmed_text_message_request
            case 6 => UnconfirmedServiceRequest.Time_synchronization_request
            case 7 => UnconfirmedServiceRequest.Who_has_request
            case 8 => UnconfirmedServiceRequest.Who_is_request
            case 9 => UnconfirmedServiceRequest.Utc_time_synchronization_request
            case 10 => UnconfirmedServiceRequest.Write_group_request
            case 11 => UnconfirmedServiceRequest.Unconfirmed_cov_notification_multiple_request
            case 12 => UnconfirmedServiceRequest.Unconfirmed_audit_notification_request
            case 13 => UnconfirmedServiceRequest.Who_am_i_request
            case 14 => UnconfirmedServiceRequest.You_are_request

            // 非法标签值（直接抛出字符串描述错误）
            case _ => throw BACnetDecodeError(
                "Encountered an undefined value when decoding the BACnetUnconfirmedServiceRequest field.")
        }
    }

    // ==================== 反向转换函数 (枚举 → Int8) ====================

    public func toUInt8(): UInt8 {
        match (this) {
            // 显式列出所有枚举分支
            case UnconfirmedServiceRequest.I_am_request => 0
            case UnconfirmedServiceRequest.I_have_request => 1
            case UnconfirmedServiceRequest.Unconfirmed_cov_notification_request => 2
            case UnconfirmedServiceRequest.Unconfirmed_event_notification_request => 3
            case UnconfirmedServiceRequest.Unconfirmed_private_transfer_request => 4
            case UnconfirmedServiceRequest.Unconfirmed_text_message_request => 5
            case UnconfirmedServiceRequest.Time_synchronization_request => 6
            case UnconfirmedServiceRequest.Who_has_request => 7
            case UnconfirmedServiceRequest.Who_is_request => 8
            case UnconfirmedServiceRequest.Utc_time_synchronization_request => 9
            case UnconfirmedServiceRequest.Write_group_request => 10
            case UnconfirmedServiceRequest.Unconfirmed_cov_notification_multiple_request => 11
            case UnconfirmedServiceRequest.Unconfirmed_audit_notification_request => 12
            case UnconfirmedServiceRequest.Who_am_i_request => 13
            case UnconfirmedServiceRequest.You_are_request => 14
        }
    }
}
