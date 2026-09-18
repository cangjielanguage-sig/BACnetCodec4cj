public package BACnetCodec4cj.BACnet.Types.APDU_Definitions

import BACnetCodec4cj.BACnet.Enum.*

/*
--ISO_16484_5_2022_Page_867
--21.1 APDU Definitions

BACnet-Reject-PDU ::= SEQUENCE {
 pdu-type [0] Unsigned (0..15), -- 6 for this PDU type
 reserved [1] Unsigned (0..15), -- shall be set to zero
 original-invoke-id [2] Unsigned (0..255),
 reject-reason [3] BACnetRejectReason -- Context-specific tags 0..3 are NOT used in the header encoding
 }
*/

public class Reject_Pdu <: BACnet_APDU {
    private var _pdu_type: UInt32 = 0u32 //[0] Unsigned (0..15), -- 6 for this PDU type
    private var _reserved: UInt32 = 0u32 //[1] Unsigned (0..15), -- shall be set to zero
    private var _original_invoke_id: UInt32 = 0u32 //[2] Unsigned (0..255)
    private var _reject_reason: RejectReason_Enum = RejectReason_Enum.fromUInt32(0) //[3] BACnetRejectReason -- Context-specific tags 0..3 are NOT used in the header encoding

    public mut prop pdu_type: UInt32 {
        get() { return _pdu_type }
        set(arg_Value) { _pdu_type = arg_Value }
    }
    public mut prop reserved: UInt32 {
        get() { return _reserved }
        set(arg_Value) { _reserved = arg_Value }
    }
    public mut prop original_invoke_id: UInt32 {
        get() { return _original_invoke_id }
        set(arg_Value) { _original_invoke_id = arg_Value }
    }
    public mut prop reject_reason: RejectReason_Enum {
        get() { return _reject_reason }
        set(arg_Value) { _reject_reason = arg_Value }
    }

    public init() {
    }

    public init(arg_pdu_type: UInt32, arg_reserved: UInt32, arg_original_invoke_id: UInt32, arg_reject_reason: RejectReason_Enum) {
        this._pdu_type = arg_pdu_type
        this._reserved = arg_reserved
        this._original_invoke_id = arg_original_invoke_id
        this._reject_reason = arg_reject_reason
    }
}

