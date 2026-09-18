public package BACnetCodec4cj.BACnet.Types.Unconfirmed_Service_Productions.Unconfirmed_Remote_Device_Management_Services
import BACnetCodec4cj.BACnet.Types.Unconfirmed_Service_Productions.Unconfirmed_Service_Request.Unconfirmed_Service_Request
import BACnetCodec4cj.BACnet.Types.Base_Types.*

/*
--ISO_16484_5_2022_Page_880
--21.3.3 Unconfirmed Remote Device Management Services

UTCTimeSynchronization-Request ::= SEQUENCE {
 time BACnetDateTime
 }
*/

public class UTCTimeSynchronization_Request <: Unconfirmed_Service_Request{
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

