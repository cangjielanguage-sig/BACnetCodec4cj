public package BACnetCodec4cj.BACnet.Types.APDU_Definitions


/*
--ISO_16484_5_2022_Page_867
--21.1 APDU Definitions

BACnet-SegmentACK-PDU ::= SEQUENCE {
 pdu-type [0] Unsigned (0..15), -- 4 for this PDU type
 reserved [1] Unsigned (0..3), -- shall be set to zero
 negative-ack [2] BOOLEAN,
 server [3] BOOLEAN,
 original-invoke-id [4] Unsigned (0..255),
 sequence-number [5] Unsigned (0..255),
 actual-window-size [6] Unsigned (1..127) -- Context-specific tags 0..6 are NOT used in header encoding
 }
*/

public class SegmentACK_Pdu <: BACnet_APDU {
    private var _pdu_type: UInt32 = 0u32 //[0] Unsigned (0..15), -- 4 for this PDU type
    private var _reserved: UInt32 = 0u32 //[1] Unsigned (0..3), -- shall be set to zero
    private var _negative_ack: Bool = false //[2] BOOLEAN
    private var _server: Bool = false //[3] BOOLEAN
    private var _original_invoke_id: UInt32 = 0u32 //[4] Unsigned (0..255)
    private var _sequence_number: UInt32 = 0u32 //[5] Unsigned (0..255)
    private var _actual_window_size: UInt32 = 0u32 //[6] Unsigned (1..127) -- Context-specific tags 0..6 are NOT used in header encoding

    public mut prop pdu_type: UInt32 {
        get() { return _pdu_type }
        set(arg_Value) { _pdu_type = arg_Value }
    }
    public mut prop reserved: UInt32 {
        get() { return _reserved }
        set(arg_Value) { _reserved = arg_Value }
    }
    public mut prop negative_ack: Bool {
        get() { return _negative_ack }
        set(arg_Value) { _negative_ack = arg_Value }
    }
    public mut prop server: Bool {
        get() { return _server }
        set(arg_Value) { _server = arg_Value }
    }
    public mut prop original_invoke_id: UInt32 {
        get() { return _original_invoke_id }
        set(arg_Value) { _original_invoke_id = arg_Value }
    }
    public mut prop sequence_number: UInt32 {
        get() { return _sequence_number }
        set(arg_Value) { _sequence_number = arg_Value }
    }
    public mut prop actual_window_size: UInt32 {
        get() { return _actual_window_size }
        set(arg_Value) { _actual_window_size = arg_Value }
    }

    public init() {
    }

    public init(arg_pdu_type: UInt32, arg_reserved: UInt32, arg_negative_ack: Bool, arg_server: Bool, arg_original_invoke_id: UInt32, arg_sequence_number: UInt32, arg_actual_window_size: UInt32) {
        this._pdu_type = arg_pdu_type
        this._reserved = arg_reserved
        this._negative_ack = arg_negative_ack
        this._server = arg_server
        this._original_invoke_id = arg_original_invoke_id
        this._sequence_number = arg_sequence_number
        this._actual_window_size = arg_actual_window_size
    }
}

