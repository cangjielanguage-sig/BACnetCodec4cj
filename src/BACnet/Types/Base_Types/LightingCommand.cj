public package BACnetCodec4cj.BACnet.Types.Base_Types

import BACnetCodec4cj.BACnet.Enum.*

/*
--ISO_16484_5_2022_Page_922
--21.6 Base Types

BACnetLightingCommand ::= SEQUENCE {
 operation [0] BACnetLightingOperation,
 target-level [1] REAL (0.0..100.0) OPTIONAL,
 ramp-rate [2] REAL (0.1..100.0)  OPTIONAL,
 step-increment [3] REAL (0.1..100.0)  OPTIONAL,
 fade-time [4] Unsigned (100..86400000)  OPTIONAL,
 priority [5] Unsigned (1..16) OPTIONAL
 }
 -- Note that the combination of level, ramp-rate, step-increment, and fade-time fields is
 -- dependent on the specific lighting operation. See Table 12-67.
*/

public class LightingCommand {
    private var _operation: LightingOperation_Enum = LightingOperation_Enum.fromUInt32(0) //[0] BACnetLightingOperation
    private var _target_level: Option<Float32> = None //[1] REAL (0.0..100.0) OPTIONAL
    private var _ramp_rate: Option<Float32> = None //[2] REAL (0.1..100.0)  OPTIONAL
    private var _step_increment: Option<Float32> = None //[3] REAL (0.1..100.0)  OPTIONAL
    private var _fade_time: Option<UInt32> = None //[4] Unsigned (100..86400000)  OPTIONAL
    private var _priority: Option<UInt32> = None //[5] Unsigned (1..16) OPTIONAL

    public mut prop operation: LightingOperation_Enum {
        get() { return _operation }
        set(arg_Value) { _operation = arg_Value }
    }
    public mut prop target_level: Option<Float32> {
        get() { return _target_level }
        set(arg_Value) { _target_level = arg_Value }
    }
    public mut prop ramp_rate: Option<Float32> {
        get() { return _ramp_rate }
        set(arg_Value) { _ramp_rate = arg_Value }
    }
    public mut prop step_increment: Option<Float32> {
        get() { return _step_increment }
        set(arg_Value) { _step_increment = arg_Value }
    }
    public mut prop fade_time: Option<UInt32> {
        get() { return _fade_time }
        set(arg_Value) { _fade_time = arg_Value }
    }
    public mut prop priority: Option<UInt32> {
        get() { return _priority }
        set(arg_Value) { _priority = arg_Value }
    }

    public init() {
    }

    public init(arg_operation: LightingOperation_Enum) {
        this._operation = arg_operation
        this._target_level = None
        this._ramp_rate = None
        this._step_increment = None
        this._fade_time = None
        this._priority = None
    }
}

