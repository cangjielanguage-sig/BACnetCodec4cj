public package BACnetCodec4cj.BACnet.Types.Base_Types


/*
--ISO_16484_5_2022_Page_895
--21.6 Base Types

BACnetAssignedLandingCalls ::= SEQUENCE {
 landing-calls [0] SEQUENCE OF SEQUENCE {
    floor-number [0] Unsigned8,
    direction [1] BACnetLiftCarDirection
   }
 }
*/

public class AssignedLandingCalls {
    private var _landing_calls: UInt8 = 0u8 //[0] SEQUENCE OF SEQUENCE {

    public mut prop landing_calls: UInt8 {
        get() { return _landing_calls }
        set(arg_Value) { _landing_calls = arg_Value }
    }

    public init() {
    }

    public init(arg_landing_calls: UInt8) {
        this._landing_calls = arg_landing_calls
    }
}

