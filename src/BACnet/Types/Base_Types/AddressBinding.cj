public package BACnetCodec4cj.BACnet.Types.Base_Types

import BACnetCodec4cj.BACnet.Types.ApplicationTypes.*

/*
--ISO_16484_5_2022_Page_895
--21.6 Base Types

BACnetAddressBinding ::= SEQUENCE {
 device-identifier BACnetObjectIdentifier,
 device-address BACnetAddress
 }
*/

public class AddressBinding {
    private var _device_identifier: BACnet_ObjectIdentifier = BACnet_ObjectIdentifier() // BACnetObjectIdentifier
    private var _device_address: Address = Address() // BACnetAddress

    public mut prop device_identifier: BACnet_ObjectIdentifier {
        get() { return _device_identifier }
        set(arg_Value) { _device_identifier = arg_Value }
    }
    public mut prop device_address: Address {
        get() { return _device_address }
        set(arg_Value) { _device_address = arg_Value }
    }

    public init() {
    }

    public init(arg_device_identifier: BACnet_ObjectIdentifier, arg_device_address: Address) {
        this._device_identifier = arg_device_identifier
        this._device_address = arg_device_address
    }
}

