public package BACnetCodec4cj.BACnet.Types.Base_Types

import BACnetCodec4cj.BACnet.Types.ApplicationTypes.*

/*
--ISO_16484_5_2022_Page_901
--21.6 Base Types

BACnetDeviceObjectReference ::= SEQUENCE {
 device-identifier [0]  BACnetObjectIdentifier OPTIONAL,
 object-identifier [1]  BACnetObjectIdentifier
 }
*/

public class DeviceObjectReference {
    private var _device_identifier: Option<BACnet_ObjectIdentifier> = None //[0] BACnetObjectIdentifier OPTIONAL
    private var _object_identifier: BACnet_ObjectIdentifier = BACnet_ObjectIdentifier() //[1] BACnetObjectIdentifier

    public mut prop device_identifier: Option<BACnet_ObjectIdentifier> {
        get() { return _device_identifier }
        set(arg_Value) { _device_identifier = arg_Value }
    }
    public mut prop object_identifier: BACnet_ObjectIdentifier {
        get() { return _object_identifier }
        set(arg_Value) { _object_identifier = arg_Value }
    }

    public init() {
    }

    public init(arg_object_identifier: BACnet_ObjectIdentifier) {
        this._device_identifier = None
        this._object_identifier = arg_object_identifier
    }
}

