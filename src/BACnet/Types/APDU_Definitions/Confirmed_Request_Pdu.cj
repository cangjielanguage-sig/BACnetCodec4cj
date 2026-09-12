public package BACnetCodec4cj.BACnet.Types.APDU_Definitions


import BACnetCodec4cj.BACnet.Choice.*
import BACnetCodec4cj.BACnet.Enum.*
import BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.*

/*      service-request 协议原文

BACnet-Confirmed-Request-PDU ::= SEQUENCE {
pdu-type                    [0] Unsigned (0..15), -- 0 for this PDU type
segmented-message           [1] BOOLEAN,
more-follows                [2] BOOLEAN,
segmented-response-accepted [3] BOOLEAN,
reserved                    [4] Unsigned (0..3), -- shall be set to zero
max-segments-accepted       [5] Unsigned (0..7), -- as per Clause 20.1.2.4
max-apdu-length-accepted    [6] Unsigned (0..15), -- as per Clause 20.1.2.5
invoke-id                   [7] Unsigned (0..255),
sequence-number             [8] Unsigned (0..255) OPTIONAL, -- only if segmented msg
proposed-window-size        [9] Unsigned (1..127) OPTIONAL, -- only if segmented msg
service-choice              [10] BACnetConfirmedService,
service-request             [11] BACnet-Confirmed-Service-Request
}
 */
public class Confirmed_Request_Pdu <: BACnet_APDU {
    private var _segmented_message: Bool = false                //[1] BOOLEAN, 
    private var _more_follows: Bool = false                     //[2] BOOLEAN,  
    private var _segmented_response_accepted: Bool = false      //[3] BOOLEAN,
    private var _reserved: UInt8 = 0u8                          //[4] Unsigned (0..3), -- shall be set to zero  
    private var _max_segments_accepted: UInt8 = 0u8             //[5] Unsigned (0..7), -- as per Clause 20.1.2.4 
    private var _max_apdu_length_accepted: UInt8 = 0u8          //[6] Unsigned (0..15), -- as per Clause 20.1.2.5 
    private var _invoke_id: UInt8 = 0u8                         //[7] Unsigned (0..255),  
    private var _sequence_number: Option<UInt8> = None          //[8] Unsigned (0..255) OPTIONAL, -- only if segmented msg 
    private var _proposed_window_size: Option<UInt8> = None     //[9] Unsigned (1..127) OPTIONAL, -- only if segmented msg 
    private var _service_choice: ConfirmedService_Enum = ConfirmedService_Enum.read_property //[10] BACnetConfirmedService,  
    private var _service_request: UInt8 = 0u8                   //[11] BACnet-Confirmed-Service-Request

    public mut prop segmented_message: Bool {
        get() {
            return _segmented_message
        }
        set(arg_Value) {
            _segmented_message = arg_Value
        }
    }
    public mut prop more_follows: Bool {
        get() {
            return _more_follows
        }
        set(arg_Value) {
            _more_follows = arg_Value
        }
    }
    public mut prop segmented_response_accepted: Bool {
        get() {
            return _segmented_response_accepted
        }
        set(arg_Value) {
            _segmented_response_accepted = arg_Value
        }
    }
    public mut prop reserved: UInt8 {
        get() {
            return _reserved
        }
        set(arg_Value) {
            _reserved = arg_Value
        }
    }
    public mut prop max_segments_accepted: UInt8 {
        get() {
            return _max_segments_accepted
        }
        set(arg_Value) {
            _max_segments_accepted = arg_Value
        }
    }


    public init() {
        this._segmented_message = false             //[1] BOOLEAN, 
        this._more_follows = false                  //[2] BOOLEAN,  
        this._segmented_response_accepted = false   //[3] BOOLEAN,
        this._reserved = 0u8                        //[4] Unsigned (0..3), -- shall be set to zero  
        this._max_segments_accepted = 0u8           //[5] Unsigned (0..7), -- as per Clause 20.1.2.4 
        this._max_apdu_length_accepted = 0u8        //[6] Unsigned (0..15), -- as per Clause 20.1.2.5 
        this._invoke_id = 0u8                       //[7] Unsigned (0..255),  
        this._sequence_number= None                 //[8] Unsigned (0..255) OPTIONAL, -- only if segmented msg 
        this._proposed_window_size = None           //[9] Unsigned (1..127) OPTIONAL, -- only if segmented msg 
        this._service_choice = ConfirmedService_Enum.read_property //[10] BACnetConfirmedService,  
        this._service_request = 0u8                 //[11] BACnet-Confirmed-Service-Request

    }

    public init(arg_invoke_id : UInt8, arg_service_choice: ConfirmedService_Enum, arg_service_request: UInt8) {
        this._segmented_message = false             //[1] BOOLEAN, 
        this._more_follows = false                  //[2] BOOLEAN,  
        this._segmented_response_accepted = false   //[3] BOOLEAN,
        this._reserved = 0u8                        //[4] Unsigned (0..3), -- shall be set to zero  
        this._max_segments_accepted = 0u8           //[5] Unsigned (0..7), -- as per Clause 20.1.2.4 
        this._max_apdu_length_accepted = 0u8        //[6] Unsigned (0..15), -- as per Clause 20.1.2.5 
        this._invoke_id = arg_invoke_id             //[7] Unsigned (0..255),  
        this._sequence_number= None                 //[8] Unsigned (0..255) OPTIONAL, -- only if segmented msg 
        this._proposed_window_size = None           //[9] Unsigned (1..127) OPTIONAL, -- only if segmented msg 
        this._service_choice = arg_service_choice   //[10] BACnetConfirmedService,  
        this._service_request = arg_service_request //[11] BACnet-Confirmed-Service-Request

    }
}

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
 service-choice [10] BACnetConfirmedService,
 service-request [11] BACnet-Confirmed-Service-Request OPTIONAL -- Context-specific tags 0..11 are NOT used in header encoding
 }
*/
