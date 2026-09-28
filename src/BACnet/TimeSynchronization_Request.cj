public package BACnetCodec4cj.BACnet

/*
--ISO_16484_5_2022_Page_880
--21.3.3 Unconfirmed Remote Device Management Services

TimeSynchronization-Request ::= SEQUENCE {
 time BACnetDateTime
 }
*/

public class TimeSynchronization_Request <: Unconfirmed_Service_Request {
    private var _time: BACnetDateTime = BACnetDateTime() // BACnetDateTime

    public mut prop time: BACnetDateTime {
        get() { return _time }
        set(arg_Value) { _time = arg_Value }
    }

    public init() {
    }

    public init(arg_time: BACnetDateTime) {
        this._time = arg_time
    }
}

