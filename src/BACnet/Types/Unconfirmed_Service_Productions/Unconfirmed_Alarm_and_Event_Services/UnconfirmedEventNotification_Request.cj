public package BACnetCodec4cj.BACnet.Types.Unconfirmed_Service_Productions.Unconfirmed_Alarm_and_Event_Services

import BACnetCodec4cj.BACnet.Types.Unconfirmed_Service_Productions.Unconfirmed_Service_Request.Unconfirmed_Service_Request
import BACnetCodec4cj.BACnet.Choice.*
import BACnetCodec4cj.BACnet.Enum.*
import BACnetCodec4cj.BACnet.Types.ApplicationTypes.*

/*
--ISO_16484_5_2022_Page_879
--21.3.1 Unconfirmed Alarm and Event Services

UnconfirmedEventNotification-Request ::= SEQUENCE {
 process-identifier [0] Unsigned32,
 initiating-device-identifier [1] BACnetObjectIdentifier,
 event-object-identifier [2] BACnetObjectIdentifier,
 timestamp [3] BACnetTimeStamp,
 notification-class [4] Unsigned,
 priority [5] Unsigned8,
 event-type [6] BACnetEventType,
 message-text [7] CharacterString OPTIONAL,
 notify-type [8] BACnetNotifyType,
 ack-required [9] BOOLEAN OPTIONAL,
 from-state [10] BACnetEventState OPTIONAL,
 to-state [11] BACnetEventState,
 event-values [12] BACnetNotificationParameters OPTIONAL
 }
*/

public class UnconfirmedEventNotification_Request <: Unconfirmed_Service_Request {
    private var _process_identifier: UInt32 = 0u32 //[0] Unsigned32
    private var _initiating_device_identifier: BACnet_ObjectIdentifier = BACnet_ObjectIdentifier() //[1] BACnetObjectIdentifier
    private var _event_object_identifier: BACnet_ObjectIdentifier = BACnet_ObjectIdentifier() //[2] BACnetObjectIdentifier
    private var _timestamp: TimeStamp_Choice = TimeStamp_Choice.fromUInt8(0) //[3] BACnetTimeStamp
    private var _notification_class: UInt32 = 0u32 //[4] Unsigned
    private var _priority: UInt8 = 0u8 //[5] Unsigned8
    private var _event_type: EventType_Enum = EventType_Enum.fromUInt32(0) //[6] BACnetEventType
    private var _message_text: Option<String> = None //[7] CharacterString OPTIONAL
    private var _notify_type: NotifyType_Enum = NotifyType_Enum.fromUInt32(0) //[8] BACnetNotifyType
    private var _ack_required: Option<Bool> = None //[9] BOOLEAN OPTIONAL
    private var _from_state: Option<EventState_Enum> = None //[10] BACnetEventState OPTIONAL
    private var _to_state: EventState_Enum = EventState_Enum.fromUInt32(0) //[11] BACnetEventState
    private var _event_values: Option<NotificationParameters_Choice> = None //[12] BACnetNotificationParameters OPTIONAL

    public mut prop process_identifier: UInt32 {
        get() { return _process_identifier }
        set(arg_Value) { _process_identifier = arg_Value }
    }
    public mut prop initiating_device_identifier: BACnet_ObjectIdentifier {
        get() { return _initiating_device_identifier }
        set(arg_Value) { _initiating_device_identifier = arg_Value }
    }
    public mut prop event_object_identifier: BACnet_ObjectIdentifier {
        get() { return _event_object_identifier }
        set(arg_Value) { _event_object_identifier = arg_Value }
    }
    public mut prop timestamp: TimeStamp_Choice {
        get() { return _timestamp }
        set(arg_Value) { _timestamp = arg_Value }
    }
    public mut prop notification_class: UInt32 {
        get() { return _notification_class }
        set(arg_Value) { _notification_class = arg_Value }
    }
    public mut prop priority: UInt8 {
        get() { return _priority }
        set(arg_Value) { _priority = arg_Value }
    }
    public mut prop event_type: EventType_Enum {
        get() { return _event_type }
        set(arg_Value) { _event_type = arg_Value }
    }
    public mut prop message_text: Option<String> {
        get() { return _message_text }
        set(arg_Value) { _message_text = arg_Value }
    }
    public mut prop notify_type: NotifyType_Enum {
        get() { return _notify_type }
        set(arg_Value) { _notify_type = arg_Value }
    }
    public mut prop ack_required: Option<Bool> {
        get() { return _ack_required }
        set(arg_Value) { _ack_required = arg_Value }
    }
    public mut prop from_state: Option<EventState_Enum> {
        get() { return _from_state }
        set(arg_Value) { _from_state = arg_Value }
    }
    public mut prop to_state: EventState_Enum {
        get() { return _to_state }
        set(arg_Value) { _to_state = arg_Value }
    }
    public mut prop event_values: Option<NotificationParameters_Choice> {
        get() { return _event_values }
        set(arg_Value) { _event_values = arg_Value }
    }

    public init() {
    }

    public init(arg_process_identifier: UInt32, arg_initiating_device_identifier: BACnet_ObjectIdentifier, arg_event_object_identifier: BACnet_ObjectIdentifier, arg_timestamp: TimeStamp_Choice, arg_notification_class: UInt32, arg_priority: UInt8, arg_event_type: EventType_Enum, arg_notify_type: NotifyType_Enum, arg_to_state: EventState_Enum) {
        this._process_identifier = arg_process_identifier
        this._initiating_device_identifier = arg_initiating_device_identifier
        this._event_object_identifier = arg_event_object_identifier
        this._timestamp = arg_timestamp
        this._notification_class = arg_notification_class
        this._priority = arg_priority
        this._event_type = arg_event_type
        this._message_text = None
        this._notify_type = arg_notify_type
        this._ack_required = None
        this._from_state = None
        this._to_state = arg_to_state
        this._event_values = None
    }
}

