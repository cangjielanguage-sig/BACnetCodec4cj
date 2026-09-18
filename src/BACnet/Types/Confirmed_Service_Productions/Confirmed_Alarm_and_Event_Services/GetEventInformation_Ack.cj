public package BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Alarm_and_Event_Services

import BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Service_ACK.Confirmed_Service_ACK

/*
--ISO_16484_5_2022_Page_872
--21.2.1  Confirmed Alarm and Event Services

GetEventInformation-ACK ::= SEQUENCE {
 list-of-event-summaries [0]  SEQUENCE OF SEQUENCE {
  object-identifier   [0]  BACnetObjectIdentifier,
  event-state   [1]  BACnetEventState,
  acknowledged-transitions [2]  BACnetEventTransitionBits,
  event-timestamps   [3]  SEQUENCE SIZE (3) OF BACnetTimeStamp,
  notify-type   [4]  BACnetNotifyType,
  event-enable   [5]  BACnetEventTransitionBits,
  event-priorities   [6]  SEQUENCE SIZE (3) OF Unsigned
  },
 more-events [1]  BOOLEAN
 }
*/

public class GetEventInformation_Ack <: Confirmed_Service_ACK {
    private var _list_of_event_summaries: UInt8 = 0u8 //[0] SEQUENCE OF SEQUENCE {
    private var _more_events: Bool = false //[1] BOOLEAN

    public mut prop list_of_event_summaries: UInt8 {
        get() { return _list_of_event_summaries }
        set(arg_Value) { _list_of_event_summaries = arg_Value }
    }
    public mut prop more_events: Bool {
        get() { return _more_events }
        set(arg_Value) { _more_events = arg_Value }
    }

    public init() {
    }

    public init(arg_list_of_event_summaries: UInt8, arg_more_events: Bool) {
        this._list_of_event_summaries = arg_list_of_event_summaries
        this._more_events = arg_more_events
    }
}

