public package BACnetCodec4cj.Types.UnconfirmedService

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetException.*

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
