public package BACnetCodec4cj.BACnet.Types.Base_Types

import BACnetCodec4cj.BACnet.Choice.*
import BACnetCodec4cj.BACnet.Types.ApplicationTypes.*

/*
--ISO_16484_5_2022_Page_901
--21.6 Base Types

BACnetDestination ::= SEQUENCE {
 valid-days BACnetDaysOfWeek,
 from-time Time,
 to-time Time,
 recipient BACnetRecipient,
 process-identifier Unsigned32,
 issue-confirmed-notifications BOOLEAN,
 transitions BACnetEventTransitionBits
 }
*/

public class Destination {
    private var _valid_days: UInt8 = 0u8 // BACnetDaysOfWeek
    private var _from_time: BACnet_Time = BACnet_Time() // Time
    private var _to_time: BACnet_Time = BACnet_Time() // Time
    private var _recipient: Recipient_Choice = Recipient_Choice.fromUInt8(0) // BACnetRecipient
    private var _process_identifier: UInt32 = 0u32 // Unsigned32
    private var _issue_confirmed_notifications: Bool = false // BOOLEAN
    private var _transitions: UInt8 = 0u8 // BACnetEventTransitionBits

    public mut prop valid_days: UInt8 {
        get() { return _valid_days }
        set(arg_Value) { _valid_days = arg_Value }
    }
    public mut prop from_time: BACnet_Time {
        get() { return _from_time }
        set(arg_Value) { _from_time = arg_Value }
    }
    public mut prop to_time: BACnet_Time {
        get() { return _to_time }
        set(arg_Value) { _to_time = arg_Value }
    }
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
    public mut prop transitions: UInt8 {
        get() { return _transitions }
        set(arg_Value) { _transitions = arg_Value }
    }

    public init() {
    }

    public init(arg_valid_days: UInt8, arg_from_time: BACnet_Time, arg_to_time: BACnet_Time, arg_recipient: Recipient_Choice, arg_process_identifier: UInt32, arg_issue_confirmed_notifications: Bool, arg_transitions: UInt8) {
        this._valid_days = arg_valid_days
        this._from_time = arg_from_time
        this._to_time = arg_to_time
        this._recipient = arg_recipient
        this._process_identifier = arg_process_identifier
        this._issue_confirmed_notifications = arg_issue_confirmed_notifications
        this._transitions = arg_transitions
    }
}

