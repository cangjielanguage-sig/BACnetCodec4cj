public package BACnetCodec4cj.BACnet.Types.Base_Types

import BACnetCodec4cj.BACnet.Enum.*

/*
--ISO_16484_5_2022_Page_952
--21.6 Base Types

BACnetPropertyValue ::= SEQUENCE {
 property-identifier [0] BACnetPropertyIdentifier,
 property-array-index [1] Unsigned OPTIONAL,  -- used only with array datatypes
       -- if omitted with an array the entire array is referenced
 property-value  [2] ABSTRACT-SYNTAX.&Type, -- any datatype appropriate for the specified property
 priority  [3] Unsigned (1..16) OPTIONAL  -- used only when property is commandable
 }
*/

public class PropertyValue {
    private var _property_identifier: PropertyIdentifier_Enum = PropertyIdentifier_Enum.fromUInt32(0) //[0] BACnetPropertyIdentifier
    private var _property_array_index: Option<UInt32> = None //[1] Unsigned OPTIONAL,  -- used only with array datatypes
    private var _property_value: Array<Byte> = Array<Byte>(0, repeat: 0u8) //[2] ABSTRACT-SYNTAX.&Type, -- any datatype appropriate for the specified property
    private var _priority: Option<UInt32> = None //[3] Unsigned (1..16) OPTIONAL  -- used only when property is commandable

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
    public mut prop priority: Option<UInt32> {
        get() { return _priority }
        set(arg_Value) { _priority = arg_Value }
    }

    public init() {
    }

    public init(arg_property_identifier: PropertyIdentifier_Enum, arg_property_value: Array<Byte>) {
        this._property_identifier = arg_property_identifier
        this._property_array_index = None
        this._property_value = arg_property_value
        this._priority = None
    }
}

