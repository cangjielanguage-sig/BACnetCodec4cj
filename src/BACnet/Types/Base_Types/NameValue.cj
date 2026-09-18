public package BACnetCodec4cj.BACnet.Types.Base_Types


/*
--ISO_16484_5_2022_Page_924
--21.6 Base Types

BACnetNameValue ::= SEQUENCE {
 name [0] CharacterString,
 value ABSTRACT-SYNTAX.&Type OPTIONAL
  -- value is limited to primitive datatypes and BACnetDateTime
 }
*/

public class NameValue {
    private var _name: String = "" //[0] CharacterString
    private var _value: Option<Array<Byte>> = None // ABSTRACT-SYNTAX.&Type OPTIONAL

    public mut prop name: String {
        get() { return _name }
        set(arg_Value) { _name = arg_Value }
    }
    public mut prop value: Option<Array<Byte>> {
        get() { return _value }
        set(arg_Value) { _value = arg_Value }
    }

    public init() {
    }

    public init(arg_name: String) {
        this._name = arg_name
        this._value = None
    }
}

