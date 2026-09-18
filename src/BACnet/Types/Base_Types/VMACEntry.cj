public package BACnetCodec4cj.BACnet.Types.Base_Types


/*
--ISO_16484_5_2022_Page_958
--21.6 Base Types

BACnetVMACEntry ::= SEQUENCE {
 virtual-mac-address [0] OCTET STRING, -- maximum size 6 octets
 native-mac-address [1] OCTET STRING
 }
*/

public class VMACEntry {
    private var _virtual_mac_address: Array<Byte> = Array<Byte>(0, repeat: 0u8) //[0] OCTET STRING, -- maximum size 6 octets
    private var _native_mac_address: Array<Byte> = Array<Byte>(0, repeat: 0u8) //[1] OCTET STRING

    public mut prop virtual_mac_address: Array<Byte> {
        get() { return _virtual_mac_address }
        set(arg_Value) { _virtual_mac_address = arg_Value }
    }
    public mut prop native_mac_address: Array<Byte> {
        get() { return _native_mac_address }
        set(arg_Value) { _native_mac_address = arg_Value }
    }

    public init() {
    }

    public init(arg_virtual_mac_address: Array<Byte>, arg_native_mac_address: Array<Byte>) {
        this._virtual_mac_address = arg_virtual_mac_address
        this._native_mac_address = arg_native_mac_address
    }
}

