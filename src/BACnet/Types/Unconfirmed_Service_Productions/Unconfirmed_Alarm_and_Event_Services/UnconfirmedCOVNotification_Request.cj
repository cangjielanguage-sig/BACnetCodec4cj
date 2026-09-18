public package BACnetCodec4cj.BACnet.Types.Unconfirmed_Service_Productions.Unconfirmed_Alarm_and_Event_Services
import BACnetCodec4cj.BACnet.Types.Unconfirmed_Service_Productions.Unconfirmed_Service_Request.Unconfirmed_Service_Request
import BACnetCodec4cj.BACnet.Types.ApplicationTypes.*

/*
--ISO_16484_5_2022_Page_878
--21.3.1 Unconfirmed Alarm and Event Services

UnconfirmedCOVNotification-Request ::= SEQUENCE {
 subscriber-process-identifier [0] Unsigned32,
 initiating-device-identifier [1] BACnetObjectIdentifier,
 monitored-object-identifier [2] BACnetObjectIdentifier,
 time-remaining [3] Unsigned,
 list-of-values [4] SEQUENCE OF BACnetPropertyValue
 }
--ISO_16484_5_2022_Page_879
*/

public class UnconfirmedCOVNotification_Request <: Unconfirmed_Service_Request {
    private var _subscriber_process_identifier: UInt32 = 0u32 //[0] Unsigned32
    private var _initiating_device_identifier: BACnet_ObjectIdentifier = BACnet_ObjectIdentifier() //[1] BACnetObjectIdentifier
    private var _monitored_object_identifier: BACnet_ObjectIdentifier = BACnet_ObjectIdentifier() //[2] BACnetObjectIdentifier
    private var _time_remaining: UInt32 = 0u32 //[3] Unsigned
    private var _list_of_values: UInt8 = 0u8 //[4] SEQUENCE OF BACnetPropertyValue

    public mut prop subscriber_process_identifier: UInt32 {
        get() { return _subscriber_process_identifier }
        set(arg_Value) { _subscriber_process_identifier = arg_Value }
    }
    public mut prop initiating_device_identifier: BACnet_ObjectIdentifier {
        get() { return _initiating_device_identifier }
        set(arg_Value) { _initiating_device_identifier = arg_Value }
    }
    public mut prop monitored_object_identifier: BACnet_ObjectIdentifier {
        get() { return _monitored_object_identifier }
        set(arg_Value) { _monitored_object_identifier = arg_Value }
    }
    public mut prop time_remaining: UInt32 {
        get() { return _time_remaining }
        set(arg_Value) { _time_remaining = arg_Value }
    }
    public mut prop list_of_values: UInt8 {
        get() { return _list_of_values }
        set(arg_Value) { _list_of_values = arg_Value }
    }

    public init() {
    }

    public init(arg_subscriber_process_identifier: UInt32, arg_initiating_device_identifier: BACnet_ObjectIdentifier, arg_monitored_object_identifier: BACnet_ObjectIdentifier, arg_time_remaining: UInt32, arg_list_of_values: UInt8) {
        this._subscriber_process_identifier = arg_subscriber_process_identifier
        this._initiating_device_identifier = arg_initiating_device_identifier
        this._monitored_object_identifier = arg_monitored_object_identifier
        this._time_remaining = arg_time_remaining
        this._list_of_values = arg_list_of_values
    }
}

