public package BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Object_Access_Services

import BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Service_Request.Confirmed_Service_Request

import BACnetCodec4cj.BACnet.Enum.*
import BACnetCodec4cj.BACnet.Types.ApplicationTypes.*

/*
--ISO_16484_5_2022_Page_875
--21.2.3 Confirmed Object Access Services

ReadRange-Request ::= SEQUENCE {
 object-identifier [0] BACnetObjectIdentifier,
 property-identifier [1] BACnetPropertyIdentifier,
 property-array-index [2] Unsigned OPTIONAL, -- used only with array datatype
 range   CHOICE {
   by-position [3] SEQUENCE {
          reference-index Unsigned,
          count  INTEGER16
      },
   -- context tag 4 is deprecated
   -- context tag 5 is deprecated
   by-sequence-number [6]  SEQUENCE {
          reference-sequence-number Unsigned,
          count   INTEGER16
      },
   by-time  [7]  SEQUENCE {
          reference-time BACnetDateTime,
          count  INTEGER16
      }
   } OPTIONAL
 }
*/

public class ReadRange_Request <:Confirmed_Service_Request {
    private var _object_identifier: BACnet_ObjectIdentifier = BACnet_ObjectIdentifier() //[0] BACnetObjectIdentifier
    private var _property_identifier: PropertyIdentifier_Enum = PropertyIdentifier_Enum.fromUInt32(0) //[1] BACnetPropertyIdentifier
    private var _property_array_index: Option<UInt32> = None //[2] Unsigned OPTIONAL, -- used only with array datatype
    private var _range: UInt8 = 0u8 // CHOICE {

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
    public mut prop range: UInt8 {
        get() { return _range }
        set(arg_Value) { _range = arg_Value }
    }

    public init() {
    }

    public init(arg_object_identifier: BACnet_ObjectIdentifier, arg_property_identifier: PropertyIdentifier_Enum, arg_range: UInt8) {
        this._object_identifier = arg_object_identifier
        this._property_identifier = arg_property_identifier
        this._property_array_index = None
        this._range = arg_range
    }
}

