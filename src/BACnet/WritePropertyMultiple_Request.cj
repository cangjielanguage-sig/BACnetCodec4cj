public package BACnetCodec4cj.BACnet

/*
--ISO_16484_5_2022_Page_876
--21.2.3 Confirmed Object Access Services

WritePropertyMultiple-Request ::= SEQUENCE {
 list-of-write-access-specifications SEQUENCE OF WriteAccessSpecification
 }
*/

public class WritePropertyMultiple_Request <: Confirmed_Service_Request {
    private var _list_of_write_access_specifications: UInt8 = 0u8 // SEQUENCE OF WriteAccessSpecification

    public mut prop list_of_write_access_specifications: UInt8 {
        get() { return _list_of_write_access_specifications }
        set(arg_Value) { _list_of_write_access_specifications = arg_Value }
    }

    public init() {
    }

    public init(arg_list_of_write_access_specifications: UInt8) {
        this._list_of_write_access_specifications = arg_list_of_write_access_specifications
    }
}

