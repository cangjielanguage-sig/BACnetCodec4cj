public package BACnetCodec4cj.BACnet.Types.Base_Types

import BACnetCodec4cj.BACnet.Enum.*
import BACnetCodec4cj.BACnet.Types.ApplicationTypes.*

/*
--ISO_16484_5_2022_Page_895
--21.6 Base Types

BACnetActionCommand ::= SEQUENCE {
 device-identifier [0] BACnetObjectIdentifier OPTIONAL,
 object-identifier [1] BACnetObjectIdentifier,
 property-identifier [2] BACnetPropertyIdentifier,
 property-array-index [3] Unsigned OPTIONAL,   -- used only with array datatype
 property-value [4] ABSTRACT-SYNTAX.&Type,
 priority [5] Unsigned (1..16) OPTIONAL, -- used only when property is commandable
 post-delay [6] Unsigned OPTIONAL,
 quit-on-failure [7] BOOLEAN,
 write-successful [8] BOOLEAN
 }
*/

public class ActionCommand {
    private var _device_identifier: Option<BACnet_ObjectIdentifier> = None //[0] BACnetObjectIdentifier OPTIONAL
    private var _object_identifier: BACnet_ObjectIdentifier = BACnet_ObjectIdentifier() //[1] BACnetObjectIdentifier
    private var _property_identifier: PropertyIdentifier_Enum = PropertyIdentifier_Enum.fromUInt32(0) //[2] BACnetPropertyIdentifier
    private var _property_array_index: Option<UInt32> = None //[3] Unsigned OPTIONAL,   -- used only with array datatype
    private var _property_value: Array<Byte> = Array<Byte>(0, repeat: 0u8) //[4] ABSTRACT-SYNTAX.&Type
    private var _priority: Option<UInt32> = None //[5] Unsigned (1..16) OPTIONAL, -- used only when property is commandable
    private var _post_delay: Option<UInt32> = None //[6] Unsigned OPTIONAL
    private var _quit_on_failure: Bool = false //[7] BOOLEAN
    private var _write_successful: Bool = false //[8] BOOLEAN

    public mut prop device_identifier: Option<BACnet_ObjectIdentifier> {
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
    public mut prop priority: Option<UInt32> {
        get() { return _priority }
        set(arg_Value) { _priority = arg_Value }
    }
    public mut prop post_delay: Option<UInt32> {
        get() { return _post_delay }
        set(arg_Value) { _post_delay = arg_Value }
    }
    public mut prop quit_on_failure: Bool {
        get() { return _quit_on_failure }
        set(arg_Value) { _quit_on_failure = arg_Value }
    }
    public mut prop write_successful: Bool {
        get() { return _write_successful }
        set(arg_Value) { _write_successful = arg_Value }
    }

    public init() {
    }

    public init(arg_object_identifier: BACnet_ObjectIdentifier, arg_property_identifier: PropertyIdentifier_Enum, arg_property_value: Array<Byte>, arg_quit_on_failure: Bool, arg_write_successful: Bool) {
        this._device_identifier = None
        this._object_identifier = arg_object_identifier
        this._property_identifier = arg_property_identifier
        this._property_array_index = None
        this._property_value = arg_property_value
        this._priority = None
        this._post_delay = None
        this._quit_on_failure = arg_quit_on_failure
        this._write_successful = arg_write_successful
    }
}

