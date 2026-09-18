public package BACnetCodec4cj.BACnet.Types.Base_Types

import BACnetCodec4cj.BACnet.Enum.*

/*
--ISO_16484_5_2022_Page_897
--21.6 Base Types

BACnetAuthenticationFactor ::= SEQUENCE {
 format-type [0] BACnetAuthenticationFactorType,
 format-class [1] Unsigned,
 value [2] OCTET STRING -- for encoding of values into this octet string see Annex P.
 }
*/

public class AuthenticationFactor {
    private var _format_type: AuthenticationFactorType_Enum = AuthenticationFactorType_Enum.fromUInt32(0) //[0] BACnetAuthenticationFactorType
    private var _format_class: UInt32 = 0u32 //[1] Unsigned
    private var _value: Array<Byte> = Array<Byte>(0, repeat: 0u8) //[2] OCTET STRING -- for encoding of values into this octet string see Annex P.

    public mut prop format_type: AuthenticationFactorType_Enum {
        get() { return _format_type }
        set(arg_Value) { _format_type = arg_Value }
    }
    public mut prop format_class: UInt32 {
        get() { return _format_class }
        set(arg_Value) { _format_class = arg_Value }
    }
    public mut prop value: Array<Byte> {
        get() { return _value }
        set(arg_Value) { _value = arg_Value }
    }

    public init() {
    }

    public init(arg_format_type: AuthenticationFactorType_Enum, arg_format_class: UInt32, arg_value: Array<Byte>) {
        this._format_type = arg_format_type
        this._format_class = arg_format_class
        this._value = arg_value
    }
}

