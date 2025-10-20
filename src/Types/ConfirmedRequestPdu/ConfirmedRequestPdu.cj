public package BACnetCodec4cj.Types.ConfirmedRequestPdu
import BACnetCodec4cj.Types.*
import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetException.*

public class BACnet_ConfirmedRequestPdu
<: BACnet_APDU
{

    public var _segmented_message:Bool = false  //[1] BOOLEAN, 
    public var more_follows:Bool = false        //[2] BOOLEAN,  
    public var segmented_response_accepted:Bool = false      //[3] BOOLEAN,
    public var reserved:UInt8 = 0u8                         //[4] Unsigned (0..3), -- shall be set to zero  
    public var max_segments_accepted:UInt8 = 0u8            //[5] Unsigned (0..7), -- as per Clause 20.1.2.4 
    public var max_apdu_length_accepted:UInt8 = 0u8         //[6] Unsigned (0..15), -- as per Clause 20.1.2.5 
    public var invoke_id:UInt8 = 0u8                        //[7] Unsigned (0..255),  
    public var sequence_number:Option<UInt8> = None                 //[8] Unsigned (0..255) OPTIONAL, -- only if segmented msg 
    public var proposed_window_size:Option<UInt8> = None             //[9] Unsigned (1..127) OPTIONAL, -- only if segmented msg 
    public var service_choice:ConfirmedServiceChoice = ConfirmedServiceChoice.ReadProperty                   //[10] BACnetConfirmedServiceChoice,  
    public var service_request:UInt8 = 0u8                  //[11] BACnet-Confirmed-Service-Request

}