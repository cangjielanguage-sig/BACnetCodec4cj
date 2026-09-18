public package BACnetCodec4cj.BACnet.Types.Base_Types


/*
--ISO_16484_5_2022_Page_894
--21.6 Base Types

BACnetAccumulatorRecord ::= SEQUENCE {
 timestamp [0] BACnetDateTime,
 present-value [1] Unsigned,
 accumulated-value [2] Unsigned,
 accumulator-status [3]  ENUMERATED {
    normal (0),
    starting (1),
    recovered (2),
    abnormal (3),
    failed  (4)
   }
 }
*/

public class AccumulatorRecord {
    private var _timestamp: BACnetDateTime = BACnetDateTime() //[0] BACnetDateTime
    private var _present_value: UInt32 = 0u32 //[1] Unsigned
    private var _accumulated_value: UInt32 = 0u32 //[2] Unsigned
    private var _accumulator_status: UInt8 = 0u8 //[3] ENUMERATED {

    public mut prop timestamp: BACnetDateTime {
        get() { return _timestamp }
        set(arg_Value) { _timestamp = arg_Value }
    }
    public mut prop present_value: UInt32 {
        get() { return _present_value }
        set(arg_Value) { _present_value = arg_Value }
    }
    public mut prop accumulated_value: UInt32 {
        get() { return _accumulated_value }
        set(arg_Value) { _accumulated_value = arg_Value }
    }
    public mut prop accumulator_status: UInt8 {
        get() { return _accumulator_status }
        set(arg_Value) { _accumulator_status = arg_Value }
    }

    public init() {
    }

    public init(arg_timestamp: BACnetDateTime, arg_present_value: UInt32, arg_accumulated_value: UInt32, arg_accumulator_status: UInt8) {
        this._timestamp = arg_timestamp
        this._present_value = arg_present_value
        this._accumulated_value = arg_accumulated_value
        this._accumulator_status = arg_accumulator_status
    }
}

