public package BACnetCodec4cj.BACnet.Types.APDU_Definitions

import BACnetCodec4cj.BACnet.Enum.*

/*
--ISO_16484_5_2022_Page_866
--21.1 APDU Definitions

BACnet-ComplexACK-PDU ::= SEQUENCE {
 pdu-type [0] Unsigned (0..15), -- 3 for this PDU type
 segmented-message [1] BOOLEAN,
 more-follows [2] BOOLEAN,
 reserved [3] Unsigned (0..3), -- shall be set to zero
 invoke-id [4] Unsigned (0..255),
 sequence-number [5] Unsigned (0..255) OPTIONAL, -- only if segmented message
 proposed-window-size [6] Unsigned (1..127) OPTIONAL, -- only if segmented message
 service-ack-choice [7] BACnetConfirmedServiceChoice,
 service-ack [8] BACnet-Confirmed-Service-ACK 
 -- Context-specific tags 0..8 are NOT used in header encoding
 }
--ISO_16484_5_2022_Page_867
*/

public class ComplexACK_Pdu <: BACnet_APDU {
    private var _pdu_type: UInt32 = 0u32 //[0] Unsigned (0..15), -- 3 for this PDU type
    private var _segmented_message: Bool = false //[1] BOOLEAN
    private var _more_follows: Bool = false //[2] BOOLEAN
    private var _reserved: UInt32 = 0u32 //[3] Unsigned (0..3), -- shall be set to zero
    private var _invoke_id: UInt32 = 0u32 //[4] Unsigned (0..255)
    private var _sequence_number: Option<UInt32> = None //[5] Unsigned (0..255) OPTIONAL, -- only if segmented message
    private var _proposed_window_size: Option<UInt32> = None //[6] Unsigned (1..127) OPTIONAL, -- only if segmented message
    private var _service_ack_choice: ConfirmedService_Enum = ConfirmedService_Enum.fromUInt32(0) //[7] BACnetConfirmedServiceChoice
    private var _service_ack: UInt8 = 0u8 //[8] BACnet-Confirmed-Service-ACK -- Context-specific tags 0..8 are NOT used in header encoding

    public mut prop pdu_type: UInt32 {
        get() { return _pdu_type }
        set(arg_Value) { _pdu_type = arg_Value }
    }
    public mut prop segmented_message: Bool {
        get() { return _segmented_message }
        set(arg_Value) { _segmented_message = arg_Value }
    }
    public mut prop more_follows: Bool {
        get() { return _more_follows }
        set(arg_Value) { _more_follows = arg_Value }
    }
    public mut prop reserved: UInt32 {
        get() { return _reserved }
        set(arg_Value) { _reserved = arg_Value }
    }
    public mut prop invoke_id: UInt32 {
        get() { return _invoke_id }
        set(arg_Value) { _invoke_id = arg_Value }
    }
    public mut prop sequence_number: Option<UInt32> {
        get() { return _sequence_number }
        set(arg_Value) { _sequence_number = arg_Value }
    }
    public mut prop proposed_window_size: Option<UInt32> {
        get() { return _proposed_window_size }
        set(arg_Value) { _proposed_window_size = arg_Value }
    }
    public mut prop service_ack_choice: ConfirmedService_Enum {
        get() { return _service_ack_choice }
        set(arg_Value) { _service_ack_choice = arg_Value }
    }
    public mut prop service_ack: UInt8 {
        get() { return _service_ack }
        set(arg_Value) { _service_ack = arg_Value }
    }

    public init() {
    }

    public init(arg_pdu_type: UInt32, arg_segmented_message: Bool, arg_more_follows: Bool, arg_reserved: UInt32, arg_invoke_id: UInt32, arg_service_ack_choice: ConfirmedService_Enum, arg_service_ack: UInt8) {
        this._pdu_type = arg_pdu_type
        this._segmented_message = arg_segmented_message
        this._more_follows = arg_more_follows
        this._reserved = arg_reserved
        this._invoke_id = arg_invoke_id
        this._sequence_number = None
        this._proposed_window_size = None
        this._service_ack_choice = arg_service_ack_choice
        this._service_ack = arg_service_ack
    }
}

