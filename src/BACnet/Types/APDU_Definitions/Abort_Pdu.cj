public package BACnetCodec4cj.BACnet.Types.APDU_Definitions

import BACnetCodec4cj.BACnet.Enum.*

/*
--ISO_16484_5_2022_Page_867
--21.1 APDU Definitions

BACnet-Abort-PDU ::= SEQUENCE {
 pdu-type [0] Unsigned (0..15), -- 7 for this PDU type
 reserved [1] Unsigned (0..7), -- shall be set to zero
 server [2] BOOLEAN,
 original-invoke-id [3] Unsigned (0..255),
 abort-reason [4] BACnetAbortReason -- Context-specific tags 0..4 are NOT used in header encoding
 }
--ISO_16484_5_2022_Page_868
--21.2 Confirmed Service Productions
*/

public class Abort_Pdu <: BACnet_APDU {
    private var _pdu_type: UInt32 = 0u32 //[0] Unsigned (0..15), -- 7 for this PDU type
    private var _reserved: UInt32 = 0u32 //[1] Unsigned (0..7), -- shall be set to zero
    private var _server: Bool = false //[2] BOOLEAN
    private var _original_invoke_id: UInt32 = 0u32 //[3] Unsigned (0..255)
    private var _abort_reason: AbortReason_Enum = AbortReason_Enum.fromUInt32(0) //[4] BACnetAbortReason -- Context-specific tags 0..4 are NOT used in header encoding

    public mut prop pdu_type: UInt32 {
        get() { return _pdu_type }
        set(arg_Value) { _pdu_type = arg_Value }
    }
    public mut prop reserved: UInt32 {
        get() { return _reserved }
        set(arg_Value) { _reserved = arg_Value }
    }
    public mut prop server: Bool {
        get() { return _server }
        set(arg_Value) { _server = arg_Value }
    }
    public mut prop original_invoke_id: UInt32 {
        get() { return _original_invoke_id }
        set(arg_Value) { _original_invoke_id = arg_Value }
    }
    public mut prop abort_reason: AbortReason_Enum {
        get() { return _abort_reason }
        set(arg_Value) { _abort_reason = arg_Value }
    }

    public init() {
    }

    public init(arg_pdu_type: UInt32, arg_reserved: UInt32, arg_server: Bool, arg_original_invoke_id: UInt32, arg_abort_reason: AbortReason_Enum) {
        this._pdu_type = arg_pdu_type
        this._reserved = arg_reserved
        this._server = arg_server
        this._original_invoke_id = arg_original_invoke_id
        this._abort_reason = arg_abort_reason
    }
}

