public package BACnetCodec4cj.BACnet.Types.Unconfirmed_Service_Productions.Unconfirmed_Remote_Device_Management_Services
import BACnetCodec4cj.BACnet.Types.Unconfirmed_Service_Productions.Unconfirmed_Service_Request.Unconfirmed_Service_Request
import BACnetCodec4cj.BACnet.Types.ApplicationTypes.*

/*
--ISO_16484_5_2022_Page_879
--21.3.3 Unconfirmed Remote Device Management Services

I-Have-Request ::= SEQUENCE {
 device-identifier BACnetObjectIdentifier,
 object-identifier BACnetObjectIdentifier,
 object-name CharacterString
 }
--ISO_16484_5_2022_Page_880
*/

public class I_Have_Request <: Unconfirmed_Service_Request {
    private var _device_identifier: BACnet_ObjectIdentifier = BACnet_ObjectIdentifier() // BACnetObjectIdentifier
    private var _object_identifier: BACnet_ObjectIdentifier = BACnet_ObjectIdentifier() // BACnetObjectIdentifier
    private var _object_name: String = "" // CharacterString

    public mut prop device_identifier: BACnet_ObjectIdentifier {
        get() { return _device_identifier }
        set(arg_Value) { _device_identifier = arg_Value }
    }
    public mut prop object_identifier: BACnet_ObjectIdentifier {
        get() { return _object_identifier }
        set(arg_Value) { _object_identifier = arg_Value }
    }
    public mut prop object_name: String {
        get() { return _object_name }
        set(arg_Value) { _object_name = arg_Value }
    }

    public init() {
    }

    public init(arg_device_identifier: BACnet_ObjectIdentifier, arg_object_identifier: BACnet_ObjectIdentifier, arg_object_name: String) {
        this._device_identifier = arg_device_identifier
        this._object_identifier = arg_object_identifier
        this._object_name = arg_object_name
    }
}

