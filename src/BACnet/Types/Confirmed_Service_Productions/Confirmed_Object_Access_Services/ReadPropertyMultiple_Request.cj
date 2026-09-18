public package BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Object_Access_Services

import BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Service_Request.Confirmed_Service_Request


/*
--ISO_16484_5_2022_Page_875
--21.2.3 Confirmed Object Access Services

ReadPropertyMultiple-Request ::= SEQUENCE {
 list-of-read-access-specifications SEQUENCE OF ReadAccessSpecification
 }
*/

public class ReadPropertyMultiple_Request <: Confirmed_Service_Request {
    private var _list_of_read_access_specifications: UInt8 = 0u8 // SEQUENCE OF ReadAccessSpecification

    public mut prop list_of_read_access_specifications: UInt8 {
        get() { return _list_of_read_access_specifications }
        set(arg_Value) { _list_of_read_access_specifications = arg_Value }
    }

    public init() {
    }

    public init(arg_list_of_read_access_specifications: UInt8) {
        this._list_of_read_access_specifications = arg_list_of_read_access_specifications
    }
}

