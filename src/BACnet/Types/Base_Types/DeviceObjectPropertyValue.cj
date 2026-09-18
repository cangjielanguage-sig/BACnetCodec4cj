public package BACnetCodec4cj.BACnet.Types.Base_Types

import BACnetCodec4cj.BACnet.Enum.*
import BACnetCodec4cj.BACnet.Types.ApplicationTypes.*

/*
--ISO_16484_5_2022_Page_901
--21.6 Base Types

BACnetDeviceObjectPropertyValue ::= SEQUENCE {
 device-identifier [0] BACnetObjectIdentifier,
 object-identifier [1] BACnetObjectIdentifier,
 property-identifier [2] BACnetPropertyIdentifier,
 property-array-index [3] Unsigned  OPTIONAL, -- used only with array datatype
 property-value [4] ABSTRACT-SYNTAX.&Type
 }
*/

public class DeviceObjectPropertyValue {
    private var _device_identifier: BACnet_ObjectIdentifier = BACnet_ObjectIdentifier() //[0] BACnetObjectIdentifier
    private var _object_identifier: BACnet_ObjectIdentifier = BACnet_ObjectIdentifier() //[1] BACnetObjectIdentifier
    private var _property_identifier: PropertyIdentifier_Enum = PropertyIdentifier_Enum.fromUInt32(0) //[2] BACnetPropertyIdentifier
    private var _property_array_index: Option<UInt32> = None //[3] Unsigned  OPTIONAL, -- used only with array datatype
    private var _property_value: Array<Byte> = Array<Byte>(0, repeat: 0u8) //[4] ABSTRACT-SYNTAX.&Type

    public mut prop device_identifier: BACnet_ObjectIdentifier {
        get() { return _device_identifier }
        set(arg_Value) { _device_identifier = arg_Value }
    }
    public mut prop object_identifier: BACnet_ObjectIdentifier {
        get() { return _object_identifier }
        set(arg_Value) { _object_identifier = arg_Value }
    }
    public mut prop property_identifier: PropertyIdentifier_Enum {
        get() { return _property_identifier }
        set(arg_Value) { _property_identifier = arg_Value }
    }
    public mut prop property_array_index: Option<UInt32> {
        get() { return _property_array_index }
        set(arg_Value) { _property_array_index = arg_Value }
    }
    public mut prop property_value: Array<Byte> {
        get() { return _property_value }
        set(arg_Value) { _property_value = arg_Value }
    }

    public init() {
    }

    public init(arg_device_identifier: BACnet_ObjectIdentifier, arg_object_identifier: BACnet_ObjectIdentifier, arg_property_identifier: PropertyIdentifier_Enum, arg_property_value: Array<Byte>) {
        this._device_identifier = arg_device_identifier
        this._object_identifier = arg_object_identifier
        this._property_identifier = arg_property_identifier
        this._property_array_index = None
        this._property_value = arg_property_value
    }
}

