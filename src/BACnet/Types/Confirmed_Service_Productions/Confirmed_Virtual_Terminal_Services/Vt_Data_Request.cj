public package BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Virtual_Terminal_Services

import BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Service_Request.Confirmed_Service_Request


/*
--ISO_16484_5_2022_Page_877
--21.2.5 Confirmed Virtual Terminal Services

VT-Data-Request ::= SEQUENCE {
 vt-session-identifier Unsigned8,
 vt-new-data OCTET STRING,
 vt-data-flag Unsigned (0..1)
 }
*/

public class Vt_Data_Request <:Confirmed_Service_Request {
    private var _vt_session_identifier: UInt8 = 0u8 // Unsigned8
    private var _vt_new_data: Array<Byte> = Array<Byte>(0, repeat: 0u8) // OCTET STRING
    private var _vt_data_flag: UInt32 = 0u32 // Unsigned (0..1)

    public mut prop vt_session_identifier: UInt8 {
        get() { return _vt_session_identifier }
        set(arg_Value) { _vt_session_identifier = arg_Value }
    }
    public mut prop vt_new_data: Array<Byte> {
        get() { return _vt_new_data }
        set(arg_Value) { _vt_new_data = arg_Value }
    }
    public mut prop vt_data_flag: UInt32 {
        get() { return _vt_data_flag }
        set(arg_Value) { _vt_data_flag = arg_Value }
    }

    public init() {
    }

    public init(arg_vt_session_identifier: UInt8, arg_vt_new_data: Array<Byte>, arg_vt_data_flag: UInt32) {
        this._vt_session_identifier = arg_vt_session_identifier
        this._vt_new_data = arg_vt_new_data
        this._vt_data_flag = arg_vt_data_flag
    }
}

