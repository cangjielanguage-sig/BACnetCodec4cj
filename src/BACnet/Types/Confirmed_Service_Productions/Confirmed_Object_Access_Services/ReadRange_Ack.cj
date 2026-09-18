public package BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Object_Access_Services

import BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Service_ACK.Confirmed_Service_ACK

import BACnetCodec4cj.BACnet.Enum.*
import BACnetCodec4cj.BACnet.Types.ApplicationTypes.*

/*
--ISO_16484_5_2022_Page_875
--21.2.3 Confirmed Object Access Services

ReadRange-ACK ::= SEQUENCE {
 object-identifier [0] BACnetObjectIdentifier,
 property-identifier [1] BACnetPropertyIdentifier,
 property-array-index [2] Unsigned OPTIONAL, -- used only with array datatype
 result-flags [3] BACnetResultFlags,
 item-count [4] Unsigned,
 item-data  [5] SEQUENCE OF ABSTRACT-SYNTAX.&Type,
 first-sequence-number [6] Unsigned32 OPTIONAL -- used only if item-count > 0 and the request was either of -- type by-sequence-number or by-time
 }
*/

public class ReadRange_Ack <:Confirmed_Service_ACK {
    private var _object_identifier: BACnet_ObjectIdentifier = BACnet_ObjectIdentifier() //[0] BACnetObjectIdentifier
    private var _property_identifier: PropertyIdentifier_Enum = PropertyIdentifier_Enum.fromUInt32(0) //[1] BACnetPropertyIdentifier
    private var _property_array_index: Option<UInt32> = None //[2] Unsigned OPTIONAL, -- used only with array datatype
    private var _result_flags: UInt8 = 0u8 //[3] BACnetResultFlags
    private var _item_count: UInt32 = 0u32 //[4] Unsigned
    private var _item_data: UInt8 = 0u8 //[5] SEQUENCE OF ABSTRACT-SYNTAX.&Type
    private var _first_sequence_number: Option<UInt32> = None //[6] Unsigned32 OPTIONAL -- used only if item-count > 0 and the request was either of -- type by-sequence-number or by-time

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
    public mut prop result_flags: UInt8 {
        get() { return _result_flags }
        set(arg_Value) { _result_flags = arg_Value }
    }
    public mut prop item_count: UInt32 {
        get() { return _item_count }
        set(arg_Value) { _item_count = arg_Value }
    }
    public mut prop item_data: UInt8 {
        get() { return _item_data }
        set(arg_Value) { _item_data = arg_Value }
    }
    public mut prop first_sequence_number: Option<UInt32> {
        get() { return _first_sequence_number }
        set(arg_Value) { _first_sequence_number = arg_Value }
    }

    public init() {
    }

    public init(arg_object_identifier: BACnet_ObjectIdentifier, arg_property_identifier: PropertyIdentifier_Enum, arg_result_flags: UInt8, arg_item_count: UInt32, arg_item_data: UInt8) {
        this._object_identifier = arg_object_identifier
        this._property_identifier = arg_property_identifier
        this._property_array_index = None
        this._result_flags = arg_result_flags
        this._item_count = arg_item_count
        this._item_data = arg_item_data
        this._first_sequence_number = None
    }
}

