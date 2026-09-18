public package BACnetCodec4cj.BACnet.Types.Base_Types


/*
--ISO_16484_5_2022_Page_918
--21.6 Base Types

BACnetLandingCallStatus ::= SEQUENCE {
 floor-number [0] Unsigned8,
 command CHOICE {
   direction  [1] BACnetLiftCarDirection,
   destination [2] Unsigned8
   },
 floor-text [3] CharacterString OPTIONAL
 }
--ISO_16484_5_2022_Page_919
*/

public class LandingCallStatus {
    private var _floor_number: UInt8 = 0u8 //[0] Unsigned8
    private var _command: UInt8 = 0u8 // CHOICE {
    private var _floor_text: Option<String> = None //[3] CharacterString OPTIONAL

    public mut prop floor_number: UInt8 {
        get() { return _floor_number }
        set(arg_Value) { _floor_number = arg_Value }
    }
    public mut prop command: UInt8 {
        get() { return _command }
        set(arg_Value) { _command = arg_Value }
    }
    public mut prop floor_text: Option<String> {
        get() { return _floor_text }
        set(arg_Value) { _floor_text = arg_Value }
    }

    public init() {
    }

    public init(arg_floor_number: UInt8, arg_command: UInt8) {
        this._floor_number = arg_floor_number
        this._command = arg_command
        this._floor_text = None
    }
}

