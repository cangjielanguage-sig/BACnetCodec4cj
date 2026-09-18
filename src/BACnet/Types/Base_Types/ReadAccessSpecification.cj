public package BACnetCodec4cj.BACnet.Types.Base_Types

import BACnetCodec4cj.BACnet.Types.ApplicationTypes.*

/*
--ISO_16484_5_2022_Page_959
--21.6 Base Types

ReadAccessSpecification ::= SEQUENCE {
 object-identifier [0] BACnetObjectIdentifier,
 list-of-property-references [1] SEQUENCE OF BACnetPropertyReference
 }
*/

public class ReadAccessSpecification {
    private var _object_identifier: BACnet_ObjectIdentifier = BACnet_ObjectIdentifier() //[0] BACnetObjectIdentifier
    private var _list_of_property_references: UInt8 = 0u8 //[1] SEQUENCE OF BACnetPropertyReference

    public mut prop object_identifier: BACnet_ObjectIdentifier {
        get() { return _object_identifier }
        set(arg_Value) { _object_identifier = arg_Value }
    }
    public mut prop list_of_property_references: UInt8 {
        get() { return _list_of_property_references }
        set(arg_Value) { _list_of_property_references = arg_Value }
    }

    public init() {
    }

    public init(arg_object_identifier: BACnet_ObjectIdentifier, arg_list_of_property_references: UInt8) {
        this._object_identifier = arg_object_identifier
        this._list_of_property_references = arg_list_of_property_references
    }
}

