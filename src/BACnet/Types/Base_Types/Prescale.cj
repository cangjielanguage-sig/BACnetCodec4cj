public package BACnetCodec4cj.BACnet.Types.Base_Types


/*
--ISO_16484_5_2022_Page_933
--21.6 Base Types

BACnetPrescale ::= SEQUENCE {
 multiplier [0] Unsigned,
 modulo-divide [1] Unsigned
 }
*/

public class Prescale {
    private var _multiplier: UInt32 = 0u32 //[0] Unsigned
    private var _modulo_divide: UInt32 = 0u32 //[1] Unsigned

    public mut prop multiplier: UInt32 {
        get() { return _multiplier }
        set(arg_Value) { _multiplier = arg_Value }
    }
    public mut prop modulo_divide: UInt32 {
        get() { return _modulo_divide }
        set(arg_Value) { _modulo_divide = arg_Value }
    }

    public init() {
    }

    public init(arg_multiplier: UInt32, arg_modulo_divide: UInt32) {
        this._multiplier = arg_multiplier
        this._modulo_divide = arg_modulo_divide
    }
}

