public package BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Virtual_Terminal_Services

import BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Service_Request.Confirmed_Service_Request

import BACnetCodec4cj.BACnet.Enum.*

/*
--ISO_16484_5_2022_Page_877
--21.2.5 Confirmed Virtual Terminal Services

VT-Open-Request ::= SEQUENCE {
 vt-class BACnetVTClass,
 local-vt-session-identifier Unsigned8
 }
*/

public class Vt_Open_Request <:Confirmed_Service_Request {
    private var _vt_class: VTClass_Enum = VTClass_Enum.fromUInt32(0) // BACnetVTClass
    private var _local_vt_session_identifier: UInt8 = 0u8 // Unsigned8

    public mut prop vt_class: VTClass_Enum {
        get() { return _vt_class }
        set(arg_Value) { _vt_class = arg_Value }
    }
    public mut prop local_vt_session_identifier: UInt8 {
        get() { return _local_vt_session_identifier }
        set(arg_Value) { _local_vt_session_identifier = arg_Value }
    }

    public init() {
    }

    public init(arg_vt_class: VTClass_Enum, arg_local_vt_session_identifier: UInt8) {
        this._vt_class = arg_vt_class
        this._local_vt_session_identifier = arg_local_vt_session_identifier
    }
}

