public package BACnetCodec4cj.BACnet.Types.Base_Types


/*
--ISO_16484_5_2022_Page_895
--21.6 Base Types

BACnetActionList ::= SEQUENCE {
 action [0] SEQUENCE OF BACnetActionCommand
 }
*/

public class ActionList {
    private var _action: UInt8 = 0u8 //[0] SEQUENCE OF BACnetActionCommand

    public mut prop action: UInt8 {
        get() { return _action }
        set(arg_Value) { _action = arg_Value }
    }

    public init() {
    }

    public init(arg_action: UInt8) {
        this._action = arg_action
    }
}

