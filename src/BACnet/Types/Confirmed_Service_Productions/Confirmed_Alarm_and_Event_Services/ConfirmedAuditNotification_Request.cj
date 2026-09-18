public package BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Alarm_and_Event_Services
import BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Service_Request.Confirmed_Service_Request

/*
--ISO_16484_5_2022_Page_873
--21.2.1  Confirmed Alarm and Event Services

ConfirmedAuditNotification-Request ::= SEQUENCE {
 notifications [0] SEQUENCE OF BACnetAuditNotification
 }
--ISO_16484_5_2022_Page_873
--21.2.2 Confirmed File Access Services
*/

public class ConfirmedAuditNotification_Request <: Confirmed_Service_Request{
    private var _notifications: UInt8 = 0u8 //[0] SEQUENCE OF BACnetAuditNotification

    public mut prop notifications: UInt8 {
        get() { return _notifications }
        set(arg_Value) { _notifications = arg_Value }
    }

    public init() {
    }

    public init(arg_notifications: UInt8) {
        this._notifications = arg_notifications
    }
}

