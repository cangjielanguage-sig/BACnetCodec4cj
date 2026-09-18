public package BACnetCodec4cj.BACnet.Types.Base_Types


/*
--ISO_16484_5_2022_Page_958
--21.6 Base Types

BACnetVTSession ::= SEQUENCE {
 local-vt-session-id Unsigned8,
 remote-vt-session-id Unsigned8,
 remote-vt-address BACnetAddress
 }
*/

public class VTSession {
    private var _local_vt_session_id: UInt8 = 0u8 // Unsigned8
    private var _remote_vt_session_id: UInt8 = 0u8 // Unsigned8
    private var _remote_vt_address: Address = Address() // BACnetAddress

    public mut prop local_vt_session_id: UInt8 {
        get() { return _local_vt_session_id }
        set(arg_Value) { _local_vt_session_id = arg_Value }
    }
    public mut prop remote_vt_session_id: UInt8 {
        get() { return _remote_vt_session_id }
        set(arg_Value) { _remote_vt_session_id = arg_Value }
    }
    public mut prop remote_vt_address: Address {
        get() { return _remote_vt_address }
        set(arg_Value) { _remote_vt_address = arg_Value }
    }

    public init() {
    }

    public init(arg_local_vt_session_id: UInt8, arg_remote_vt_session_id: UInt8, arg_remote_vt_address: Address) {
        this._local_vt_session_id = arg_local_vt_session_id
        this._remote_vt_session_id = arg_remote_vt_session_id
        this._remote_vt_address = arg_remote_vt_address
    }
}

