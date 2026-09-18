public package BACnetCodec4cj.BACnet.Types.Base_Types


/*
--ISO_16484_5_2022_Page_900
--21.6 Base Types

BACnetCOVMultipleSubscription ::= SEQUENCE {
 recipient [0] BACnetRecipientProcess,
 issue-confirmed-notifications [1] BOOLEAN,
 time-remaining [2] Unsigned,
 max-notification-delay [3] Unsigned,
 list-of-cov-subscription-specifications [4] SEQUENCE OF SEQUENCE {
  monitored-object-identifier [0] BACnetObjectIdentifier,
  list-of-cov-references  [1] SEQUENCE OF SEQUENCE {
        monitored-property   [0] BACnetPropertyReference,
        cov-increment    [1] REAL OPTIONAL,
        timestamped    [2] BOOLEAN
        }
  }
 }
*/

public class COVMultipleSubscription {
    private var _recipient: RecipientProcess = RecipientProcess() //[0] BACnetRecipientProcess
    private var _issue_confirmed_notifications: Bool = false //[1] BOOLEAN
    private var _time_remaining: UInt32 = 0u32 //[2] Unsigned
    private var _max_notification_delay: UInt32 = 0u32 //[3] Unsigned
    private var _list_of_cov_subscription_specifications: UInt8 = 0u8 //[4] SEQUENCE OF SEQUENCE {

    public mut prop recipient: RecipientProcess {
        get() { return _recipient }
        set(arg_Value) { _recipient = arg_Value }
    }
    public mut prop issue_confirmed_notifications: Bool {
        get() { return _issue_confirmed_notifications }
        set(arg_Value) { _issue_confirmed_notifications = arg_Value }
    }
    public mut prop time_remaining: UInt32 {
        get() { return _time_remaining }
        set(arg_Value) { _time_remaining = arg_Value }
    }
    public mut prop max_notification_delay: UInt32 {
        get() { return _max_notification_delay }
        set(arg_Value) { _max_notification_delay = arg_Value }
    }
    public mut prop list_of_cov_subscription_specifications: UInt8 {
        get() { return _list_of_cov_subscription_specifications }
        set(arg_Value) { _list_of_cov_subscription_specifications = arg_Value }
    }

    public init() {
    }

    public init(arg_recipient: RecipientProcess, arg_issue_confirmed_notifications: Bool, arg_time_remaining: UInt32, arg_max_notification_delay: UInt32, arg_list_of_cov_subscription_specifications: UInt8) {
        this._recipient = arg_recipient
        this._issue_confirmed_notifications = arg_issue_confirmed_notifications
        this._time_remaining = arg_time_remaining
        this._max_notification_delay = arg_max_notification_delay
        this._list_of_cov_subscription_specifications = arg_list_of_cov_subscription_specifications
    }
}

