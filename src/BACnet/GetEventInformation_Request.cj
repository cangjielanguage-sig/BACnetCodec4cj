public package BACnetCodec4cj.BACnet

/*
--ISO_16484_5_2022_Page_872
--21.2.1  Confirmed Alarm and Event Services

GetEventInformation-Request ::= SEQUENCE {
 last-received-object-identifier [0]  BACnetObjectIdentifier OPTIONAL
 }
*/

public class GetEventInformation_Request <: Confirmed_Service_Request{
    private var _last_received_object_identifier: Option<BACnet_ObjectIdentifier> = None //[0] BACnetObjectIdentifier OPTIONAL

    public mut prop last_received_object_identifier: Option<BACnet_ObjectIdentifier> {
        get() { return _last_received_object_identifier }
        set(arg_Value) { _last_received_object_identifier = arg_Value }
    }

    public init() {
    }
}

