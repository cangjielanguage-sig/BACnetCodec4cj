public package BACnetCodec4cj.BACnet.Types.APDU_Definitions

import BACnetCodec4cj.BACnet.Choice.*
import BACnetCodec4cj.BACnet.Enum.*

/*
--ISO_16484_5_2022_Page_867
--21.1 APDU Definitions

BACnet-Error-PDU ::= SEQUENCE {
 pdu-type [0] Unsigned (0..15), -- 5 for this PDU type
 reserved [1] Unsigned (0..15), -- shall be set to zero
 original-invoke-id [2] Unsigned (0..255),
 error-choice [3] BACnetConfirmedServiceChoice,
 error [4] BACnet-Error -- Context-specific tags 0..4 are NOT used in header encoding
 }
*/

public class Error_Pdu <: BACnet_APDU {
    private var _pdu_type: UInt32 = 0u32 //[0] Unsigned (0..15), -- 5 for this PDU type
    private var _reserved: UInt32 = 0u32 //[1] Unsigned (0..15), -- shall be set to zero
    private var _original_invoke_id: UInt32 = 0u32 //[2] Unsigned (0..255)
    private var _error_choice: ConfirmedService_Enum = ConfirmedService_Enum.fromUInt32(0) //[3] BACnetConfirmedServiceChoice
    private var _error: Error_Choice = Error_Choice.fromUInt8(0) //[4] BACnet-Error -- Context-specific tags 0..4 are NOT used in header encoding

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
    public mut prop error_choice: ConfirmedService_Enum {
        get() { return _error_choice }
        set(arg_Value) { _error_choice = arg_Value }
    }
    public mut prop error: Error_Choice {
        get() { return _error }
        set(arg_Value) { _error = arg_Value }
    }

    public init() {
    }

    public init(arg_pdu_type: UInt32, arg_reserved: UInt32, arg_original_invoke_id: UInt32, arg_error_choice: ConfirmedService_Enum, arg_error: Error_Choice) {
        this._pdu_type = arg_pdu_type
        this._reserved = arg_reserved
        this._original_invoke_id = arg_original_invoke_id
        this._error_choice = arg_error_choice
        this._error = arg_error
    }
}

