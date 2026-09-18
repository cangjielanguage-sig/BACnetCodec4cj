public package BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Object_Access_Services

import BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Service_ACK.Confirmed_Service_ACK


/*
--ISO_16484_5_2022_Page_875
--21.2.3 Confirmed Object Access Services

ReadPropertyMultiple-ACK ::= SEQUENCE {
 list-of-read-access-results SEQUENCE OF ReadAccessResult
 }
*/

public class ReadPropertyMultiple_Ack <: Confirmed_Service_ACK {
    private var _list_of_read_access_results: UInt8 = 0u8 // SEQUENCE OF ReadAccessResult

    public mut prop list_of_read_access_results: UInt8 {
        get() { return _list_of_read_access_results }
        set(arg_Value) { _list_of_read_access_results = arg_Value }
    }

    public init() {
    }

    public init(arg_list_of_read_access_results: UInt8) {
        this._list_of_read_access_results = arg_list_of_read_access_results
    }
}

