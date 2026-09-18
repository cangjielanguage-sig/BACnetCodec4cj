public package BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Remote_Device_Management_Services

import BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Service_Request.Confirmed_Service_Request


/*
--ISO_16484_5_2022_Page_877
--21.2.4  Confirmed Remote Device Management Services

DeviceCommunicationControl-Request ::= SEQUENCE {
 time-duration [0] Unsigned16 OPTIONAL,
 enable-disable [1] ENUMERATED {
    enable (0),
    -- disable - deprecated in version 1 revision 20
    disable-initiation (2)
   },
 password [2] CharacterString (SIZE (1..20)) OPTIONAL
 }
*/

public class DeviceCommunicationControl_Request <: Confirmed_Service_Request {
    private var _time_duration: Option<UInt16> = None //[0] Unsigned16 OPTIONAL
    private var _enable_disable: UInt8 = 0u8 //[1] ENUMERATED {
    private var _password: Option<String> = None //[2] CharacterString (SIZE (1..20)) OPTIONAL

    public mut prop time_duration: Option<UInt16> {
        get() { return _time_duration }
        set(arg_Value) { _time_duration = arg_Value }
    }
    public mut prop enable_disable: UInt8 {
        get() { return _enable_disable }
        set(arg_Value) { _enable_disable = arg_Value }
    }
    public mut prop password: Option<String> {
        get() { return _password }
        set(arg_Value) { _password = arg_Value }
    }

    public init() {
    }

    public init(arg_enable_disable: UInt8) {
        this._time_duration = None
        this._enable_disable = arg_enable_disable
        this._password = None
    }
}

