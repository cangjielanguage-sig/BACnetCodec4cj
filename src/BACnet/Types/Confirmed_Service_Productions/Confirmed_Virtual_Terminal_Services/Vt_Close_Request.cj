public package BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Virtual_Terminal_Services

import BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Service_Request.Confirmed_Service_Request


/*
--ISO_16484_5_2022_Page_877
--21.2.5 Confirmed Virtual Terminal Services

VT-Close-Request ::= SEQUENCE {
 list-of-remote-vt-session-identifiers SEQUENCE OF Unsigned8
 }
*/

public class Vt_Close_Request <:Confirmed_Service_Request{
    private var _list_of_remote_vt_session_identifiers: UInt8 = 0u8 // SEQUENCE OF Unsigned8

    public mut prop list_of_remote_vt_session_identifiers: UInt8 {
        get() { return _list_of_remote_vt_session_identifiers }
        set(arg_Value) { _list_of_remote_vt_session_identifiers = arg_Value }
    }

    public init() {
    }

    public init(arg_list_of_remote_vt_session_identifiers: UInt8) {
        this._list_of_remote_vt_session_identifiers = arg_list_of_remote_vt_session_identifiers
    }
}

