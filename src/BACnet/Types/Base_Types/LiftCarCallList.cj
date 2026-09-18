public package BACnetCodec4cj.BACnet.Types.Base_Types


/*
--ISO_16484_5_2022_Page_920
--21.6 Base Types

BACnetLiftCarCallList ::= SEQUENCE {
 floor-numbers [0] SEQUENCE OF Unsigned8
 }
*/

public class LiftCarCallList {
    private var _floor_numbers: UInt8 = 0u8 //[0] SEQUENCE OF Unsigned8

    public mut prop floor_numbers: UInt8 {
        get() { return _floor_numbers }
        set(arg_Value) { _floor_numbers = arg_Value }
    }

    public init() {
    }

    public init(arg_floor_numbers: UInt8) {
        this._floor_numbers = arg_floor_numbers
    }
}

