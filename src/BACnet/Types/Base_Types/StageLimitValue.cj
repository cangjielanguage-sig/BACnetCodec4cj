public package BACnetCodec4cj.BACnet.Types.Base_Types


/*
--ISO_16484_5_2022_Page_956
--21.6 Base Types

BACnetStageLimitValue ::= SEQUENCE {
 limit REAL,
 values BITSTRING, -- length is Nreferences bits, see Clause 12.62.6
 deadband REAL
 }
*/

public class StageLimitValue {
    private var _limit: Float32 = 0.0f32 // REAL
    private var _values: UInt8 = 0u8 // BITSTRING, -- length is Nreferences bits, see Clause 12.62.6
    private var _deadband: Float32 = 0.0f32 // REAL

    public mut prop limit: Float32 {
        get() { return _limit }
        set(arg_Value) { _limit = arg_Value }
    }
    public mut prop values: UInt8 {
        get() { return _values }
        set(arg_Value) { _values = arg_Value }
    }
    public mut prop deadband: Float32 {
        get() { return _deadband }
        set(arg_Value) { _deadband = arg_Value }
    }

    public init() {
    }

    public init(arg_limit: Float32, arg_values: UInt8, arg_deadband: Float32) {
        this._limit = arg_limit
        this._values = arg_values
        this._deadband = arg_deadband
    }
}

