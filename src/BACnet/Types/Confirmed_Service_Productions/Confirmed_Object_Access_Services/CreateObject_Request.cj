public package BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Object_Access_Services
import BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Service_Request.Confirmed_Service_Request

/*
--ISO_16484_5_2022_Page_874
--21.2.3 Confirmed Object Access Services

CreateObject-Request ::= SEQUENCE {
 object-specifier  [0] CHOICE {
     object-type  [0] BACnetObjectType,
     object-identifier [1] BACnetObjectIdentifier
     },
 list-of-initial-values [1] SEQUENCE OF BACnetPropertyValue OPTIONAL
 }
*/

public class CreateObject_Request <: Confirmed_Service_Request {
    private var _object_specifier: UInt8 = 0u8 //[0] CHOICE {
    private var _list_of_initial_values: Option<UInt8> = None //[1] SEQUENCE OF BACnetPropertyValue OPTIONAL

    public mut prop object_specifier: UInt8 {
        get() { return _object_specifier }
        set(arg_Value) { _object_specifier = arg_Value }
    }
    public mut prop list_of_initial_values: Option<UInt8> {
        get() { return _list_of_initial_values }
        set(arg_Value) { _list_of_initial_values = arg_Value }
    }

    public init() {
    }

    public init(arg_object_specifier: UInt8) {
        this._object_specifier = arg_object_specifier
        this._list_of_initial_values = None
    }
}

