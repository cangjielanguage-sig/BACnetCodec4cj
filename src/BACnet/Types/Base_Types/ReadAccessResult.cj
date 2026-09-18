public package BACnetCodec4cj.BACnet.Types.Base_Types

import BACnetCodec4cj.BACnet.Types.ApplicationTypes.*

/*
--ISO_16484_5_2022_Page_959
--21.6 Base Types

ReadAccessResult ::= SEQUENCE {
 object-identifier  [0] BACnetObjectIdentifier,
 list-of-results  [1] SEQUENCE OF SEQUENCE {
  property-identifier [2] BACnetPropertyIdentifier,
  property-array-index [3] Unsigned OPTIONAL, -- used only with array datatype
       -- if omitted with an array the entire
       -- array is referenced
  read-result CHOICE {
     property-value  [4] ABSTRACT-SYNTAX.&Type,
     property-access-error [5] Error
     }
  }
 }
*/

public class ReadAccessResult {
    private var _object_identifier: BACnet_ObjectIdentifier = BACnet_ObjectIdentifier() //[0] BACnetObjectIdentifier
    private var _list_of_results: UInt8 = 0u8 //[1] SEQUENCE OF SEQUENCE {

    public mut prop object_identifier: BACnet_ObjectIdentifier {
        get() { return _object_identifier }
        set(arg_Value) { _object_identifier = arg_Value }
    }
    public mut prop list_of_results: UInt8 {
        get() { return _list_of_results }
        set(arg_Value) { _list_of_results = arg_Value }
    }

    public init() {
    }

    public init(arg_object_identifier: BACnet_ObjectIdentifier, arg_list_of_results: UInt8) {
        this._object_identifier = arg_object_identifier
        this._list_of_results = arg_list_of_results
    }
}

