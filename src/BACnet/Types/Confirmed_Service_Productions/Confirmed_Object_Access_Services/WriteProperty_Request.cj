public package BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Object_Access_Services

import BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Service_Request.Confirmed_Service_Request

import BACnetCodec4cj.BACnet.Enum.*
import BACnetCodec4cj.BACnet.Types.ApplicationTypes.*

/*
--ISO_16484_5_2022_Page_876
--21.2.3 Confirmed Object Access Services

WriteProperty-Request ::= SEQUENCE {
 object-identifier [0] BACnetObjectIdentifier,
 property-identifier [1] BACnetPropertyIdentifier,
 property-array-index [2] Unsigned OPTIONAL, -- used only with array datatype
   -- if omitted with an array the entire
   -- array is referenced
 property-value [3] ABSTRACT-SYNTAX.&Type,
 priority [4] Unsigned (1..16) OPTIONAL – used only when property is commandable
 }
*/

public class WriteProperty_Request <:Confirmed_Service_Request {
    private var _object_identifier: BACnet_ObjectIdentifier = BACnet_ObjectIdentifier() //[0] BACnetObjectIdentifier
    private var _property_identifier: PropertyIdentifier_Enum = PropertyIdentifier_Enum.fromUInt32(0) //[1] BACnetPropertyIdentifier
    private var _property_array_index: Option<UInt32> = None //[2] Unsigned OPTIONAL, -- used only with array datatype
    private var _property_value: Array<Byte> = Array<Byte>(0, repeat: 0u8) //[3] ABSTRACT-SYNTAX.&Type
    private var _priority: Option<UInt32> = None //[4] Unsigned (1..16) OPTIONAL – used only when property is commandable

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
    public mut prop priority: Option<UInt32> {
        get() { return _priority }
        set(arg_Value) { _priority = arg_Value }
    }

    public init() {
    }

    public init(arg_object_identifier: BACnet_ObjectIdentifier, arg_property_identifier: PropertyIdentifier_Enum, arg_property_value: Array<Byte>) {
        this._object_identifier = arg_object_identifier
        this._property_identifier = arg_property_identifier
        this._property_array_index = None
        this._property_value = arg_property_value
        this._priority = None
    }
}

