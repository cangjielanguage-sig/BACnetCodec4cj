public package BACnetCodec4cj.BACnet.Types.Unconfirmed_Service_Productions.Unconfirmed_Alarm_and_Event_Services
import BACnetCodec4cj.BACnet.Types.Unconfirmed_Service_Productions.Unconfirmed_Service_Request.Unconfirmed_Service_Request

/*
--ISO_16484_5_2022_Page_879
--21.3.1 Unconfirmed Alarm and Event Services

UnconfirmedAuditNotification-Request ::= SEQUENCE {
 notifications [0] SEQUENCE OF BACnetAuditNotification
 }
--ISO_16484_5_2022_Page_879
--21.3.2 Unconfirmed Object Access Services
*/

public class UnconfirmedAuditNotification_Request <: Unconfirmed_Service_Request {
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

