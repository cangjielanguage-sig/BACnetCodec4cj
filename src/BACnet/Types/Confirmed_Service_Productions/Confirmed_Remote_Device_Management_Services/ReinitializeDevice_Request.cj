public package BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Remote_Device_Management_Services

import BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Service_Request.Confirmed_Service_Request


/*
--ISO_16484_5_2022_Page_877
--21.2.4  Confirmed Remote Device Management Services

ReinitializeDevice-Request ::= SEQUENCE {
 reinitialized-state-of-device [0] ENUMERATED {
    coldstart (0),
    warmstart (1),
    start-backup (2),
    end-backup (3),
    start-restore (4),
    end-restore (5),
    abort-restore (6),
    activate-changes (7)
   },
 password [1] CharacterString (SIZE (1..20)) OPTIONAL
 }
--ISO_16484_5_2022_Page_877
--21.2.5 Confirmed Virtual Terminal Services
*/

public class ReinitializeDevice_Request <:Confirmed_Service_Request{
    private var _reinitialized_state_of_device: UInt8 = 0u8 //[0] ENUMERATED {
    private var _password: Option<String> = None //[1] CharacterString (SIZE (1..20)) OPTIONAL

    public mut prop reinitialized_state_of_device: UInt8 {
        get() { return _reinitialized_state_of_device }
        set(arg_Value) { _reinitialized_state_of_device = arg_Value }
    }
    public mut prop password: Option<String> {
        get() { return _password }
        set(arg_Value) { _password = arg_Value }
    }

    public init() {
    }

    public init(arg_reinitialized_state_of_device: UInt8) {
        this._reinitialized_state_of_device = arg_reinitialized_state_of_device
        this._password = None
    }
}

