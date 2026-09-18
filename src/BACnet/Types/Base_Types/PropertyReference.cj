public package BACnetCodec4cj.BACnet.Types.Base_Types

import BACnetCodec4cj.BACnet.Enum.*

/*
--ISO_16484_5_2022_Page_950
--21.6 Base Types

BACnetPropertyReference ::= SEQUENCE {
 property-identifier [0] BACnetPropertyIdentifier,
 property-array-index [1] Unsigned OPTIONAL -- used only with array datatype
      -- if omitted with an array the entire array is referenced
 }
*/

public class PropertyReference {
    private var _property_identifier: PropertyIdentifier_Enum = PropertyIdentifier_Enum.fromUInt32(0) //[0] BACnetPropertyIdentifier
    private var _property_array_index: Option<UInt32> = None //[1] Unsigned OPTIONAL -- used only with array datatype

    public mut prop property_identifier: PropertyIdentifier_Enum {
        get() { return _property_identifier }
        set(arg_Value) { _property_identifier = arg_Value }
    }
    public mut prop property_array_index: Option<UInt32> {
        get() { return _property_array_index }
        set(arg_Value) { _property_array_index = arg_Value }
    }

    public init() {
    }

    public init(arg_property_identifier: PropertyIdentifier_Enum) {
        this._property_identifier = arg_property_identifier
        this._property_array_index = None
    }
}

