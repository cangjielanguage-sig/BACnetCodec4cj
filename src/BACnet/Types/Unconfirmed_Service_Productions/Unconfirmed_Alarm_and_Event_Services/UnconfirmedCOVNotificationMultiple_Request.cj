public package BACnetCodec4cj.BACnet.Types.Unconfirmed_Service_Productions.Unconfirmed_Alarm_and_Event_Services

import BACnetCodec4cj.BACnet.Types.Unconfirmed_Service_Productions.Unconfirmed_Service_Request.Unconfirmed_Service_Request
import BACnetCodec4cj.BACnet.Types.ApplicationTypes.*
import BACnetCodec4cj.BACnet.Types.Base_Types.*

/*
--ISO_16484_5_2022_Page_879
--21.3.1 Unconfirmed Alarm and Event Services

UnconfirmedCOVNotificationMultiple-Request ::= SEQUENCE {
 subscriber-process-identifier [0] Unsigned32,
 initiating-device-identifier [1] BACnetObjectIdentifier,
 time-remaining   [2] Unsigned,
 timestamp   [3] BACnetDateTime OPTIONAL,
 list-of-cov-notifications  [4] SEQUENCE OF SEQUENCE {
  monitored-object-identifier [0] BACnetObjectIdentifier,
  list-of-values   [1] SEQUENCE OF SEQUENCE{
   property-identifier  [0] BACnetPropertyIdentifier,
   property-array-index  [1] Unsigned OPTIONAL, -- used only with array datatype
   property-value   [2] ABSTRACT-SYNTAX.&Type,
   time-of-change   [3] Time OPTIONAL
      }
  }
 }
*/

public class UnconfirmedCOVNotificationMultiple_Request <: Unconfirmed_Service_Request {
    private var _subscriber_process_identifier: UInt32 = 0u32 //[0] Unsigned32
    private var _initiating_device_identifier: BACnet_ObjectIdentifier = BACnet_ObjectIdentifier() //[1] BACnetObjectIdentifier
    private var _time_remaining: UInt32 = 0u32 //[2] Unsigned
    private var _timestamp: Option<BACnetDateTime> = None //[3] BACnetDateTime OPTIONAL
    private var _list_of_cov_notifications: UInt8 = 0u8 //[4] SEQUENCE OF SEQUENCE {

    public mut prop subscriber_process_identifier: UInt32 {
        get() { return _subscriber_process_identifier }
        set(arg_Value) { _subscriber_process_identifier = arg_Value }
    }
    public mut prop initiating_device_identifier: BACnet_ObjectIdentifier {
        get() { return _initiating_device_identifier }
        set(arg_Value) { _initiating_device_identifier = arg_Value }
    }
    public mut prop time_remaining: UInt32 {
        get() { return _time_remaining }
        set(arg_Value) { _time_remaining = arg_Value }
    }
    public mut prop timestamp: Option<BACnetDateTime> {
        get() { return _timestamp }
        set(arg_Value) { _timestamp = arg_Value }
    }
    public mut prop list_of_cov_notifications: UInt8 {
        get() { return _list_of_cov_notifications }
        set(arg_Value) { _list_of_cov_notifications = arg_Value }
    }

    public init() {
    }

    public init(arg_subscriber_process_identifier: UInt32, arg_initiating_device_identifier: BACnet_ObjectIdentifier, arg_time_remaining: UInt32, arg_list_of_cov_notifications: UInt8) {
        this._subscriber_process_identifier = arg_subscriber_process_identifier
        this._initiating_device_identifier = arg_initiating_device_identifier
        this._time_remaining = arg_time_remaining
        this._timestamp = None
        this._list_of_cov_notifications = arg_list_of_cov_notifications
    }
}

