public package BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Virtual_Terminal_Services

import BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Service_ACK.Confirmed_Service_ACK


/*
--ISO_16484_5_2022_Page_877
--21.2.5 Confirmed Virtual Terminal Services

VT-Open-ACK ::= SEQUENCE {
 remote-vt-session-identifier Unsigned8
 }
*/

public class Vt_Open_Ack <:Confirmed_Service_ACK {
    private var _remote_vt_session_identifier: UInt8 = 0u8 // Unsigned8

    public mut prop remote_vt_session_identifier: UInt8 {
        get() { return _remote_vt_session_identifier }
        set(arg_Value) { _remote_vt_session_identifier = arg_Value }
    }

    public init() {
    }

    public init(arg_remote_vt_session_identifier: UInt8) {
        this._remote_vt_session_identifier = arg_remote_vt_session_identifier
    }
}

