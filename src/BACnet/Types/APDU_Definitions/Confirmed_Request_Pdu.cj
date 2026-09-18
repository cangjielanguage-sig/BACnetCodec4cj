public package BACnetCodec4cj.BACnet.Types.APDU_Definitions

import BACnetCodec4cj.BACnet.Choice.*
import BACnetCodec4cj.BACnet.Enum.*

/*
--ISO_16484_5_2022_Page_866
--21.1 APDU Definitions

BACnet-Confirmed-Request-PDU ::= SEQUENCE {
 pdu-type [0] Unsigned (0..15), -- 0 for this PDU type
 segmented-message [1] BOOLEAN,
 more-follows [2] BOOLEAN,
 segmented-response-accepted [3] BOOLEAN,
 reserved [4] Unsigned (0..3),    -- shall be set to zero
 max-segments-accepted [5] Unsigned (0..7),    -- as per Clause 20.1.2.4
 max-apdu-length-accepted [6] Unsigned (0..15),  -- as per Clause 20.1.2.5
 invoke-id [7] Unsigned (0..255),
 sequence-number [8] Unsigned (0..255) OPTIONAL, -- only if segmented message
 proposed-window-size [9] Unsigned (1..127) OPTIONAL, -- only if segmented message
 service-choice [10] BACnetConfirmedServiceChoice,
 service-request [11] BACnet-Confirmed-Service-Request OPTIONAL -- Context-specific tags 0..11 are NOT used in header encoding
 }
*/

public class Confirmed_Request_Pdu <: BACnet_APDU {
    private var _pdu_type: UInt32 = 0u32 //[0] Unsigned (0..15), -- 0 for this PDU type
    private var _segmented_message: Bool = false //[1] BOOLEAN
    private var _more_follows: Bool = false //[2] BOOLEAN
    private var _segmented_response_accepted: Bool = false //[3] BOOLEAN
    private var _reserved: UInt32 = 0u32 //[4] Unsigned (0..3),    -- shall be set to zero
    private var _max_segments_accepted: UInt32 = 0u32 //[5] Unsigned (0..7),    -- as per Clause 20.1.2.4
    private var _max_apdu_length_accepted: UInt32 = 0u32 //[6] Unsigned (0..15),  -- as per Clause 20.1.2.5
    private var _invoke_id: UInt32 = 0u32 //[7] Unsigned (0..255)
    private var _sequence_number: Option<UInt32> = None //[8] Unsigned (0..255) OPTIONAL, -- only if segmented message
    private var _proposed_window_size: Option<UInt32> = None //[9] Unsigned (1..127) OPTIONAL, -- only if segmented message
    private var _service_choice: ConfirmedService_Enum = ConfirmedService_Enum.fromUInt32(0) //[10] BACnetConfirmedServiceChoice
    private var _service_request: Option<Confirmed_Service_Request_Choice> = None //[11] BACnet-Confirmed-Service-Request OPTIONAL -- Context-specific tags 0..11 are NOT used in header encoding

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
    public mut prop segmented_response_accepted: Bool {
        get() { return _segmented_response_accepted }
        set(arg_Value) { _segmented_response_accepted = arg_Value }
    }
    public mut prop reserved: UInt32 {
        get() { return _reserved }
        set(arg_Value) { _reserved = arg_Value }
    }
    public mut prop max_segments_accepted: UInt32 {
        get() { return _max_segments_accepted }
        set(arg_Value) { _max_segments_accepted = arg_Value }
    }
    public mut prop max_apdu_length_accepted: UInt32 {
        get() { return _max_apdu_length_accepted }
        set(arg_Value) { _max_apdu_length_accepted = arg_Value }
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
    public mut prop service_choice: ConfirmedService_Enum {
        get() { return _service_choice }
        set(arg_Value) { _service_choice = arg_Value }
    }
    public mut prop service_request: Option<Confirmed_Service_Request_Choice> {
        get() { return _service_request }
        set(arg_Value) { _service_request = arg_Value }
    }

    public init() {
    }

    public init(arg_pdu_type: UInt32, arg_segmented_message: Bool, arg_more_follows: Bool, arg_segmented_response_accepted: Bool, arg_reserved: UInt32, arg_max_segments_accepted: UInt32, arg_max_apdu_length_accepted: UInt32, arg_invoke_id: UInt32, arg_service_choice: ConfirmedService_Enum) {
        this._pdu_type = arg_pdu_type
        this._segmented_message = arg_segmented_message
        this._more_follows = arg_more_follows
        this._segmented_response_accepted = arg_segmented_response_accepted
        this._reserved = arg_reserved
        this._max_segments_accepted = arg_max_segments_accepted
        this._max_apdu_length_accepted = arg_max_apdu_length_accepted
        this._invoke_id = arg_invoke_id
        this._sequence_number = None
        this._proposed_window_size = None
        this._service_choice = arg_service_choice
        this._service_request = None
    }
}

