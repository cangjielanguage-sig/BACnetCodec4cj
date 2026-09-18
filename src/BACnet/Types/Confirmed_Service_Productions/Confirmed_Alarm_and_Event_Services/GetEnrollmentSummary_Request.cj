public package BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Alarm_and_Event_Services

import BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Service_Request.Confirmed_Service_Request
import BACnetCodec4cj.BACnet.Enum.*
import BACnetCodec4cj.BACnet.Types.Base_Types.*

/*
--ISO_16484_5_2022_Page_872
--21.2.1  Confirmed Alarm and Event Services

GetEnrollmentSummary-Request ::= SEQUENCE {
 acknowledgment-filter  [0] ENUMERATED {
      all  (0),
      acked  (1),
      not-acked (2)
      },
 enrollment-filter   [1] BACnetRecipientProcess OPTIONAL,
 event-state-filter   [2] ENUMERATED {
      offnormal (0),
      fault  (1),
      normal  (2),
      all   (3),
      active   (4)
      } OPTIONAL,
 event-type-filter   [3] BACnetEventType OPTIONAL,
 priority-filter   [4] SEQUENCE {
      min-priority [0] Unsigned8,
      max-priority [1] Unsigned8
      } OPTIONAL,
 notification-class-filter  [5] Unsigned OPTIONAL
 }
*/

public class GetEnrollmentSummary_Request <: Confirmed_Service_Request{
    private var _acknowledgment_filter: UInt8 = 0u8 //[0] ENUMERATED {
    private var _enrollment_filter: Option<RecipientProcess> = None //[1] BACnetRecipientProcess OPTIONAL
    private var _event_state_filter: UInt8 = 0u8 //[2] ENUMERATED {
    private var _event_type_filter: Option<EventType_Enum> = None //[3] BACnetEventType OPTIONAL
    private var _priority_filter: UInt8 = 0u8 //[4] SEQUENCE {
    private var _notification_class_filter: Option<UInt32> = None //[5] Unsigned OPTIONAL

    public mut prop acknowledgment_filter: UInt8 {
        get() { return _acknowledgment_filter }
        set(arg_Value) { _acknowledgment_filter = arg_Value }
    }
    public mut prop enrollment_filter: Option<RecipientProcess> {
        get() { return _enrollment_filter }
        set(arg_Value) { _enrollment_filter = arg_Value }
    }
    public mut prop event_state_filter: UInt8 {
        get() { return _event_state_filter }
        set(arg_Value) { _event_state_filter = arg_Value }
    }
    public mut prop event_type_filter: Option<EventType_Enum> {
        get() { return _event_type_filter }
        set(arg_Value) { _event_type_filter = arg_Value }
    }
    public mut prop priority_filter: UInt8 {
        get() { return _priority_filter }
        set(arg_Value) { _priority_filter = arg_Value }
    }
    public mut prop notification_class_filter: Option<UInt32> {
        get() { return _notification_class_filter }
        set(arg_Value) { _notification_class_filter = arg_Value }
    }

    public init() {
    }

    public init(arg_acknowledgment_filter: UInt8, arg_event_state_filter: UInt8, arg_priority_filter: UInt8) {
        this._acknowledgment_filter = arg_acknowledgment_filter
        this._enrollment_filter = None
        this._event_state_filter = arg_event_state_filter
        this._event_type_filter = None
        this._priority_filter = arg_priority_filter
        this._notification_class_filter = None
    }
}

