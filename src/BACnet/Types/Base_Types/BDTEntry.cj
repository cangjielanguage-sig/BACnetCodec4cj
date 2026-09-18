public package BACnetCodec4cj.BACnet.Types.Base_Types


/*
--ISO_16484_5_2022_Page_899
--21.6 Base Types

BACnetBDTEntry ::= SEQUENCE {
 bbmd-address [0] BACnetHostNPort,
 broadcast-mask [1] OCTET STRING OPTIONAL -- shall be present if BACnet/IP, and absent for BACnet/IPv6
 }
*/

public class BDTEntry {
    private var _bbmd_address: HostNPort = HostNPort() //[0] BACnetHostNPort
    private var _broadcast_mask: Option<Array<Byte>> = None //[1] OCTET STRING OPTIONAL -- shall be present if BACnet/IP, and absent for BACnet/IPv6

    public mut prop bbmd_address: HostNPort {
        get() { return _bbmd_address }
        set(arg_Value) { _bbmd_address = arg_Value }
    }
    public mut prop broadcast_mask: Option<Array<Byte>> {
        get() { return _broadcast_mask }
        set(arg_Value) { _broadcast_mask = arg_Value }
    }

    public init() {
    }

    public init(arg_bbmd_address: HostNPort) {
        this._bbmd_address = arg_bbmd_address
        this._broadcast_mask = None
    }
}

