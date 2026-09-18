public package BACnetCodec4cj.BACnet.Types.APDU_Definitions

import BACnetCodec4cj.BACnet.Choice.*
import BACnetCodec4cj.BACnet.Enum.*

/*
--ISO_16484_5_2022_Page_866
--21.1 APDU Definitions

BACnet-Unconfirmed-Request-PDU ::= SEQUENCE {
 pdu-type [0] Unsigned (0..15), -- 1 for this PDU type
 reserved [1] Unsigned (0..15), -- shall be set to zero
 service-choice [2] BACnetUnconfirmedServiceChoice,
 service-request [3] BACnet-Unconfirmed-Service-Request -- Context-specific tags 0..3 are NOT used in header encoding
 }
*/

public class Unconfirmed_Request_Pdu <: BACnet_APDU {
    private var _pdu_type: UInt32 = 0u32 //[0] Unsigned (0..15), -- 1 for this PDU type
    private var _reserved: UInt32 = 0u32 //[1] Unsigned (0..15), -- shall be set to zero
    private var _service_choice: UnconfirmedService_Enum = UnconfirmedService_Enum.fromUInt32(0) //[2] BACnetUnconfirmedServiceChoice
    private var _service_request: Unconfirmed_Service_Request_Choice = Unconfirmed_Service_Request_Choice.fromUInt8(0) //[3] BACnet-Unconfirmed-Service-Request -- Context-specific tags 0..3 are NOT used in header encoding

    public mut prop pdu_type: UInt32 {
        get() { return _pdu_type }
        set(arg_Value) { _pdu_type = arg_Value }
    }
    public mut prop reserved: UInt32 {
        get() { return _reserved }
        set(arg_Value) { _reserved = arg_Value }
    }
    public mut prop service_choice: UnconfirmedService_Enum {
        get() { return _service_choice }
        set(arg_Value) { _service_choice = arg_Value }
    }
    public mut prop service_request: Unconfirmed_Service_Request_Choice {
        get() { return _service_request }
        set(arg_Value) { _service_request = arg_Value }
    }

    public init() {
    }

    public init(arg_pdu_type: UInt32, arg_reserved: UInt32, arg_service_choice: UnconfirmedService_Enum, arg_service_request: Unconfirmed_Service_Request_Choice) {
        this._pdu_type = arg_pdu_type
        this._reserved = arg_reserved
        this._service_choice = arg_service_choice
        this._service_request = arg_service_request
    }
}

