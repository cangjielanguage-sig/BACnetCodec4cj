public package BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Alarm_and_Event_Services

import BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Service_Request.Confirmed_Service_Request
import BACnetCodec4cj.BACnet.Enum.*
import BACnetCodec4cj.BACnet.Types.ApplicationTypes.*

/*
--ISO_16484_5_2022_Page_872
--21.2.1  Confirmed Alarm and Event Services

LifeSafetyOperation-Request ::= SEQUENCE {
 requesting-process-identifier [0] Unsigned32,
 requesting-source [1] CharacterString,
 request [2] BACnetLifeSafetyOperation,
 object-identifier [3] BACnetObjectIdentifier OPTIONAL
 }
--ISO_16484_5_2022_Page_873
*/

public class LifeSafetyOperation_Request <:Confirmed_Service_Request {
    private var _requesting_process_identifier: UInt32 = 0u32 //[0] Unsigned32
    private var _requesting_source: String = "" //[1] CharacterString
    private var _request: LifeSafetyOperation_Enum = LifeSafetyOperation_Enum.fromUInt32(0) //[2] BACnetLifeSafetyOperation
    private var _object_identifier: Option<BACnet_ObjectIdentifier> = None //[3] BACnetObjectIdentifier OPTIONAL

    public mut prop requesting_process_identifier: UInt32 {
        get() { return _requesting_process_identifier }
        set(arg_Value) { _requesting_process_identifier = arg_Value }
    }
    public mut prop requesting_source: String {
        get() { return _requesting_source }
        set(arg_Value) { _requesting_source = arg_Value }
    }
    public mut prop request: LifeSafetyOperation_Enum {
        get() { return _request }
        set(arg_Value) { _request = arg_Value }
    }
    public mut prop object_identifier: Option<BACnet_ObjectIdentifier> {
        get() { return _object_identifier }
        set(arg_Value) { _object_identifier = arg_Value }
    }

    public init() {
    }

    public init(arg_requesting_process_identifier: UInt32, arg_requesting_source: String, arg_request: LifeSafetyOperation_Enum) {
        this._requesting_process_identifier = arg_requesting_process_identifier
        this._requesting_source = arg_requesting_source
        this._request = arg_request
        this._object_identifier = None
    }
}

