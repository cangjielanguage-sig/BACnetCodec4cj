public package BACnetCodec4cj.BACnet.Types.Base_Types


/*
--ISO_16484_5_2022_Page_932
--21.6 Base Types

BACnetPortPermission ::= SEQUENCE {
 port-id [0] Unsigned8,
 enabled [1] BOOLEAN
 }
--ISO_16484_5_2022_Page_933
*/

public class PortPermission {
    private var _port_id: UInt8 = 0u8 //[0] Unsigned8
    private var _enabled: Bool = false //[1] BOOLEAN

    public mut prop port_id: UInt8 {
        get() { return _port_id }
        set(arg_Value) { _port_id = arg_Value }
    }
    public mut prop enabled: Bool {
        get() { return _enabled }
        set(arg_Value) { _enabled = arg_Value }
    }

    public init() {
    }

    public init(arg_port_id: UInt8, arg_enabled: Bool) {
        this._port_id = arg_port_id
        this._enabled = arg_enabled
    }
}

