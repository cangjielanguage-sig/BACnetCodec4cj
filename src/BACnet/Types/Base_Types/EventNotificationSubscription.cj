public package BACnetCodec4cj.BACnet.Types.Base_Types

import BACnetCodec4cj.BACnet.Choice.*

/*
--ISO_16484_5_2022_Page_913
--21.6 Base Types

BACnetEventNotificationSubscription ::= SEQUENCE {
 recipient [0] BACnetRecipient,
 process-identifier [1] Unsigned32,
 issue-confirmed-notifications [2] BOOLEAN,
 time-remaining [3] Unsigned
 }
--ISO_16484_5_2022_Page_914
*/

public class EventNotificationSubscription {
    private var _recipient: Recipient_Choice = Recipient_Choice.fromUInt8(0) //[0] BACnetRecipient
    private var _process_identifier: UInt32 = 0u32 //[1] Unsigned32
    private var _issue_confirmed_notifications: Bool = false //[2] BOOLEAN
    private var _time_remaining: UInt32 = 0u32 //[3] Unsigned

    public mut prop recipient: Recipient_Choice {
        get() { return _recipient }
        set(arg_Value) { _recipient = arg_Value }
    }
    public mut prop process_identifier: UInt32 {
        get() { return _process_identifier }
        set(arg_Value) { _process_identifier = arg_Value }
    }
    public mut prop issue_confirmed_notifications: Bool {
        get() { return _issue_confirmed_notifications }
        set(arg_Value) { _issue_confirmed_notifications = arg_Value }
    }
    public mut prop time_remaining: UInt32 {
        get() { return _time_remaining }
        set(arg_Value) { _time_remaining = arg_Value }
    }

    public init() {
    }

    public init(arg_recipient: Recipient_Choice, arg_process_identifier: UInt32, arg_issue_confirmed_notifications: Bool, arg_time_remaining: UInt32) {
        this._recipient = arg_recipient
        this._process_identifier = arg_process_identifier
        this._issue_confirmed_notifications = arg_issue_confirmed_notifications
        this._time_remaining = arg_time_remaining
    }
}

