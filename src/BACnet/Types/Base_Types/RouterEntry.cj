public package BACnetCodec4cj.BACnet.Types.Base_Types


/*
--ISO_16484_5_2022_Page_954
--21.6 Base Types

BACnetRouterEntry ::= SEQUENCE {
 network-number   [0] Unsigned16,
 mac-address   [1] OCTET STRING,
 status  [2] ENUMERATED {
     available (0),
     busy  (1),
     disconnected (2)
    },
 performance-index [3] Unsigned8 OPTIONAL
 }
*/

public class RouterEntry {
    private var _network_number: UInt16 = 0u16 //[0] Unsigned16
    private var _mac_address: Array<Byte> = Array<Byte>(0, repeat: 0u8) //[1] OCTET STRING
    private var _status: UInt8 = 0u8 //[2] ENUMERATED {
    private var _performance_index: Option<UInt8> = None //[3] Unsigned8 OPTIONAL

    public mut prop network_number: UInt16 {
        get() { return _network_number }
        set(arg_Value) { _network_number = arg_Value }
    }
    public mut prop mac_address: Array<Byte> {
        get() { return _mac_address }
        set(arg_Value) { _mac_address = arg_Value }
    }
    public mut prop status: UInt8 {
        get() { return _status }
        set(arg_Value) { _status = arg_Value }
    }
    public mut prop performance_index: Option<UInt8> {
        get() { return _performance_index }
        set(arg_Value) { _performance_index = arg_Value }
    }

    public init() {
    }

    public init(arg_network_number: UInt16, arg_mac_address: Array<Byte>, arg_status: UInt8) {
        this._network_number = arg_network_number
        this._mac_address = arg_mac_address
        this._status = arg_status
        this._performance_index = None
    }
}

