public package BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Alarm_and_Event_Services

import BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Service_Request.Confirmed_Service_Request
import BACnetCodec4cj.BACnet.Types.ApplicationTypes.*

/*
--ISO_16484_5_2022_Page_873
--21.2.1  Confirmed Alarm and Event Services

SubscribeCOV-Request ::= SEQUENCE {
 subscriber-process-identifier [0] Unsigned32,
 monitored-object-identifier [1] BACnetObjectIdentifier,
 issue-confirmed-notifications [2] BOOLEAN OPTIONAL,
 lifetime [3] Unsigned OPTIONAL
 }
*/

public class SubscribeCOV_Request <: Confirmed_Service_Request {
    private var _subscriber_process_identifier: UInt32 = 0u32 //[0] Unsigned32
    private var _monitored_object_identifier: BACnet_ObjectIdentifier = BACnet_ObjectIdentifier() //[1] BACnetObjectIdentifier
    private var _issue_confirmed_notifications: Option<Bool> = None //[2] BOOLEAN OPTIONAL
    private var _lifetime: Option<UInt32> = None //[3] Unsigned OPTIONAL

    public mut prop subscriber_process_identifier: UInt32 {
        get() { return _subscriber_process_identifier }
        set(arg_Value) { _subscriber_process_identifier = arg_Value }
    }
    public mut prop monitored_object_identifier: BACnet_ObjectIdentifier {
        get() { return _monitored_object_identifier }
        set(arg_Value) { _monitored_object_identifier = arg_Value }
    }
    public mut prop issue_confirmed_notifications: Option<Bool> {
        get() { return _issue_confirmed_notifications }
        set(arg_Value) { _issue_confirmed_notifications = arg_Value }
    }
    public mut prop lifetime: Option<UInt32> {
        get() { return _lifetime }
        set(arg_Value) { _lifetime = arg_Value }
    }

    public init() {
    }

    public init(arg_subscriber_process_identifier: UInt32, arg_monitored_object_identifier: BACnet_ObjectIdentifier) {
        this._subscriber_process_identifier = arg_subscriber_process_identifier
        this._monitored_object_identifier = arg_monitored_object_identifier
        this._issue_confirmed_notifications = None
        this._lifetime = None
    }
}

