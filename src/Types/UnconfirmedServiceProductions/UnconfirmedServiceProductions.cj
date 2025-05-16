public package BACnetCodec4cj.Types.UnconfirmedServiceProductions
import BACnetCodec4cj.BACnetException.*

public enum BACnetUnconfirmedServiceChoice {
    |I_am                            // [0]
    |I_have                          // [1]
    |Unconfirmed_cov_notification    // [2]
    |Unconfirmed_event_notification  // [3]
    |Unconfirmed_private_transfer    // [4]
    |Unconfirmed_text_message        // [5]
    |Time_synchronization            // [6]
    |Who_has                         // [7]
    |Who_is                          // [8]
    |Utc_time_synchronization        // [9]
    |Write_group                     // [10]
    |Unconfirmed_cov_notification_multiple  // [11]
    |Unconfirmed_audit_notification         // [12]
    |Who_Am_I                               // [13]
    |You_Are                                // [14]


    // ==================== 正向转换函数 (Int8 → 枚举) ====================
    public func 从Int8转至BACnetUnconfirmedServiceChoice(标签: Int8): BACnetUnconfirmedServiceChoice {
        match (标签) {
            // 合法分支（覆盖所有协议定义标签 0-14）
            case 0  => BACnetUnconfirmedServiceChoice.I_am
            case 1  => BACnetUnconfirmedServiceChoice.I_have
            case 2  => BACnetUnconfirmedServiceChoice.Unconfirmed_cov_notification
            case 3  => BACnetUnconfirmedServiceChoice.Unconfirmed_event_notification
            case 4  => BACnetUnconfirmedServiceChoice.Unconfirmed_private_transfer
            case 5  => BACnetUnconfirmedServiceChoice.Unconfirmed_text_message
            case 6  => BACnetUnconfirmedServiceChoice.Time_synchronization
            case 7  => BACnetUnconfirmedServiceChoice.Who_has
            case 8  => BACnetUnconfirmedServiceChoice.Who_is
            case 9  => BACnetUnconfirmedServiceChoice.Utc_time_synchronization
            case 10 => BACnetUnconfirmedServiceChoice.Write_group
            case 11 => BACnetUnconfirmedServiceChoice.Unconfirmed_cov_notification_multiple
            case 12 => BACnetUnconfirmedServiceChoice.Unconfirmed_audit_notification
            case 13 => BACnetUnconfirmedServiceChoice.Who_Am_I
            case 14 => BACnetUnconfirmedServiceChoice.You_Are
            
            // 非法标签值（直接抛出字符串描述错误）
            case _ => throw Bacnet解码错误类("协议错误.无效服务标签")
        }
    }

    // ==================== 反向转换函数 (枚举 → Int8) ====================
    public func 从BACnetUnconfirmedServiceChoice转至Int8(服务: BACnetUnconfirmedServiceChoice): Int8 {
        match (服务) {
            // 显式列出所有枚举分支
            case BACnetUnconfirmedServiceChoice.I_am                            => 0
            case BACnetUnconfirmedServiceChoice.I_have                          => 1
            case BACnetUnconfirmedServiceChoice.Unconfirmed_cov_notification    => 2
            case BACnetUnconfirmedServiceChoice.Unconfirmed_event_notification  => 3
            case BACnetUnconfirmedServiceChoice.Unconfirmed_private_transfer    => 4
            case BACnetUnconfirmedServiceChoice.Unconfirmed_text_message        => 5
            case BACnetUnconfirmedServiceChoice.Time_synchronization            => 6
            case BACnetUnconfirmedServiceChoice.Who_has                         => 7
            case BACnetUnconfirmedServiceChoice.Who_is                          => 8
            case BACnetUnconfirmedServiceChoice.Utc_time_synchronization        => 9
            case BACnetUnconfirmedServiceChoice.Write_group                     => 10
            case BACnetUnconfirmedServiceChoice.Unconfirmed_cov_notification_multiple => 11
            case BACnetUnconfirmedServiceChoice.Unconfirmed_audit_notification         => 12
            case BACnetUnconfirmedServiceChoice.Who_Am_I                               => 13
            case BACnetUnconfirmedServiceChoice.You_Are                                => 14
        }
    }
}

