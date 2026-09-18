public package BACnetCodec4cj.BACnet.Types.Base_Types


/*
--ISO_16484_5_2022_Page_919
--21.6 Base Types

BACnetLandingDoorStatus ::= SEQUENCE {
 landing-doors [0] SEQUENCE OF SEQUENCE {
   floor-number [0] Unsigned8,
   door-status [1] BACnetDoorStatus
   }
 }
*/

public class LandingDoorStatus {
    private var _landing_doors: UInt8 = 0u8 //[0] SEQUENCE OF SEQUENCE {

    public mut prop landing_doors: UInt8 {
        get() { return _landing_doors }
        set(arg_Value) { _landing_doors = arg_Value }
    }

    public init() {
    }

    public init(arg_landing_doors: UInt8) {
        this._landing_doors = arg_landing_doors
    }
}

