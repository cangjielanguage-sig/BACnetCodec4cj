public package BACnetCodec4cj.BACnet.Types.Base_Types


/*
--ISO_16484_5_2022_Page_898
--21.6 Base Types

BACnetAuthenticationPolicy ::= SEQUENCE {
 policy  [0] SEQUENCE OF SEQUENCE {
   credential-data-input  [0] BACnetDeviceObjectReference,
   index   [1] Unsigned
   },
 order-enforced [1] BOOLEAN,
 timeout [2] Unsigned
 }
*/

public class AuthenticationPolicy {
    private var _policy: UInt8 = 0u8 //[0] SEQUENCE OF SEQUENCE {
    private var _order_enforced: Bool = false //[1] BOOLEAN
    private var _timeout: UInt32 = 0u32 //[2] Unsigned

    public mut prop policy: UInt8 {
        get() { return _policy }
        set(arg_Value) { _policy = arg_Value }
    }
    public mut prop order_enforced: Bool {
        get() { return _order_enforced }
        set(arg_Value) { _order_enforced = arg_Value }
    }
    public mut prop timeout: UInt32 {
        get() { return _timeout }
        set(arg_Value) { _timeout = arg_Value }
    }

    public init() {
    }

    public init(arg_policy: UInt8, arg_order_enforced: Bool, arg_timeout: UInt32) {
        this._policy = arg_policy
        this._order_enforced = arg_order_enforced
        this._timeout = arg_timeout
    }
}

