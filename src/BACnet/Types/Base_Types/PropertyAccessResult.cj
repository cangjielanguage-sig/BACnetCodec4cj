public package BACnetCodec4cj.BACnet.Types.Base_Types

import BACnetCodec4cj.BACnet.Enum.*
import BACnetCodec4cj.BACnet.Types.ApplicationTypes.*

/*
--ISO_16484_5_2022_Page_934
--21.6 Base Types

BACnetPropertyAccessResult ::= SEQUENCE {
 object-identifier  [0] BACnetObjectIdentifier,
 property-identifier [1] BACnetPropertyIdentifier,
 property-array-index [2] Unsigned OPTIONAL, -- used only with array datatype
      -- if omitted with an array then
      -- the entire array is referenced
 device-identifier  [3] BACnetObjectIdentifier OPTIONAL,
 access-result  CHOICE {
    property-value  [4] ABSTRACT-SYNTAX.&Type,
    property-access-error [5] Error
    }
 }
*/

public class PropertyAccessResult {
    private var _object_identifier: BACnet_ObjectIdentifier = BACnet_ObjectIdentifier() //[0] BACnetObjectIdentifier
    private var _property_identifier: PropertyIdentifier_Enum = PropertyIdentifier_Enum.fromUInt32(0) //[1] BACnetPropertyIdentifier
    private var _property_array_index: Option<UInt32> = None //[2] Unsigned OPTIONAL, -- used only with array datatype
    private var _device_identifier: Option<BACnet_ObjectIdentifier> = None //[3] BACnetObjectIdentifier OPTIONAL
    private var _access_result: UInt8 = 0u8 // CHOICE {

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
    public mut prop device_identifier: Option<BACnet_ObjectIdentifier> {
        get() { return _device_identifier }
        set(arg_Value) { _device_identifier = arg_Value }
    }
    public mut prop access_result: UInt8 {
        get() { return _access_result }
        set(arg_Value) { _access_result = arg_Value }
    }

    public init() {
    }

    public init(arg_object_identifier: BACnet_ObjectIdentifier, arg_property_identifier: PropertyIdentifier_Enum, arg_access_result: UInt8) {
        this._object_identifier = arg_object_identifier
        this._property_identifier = arg_property_identifier
        this._property_array_index = None
        this._device_identifier = None
        this._access_result = arg_access_result
    }
}

