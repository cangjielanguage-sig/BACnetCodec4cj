public package BACnetCodec4cj.BACnet.Types.APDU_Definitions

import BACnetCodec4cj.BACnet.Enum.*

/*
--ISO_16484_5_2022_Page_866
--21.1 APDU Definitions

BACnet-SimpleACK-PDU ::= SEQUENCE {
 pdu-type [0] Unsigned (0..15), -- 2 for this PDU type
 reserved [1] Unsigned (0..15), -- shall be set to zero
 invoke-id [2] Unsigned (0..255),
 service-ack-choice [3] BACnetConfirmedServiceChoice -- Context-specific tags 0..3 are NOT used in header encoding
 }
*/

public class SimpleACK_Pdu <: BACnet_APDU {
    private var _pdu_type: UInt32 = 0u32 //[0] Unsigned (0..15), -- 2 for this PDU type
    private var _reserved: UInt32 = 0u32 //[1] Unsigned (0..15), -- shall be set to zero
    private var _invoke_id: UInt32 = 0u32 //[2] Unsigned (0..255)
    private var _service_ack_choice: ConfirmedService_Enum = ConfirmedService_Enum.fromUInt32(0) //[3] BACnetConfirmedServiceChoice -- Context-specific tags 0..3 are NOT used in header encoding

    public mut prop pdu_type: UInt32 {
        get() { return _pdu_type }
        set(arg_Value) { _pdu_type = arg_Value }
    }
    public mut prop reserved: UInt32 {
        get() { return _reserved }
        set(arg_Value) { _reserved = arg_Value }
    }
    public mut prop invoke_id: UInt32 {
        get() { return _invoke_id }
        set(arg_Value) { _invoke_id = arg_Value }
    }
    public mut prop service_ack_choice: ConfirmedService_Enum {
        get() { return _service_ack_choice }
        set(arg_Value) { _service_ack_choice = arg_Value }
    }

    public init() {
    }

    public init(arg_pdu_type: UInt32, arg_reserved: UInt32, arg_invoke_id: UInt32, arg_service_ack_choice: ConfirmedService_Enum) {
        this._pdu_type = arg_pdu_type
        this._reserved = arg_reserved
        this._invoke_id = arg_invoke_id
        this._service_ack_choice = arg_service_ack_choice
    }
}

