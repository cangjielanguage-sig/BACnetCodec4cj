public package BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Object_Access_Services
import BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Service_Request.Confirmed_Service_Request
import BACnetCodec4cj.BACnet.Types.ApplicationTypes.*

/*
--ISO_16484_5_2022_Page_874
--21.2.3 Confirmed Object Access Services

DeleteObject-Request ::= SEQUENCE {
 object-identifier BACnetObjectIdentifier
 }
*/

public class DeleteObject_Request <: Confirmed_Service_Request {
    private var _object_identifier: BACnet_ObjectIdentifier = BACnet_ObjectIdentifier() // BACnetObjectIdentifier

    public mut prop object_identifier: BACnet_ObjectIdentifier {
        get() { return _object_identifier }
        set(arg_Value) { _object_identifier = arg_Value }
    }

    public init() {
    }

    public init(arg_object_identifier: BACnet_ObjectIdentifier) {
        this._object_identifier = arg_object_identifier
    }
}

