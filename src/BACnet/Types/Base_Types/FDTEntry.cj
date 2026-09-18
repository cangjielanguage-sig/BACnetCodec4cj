public package BACnetCodec4cj.BACnet.Types.Base_Types


/*
--ISO_16484_5_2022_Page_918
--21.6 Base Types

BACnetFDTEntry ::= SEQUENCE {
 bacnetip-address  [0] OCTET STRING, -- the 6-octet B/IP or 18-octet B/IPv6 address of the registrant
 time-to-live  [1] Unsigned16,  -- time to live in seconds at the time of registration
 remaining-time-to-live [2] Unsigned16  -- remaining time to live in seconds, incl. grace period
 }
*/

public class FDTEntry {
    private var _bacnetip_address: Array<Byte> = Array<Byte>(0, repeat: 0u8) //[0] OCTET STRING, -- the 6-octet B/IP or 18-octet B/IPv6 address of the registrant
    private var _time_to_live: UInt16 = 0u16 //[1] Unsigned16,  -- time to live in seconds at the time of registration
    private var _remaining_time_to_live: UInt16 = 0u16 //[2] Unsigned16  -- remaining time to live in seconds, incl. grace period

    public mut prop bacnetip_address: Array<Byte> {
        get() { return _bacnetip_address }
        set(arg_Value) { _bacnetip_address = arg_Value }
    }
    public mut prop time_to_live: UInt16 {
        get() { return _time_to_live }
        set(arg_Value) { _time_to_live = arg_Value }
    }
    public mut prop remaining_time_to_live: UInt16 {
        get() { return _remaining_time_to_live }
        set(arg_Value) { _remaining_time_to_live = arg_Value }
    }

    public init() {
    }

    public init(arg_bacnetip_address: Array<Byte>, arg_time_to_live: UInt16, arg_remaining_time_to_live: UInt16) {
        this._bacnetip_address = arg_bacnetip_address
        this._time_to_live = arg_time_to_live
        this._remaining_time_to_live = arg_remaining_time_to_live
    }
}

