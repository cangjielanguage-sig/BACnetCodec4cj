public package BACnetCodec4cj.BACnet.Types.Base_Types


/*
--ISO_16484_5_2022_Page_895
--21.6 Base Types

BACnetAddress ::= SEQUENCE {
 network-number Unsigned16,   -- A value of 0 indicates the local network
 mac-address OCTET STRING -- A string of length 0 indicates a broadcast
 }
*/

public class Address {
    private var _network_number: UInt16 = 0u16 // Unsigned16,   -- A value of 0 indicates the local network
    private var _mac_address: Array<Byte> = Array<Byte>(0, repeat: 0u8) // OCTET STRING -- A string of length 0 indicates a broadcast

    public mut prop network_number: UInt16 {
        get() { return _network_number }
        set(arg_Value) { _network_number = arg_Value }
    }
    public mut prop mac_address: Array<Byte> {
        get() { return _mac_address }
        set(arg_Value) { _mac_address = arg_Value }
    }

    public init() {
    }

    public init(arg_network_number: UInt16, arg_mac_address: Array<Byte>) {
        this._network_number = arg_network_number
        this._mac_address = arg_mac_address
    }
}

