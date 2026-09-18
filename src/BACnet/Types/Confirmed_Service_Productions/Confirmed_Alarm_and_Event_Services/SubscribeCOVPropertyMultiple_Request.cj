public package BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Alarm_and_Event_Services

import BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Service_Request.Confirmed_Service_Request

/*
--ISO_16484_5_2022_Page_873
--21.2.1  Confirmed Alarm and Event Services

SubscribeCOVPropertyMultiple-Request ::= SEQUENCE {
 subscriber-process-identifier  [0] Unsigned32,
 issue-confirmed-notifications  [1] BOOLEAN,
 lifetime    [2] Unsigned OPTIONAL,
 max-notification-delay   [3] Unsigned OPTIONAL,
 list-of-cov-subscription-specifications [4] SEQUENCE OF SEQUENCE {
  monitored-object-identifier  [0] BACnetObjectIdentifier,
  list-of-cov-references   [1] SEQUENCE OF SEQUENCE {
   monitored-property   [0] BACnetPropertyReference,
   cov-increment    [1] REAL OPTIONAL,
   timestamped    [2] BOOLEAN
   }
  }
 }
*/

public class SubscribeCOVPropertyMultiple_Request <: Confirmed_Service_Request {
    private var _subscriber_process_identifier: UInt32 = 0u32 //[0] Unsigned32
    private var _issue_confirmed_notifications: Bool = false //[1] BOOLEAN
    private var _lifetime: Option<UInt32> = None //[2] Unsigned OPTIONAL
    private var _max_notification_delay: Option<UInt32> = None //[3] Unsigned OPTIONAL
    private var _list_of_cov_subscription_specifications: UInt8 = 0u8 //[4] SEQUENCE OF SEQUENCE {

    public mut prop subscriber_process_identifier: UInt32 {
        get() { return _subscriber_process_identifier }
        set(arg_Value) { _subscriber_process_identifier = arg_Value }
    }
    public mut prop issue_confirmed_notifications: Bool {
        get() { return _issue_confirmed_notifications }
        set(arg_Value) { _issue_confirmed_notifications = arg_Value }
    }
    public mut prop lifetime: Option<UInt32> {
        get() { return _lifetime }
        set(arg_Value) { _lifetime = arg_Value }
    }
    public mut prop max_notification_delay: Option<UInt32> {
        get() { return _max_notification_delay }
        set(arg_Value) { _max_notification_delay = arg_Value }
    }
    public mut prop list_of_cov_subscription_specifications: UInt8 {
        get() { return _list_of_cov_subscription_specifications }
        set(arg_Value) { _list_of_cov_subscription_specifications = arg_Value }
    }

    public init() {
    }

    public init(arg_subscriber_process_identifier: UInt32, arg_issue_confirmed_notifications: Bool, arg_list_of_cov_subscription_specifications: UInt8) {
        this._subscriber_process_identifier = arg_subscriber_process_identifier
        this._issue_confirmed_notifications = arg_issue_confirmed_notifications
        this._lifetime = None
        this._max_notification_delay = None
        this._list_of_cov_subscription_specifications = arg_list_of_cov_subscription_specifications
    }
}

