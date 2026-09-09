public package BACnetCodec4cj.BACnet.Types.Confirmed_Request_Pdu

import BACnetCodec4cj.BACnet.Types.*
import BACnetCodec4cj.BACnet.Choice.*

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
public class BACnet_Confirmed_Request_Pdu <: BACnet_APDU {
    public var segmented_message: Bool = false //[1] BOOLEAN, 
    public var more_follows: Bool = false //[2] BOOLEAN,  
    public var segmented_response_accepted: Bool = false //[3] BOOLEAN,
    public var reserved: UInt8 = 0u8 //[4] Unsigned (0..3), -- shall be set to zero  
    public var max_segments_accepted: UInt8 = 0u8 //[5] Unsigned (0..7), -- as per Clause 20.1.2.4 
    public var max_apdu_length_accepted: UInt8 = 0u8 //[6] Unsigned (0..15), -- as per Clause 20.1.2.5 
    public var invoke_id: UInt8 = 0u8 //[7] Unsigned (0..255),  
    public var sequence_number: Option<UInt8> = None //[8] Unsigned (0..255) OPTIONAL, -- only if segmented msg 
    public var proposed_window_size: Option<UInt8> = None //[9] Unsigned (1..127) OPTIONAL, -- only if segmented msg 
    public var service_choice: ConfirmedService = ConfirmedService.ReadProperty //[10] BACnetConfirmedService,  
    public var service_request: UInt8 = 0u8 //[11] BACnet-Confirmed-Service-Request

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