public enum BACnetUnconfirmedServiceRequest {
    |I_am_request                          // [0] I-Am-Request
    |I_have_request                        // [1] I-Have-Request
    |Unconfirmed_cov_notification_request  // [2] UnconfirmedCOVNotification-Request
    |Unconfirmed_event_notification_request // [3] UnconfirmedEventNotification-Request
    |Unconfirmed_private_transfer_request   // [4] UnconfirmedPrivateTransfer-Request
    |Unconfirmed_text_message_request       // [5] UnconfirmedTextMessage-Request
    |Time_synchronization_request           // [6] TimeSynchronization-Request
    |Who_has_request                        // [7] Who-Has-Request
    |Who_is_request                         // [8] Who-Is-Request
    |Utc_time_synchronization_request      // [9] UTCTimeSynchronization-Request
    |Write_group_request                    // [10] WriteGroup-Request
    |Unconfirmed_cov_notification_multiple_request // [11] UnconfirmedCOVNotificationMultiple-Request
    |Unconfirmed_audit_notification_request // [12] UnconfirmedAuditNotification-Request
    |Who_am_i_request                       // [13] Who-Am-I_Request
    |You_are_request                        // [14] You-Are-Request

    // ==================== 正向转换函数 (Int8 → 枚举) ====================
    public func 从Int8转至BACnetUnconfirmedServiceRequest(标签: Int8): BACnetUnconfirmedServiceRequest {
        match (标签) {
            // 合法分支（覆盖所有协议定义标签 0-14）
            case 0  => BACnetUnconfirmedServiceRequest.I_am_request
            case 1  => BACnetUnconfirmedServiceRequest.I_have_request
            case 2  => BACnetUnconfirmedServiceRequest.Unconfirmed_cov_notification_request
            case 3  => BACnetUnconfirmedServiceRequest.Unconfirmed_event_notification_request
            case 4  => BACnetUnconfirmedServiceRequest.Unconfirmed_private_transfer_request
            case 5  => BACnetUnconfirmedServiceRequest.Unconfirmed_text_message_request
            case 6  => BACnetUnconfirmedServiceRequest.Time_synchronization_request
            case 7  => BACnetUnconfirmedServiceRequest.Who_has_request
            case 8  => BACnetUnconfirmedServiceRequest.Who_is_request
            case 9  => BACnetUnconfirmedServiceRequest.Utc_time_synchronization_request
            case 10 => BACnetUnconfirmedServiceRequest.Write_group_request
            case 11 => BACnetUnconfirmedServiceRequest.Unconfirmed_cov_notification_multiple_request
            case 12 => BACnetUnconfirmedServiceRequest.Unconfirmed_audit_notification_request
            case 13 => BACnetUnconfirmedServiceRequest.Who_am_i_request
            case 14 => BACnetUnconfirmedServiceRequest.You_are_request
            
            // 非法标签值（直接抛出字符串描述错误）
            case _ => throw Bacnet解码错误类("协议错误.无效服务标签")
        }
    }

    // ==================== 反向转换函数 (枚举 → Int8) ====================
    public func 从BACnetUnconfirmedServiceRequest转至Int8(请求: BACnetUnconfirmedServiceRequest): Int8 {
        match (请求) {
            // 显式列出所有枚举分支
            case BACnetUnconfirmedServiceRequest.I_am_request                          => 0
            case BACnetUnconfirmedServiceRequest.I_have_request                        => 1
            case BACnetUnconfirmedServiceRequest.Unconfirmed_cov_notification_request  => 2
            case BACnetUnconfirmedServiceRequest.Unconfirmed_event_notification_request => 3
            case BACnetUnconfirmedServiceRequest.Unconfirmed_private_transfer_request   => 4
            case BACnetUnconfirmedServiceRequest.Unconfirmed_text_message_request       => 5
            case BACnetUnconfirmedServiceRequest.Time_synchronization_request           => 6
            case BACnetUnconfirmedServiceRequest.Who_has_request                        => 7
            case BACnetUnconfirmedServiceRequest.Who_is_request                         => 8
            case BACnetUnconfirmedServiceRequest.Utc_time_synchronization_request      => 9
            case BACnetUnconfirmedServiceRequest.Write_group_request                    => 10
            case BACnetUnconfirmedServiceRequest.Unconfirmed_cov_notification_multiple_request => 11
            case BACnetUnconfirmedServiceRequest.Unconfirmed_audit_notification_request => 12
            case BACnetUnconfirmedServiceRequest.Who_am_i_request                       => 13
            case BACnetUnconfirmedServiceRequest.You_are_request                        => 14
        }
    }
}