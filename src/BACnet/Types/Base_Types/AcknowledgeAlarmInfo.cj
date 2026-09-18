public package BACnetCodec4cj.BACnet.Types.Base_Types

import BACnetCodec4cj.BACnet.Choice.*
import BACnetCodec4cj.BACnet.Enum.*

/*
--ISO_16484_5_2022_Page_894
--21.6 Base Types

BACnetAcknowledgeAlarmInfo ::= SEQUENCE {
 event-state-acknowledged [0] BACnetEventState,
 timestamp [1] BACnetTimeStamp
 }
--ISO_16484_5_2022_Page_895
*/

public class AcknowledgeAlarmInfo {
    private var _event_state_acknowledged: EventState_Enum = EventState_Enum.fromUInt32(0) //[0] BACnetEventState
    private var _timestamp: TimeStamp_Choice = TimeStamp_Choice.fromUInt8(0) //[1] BACnetTimeStamp

    public mut prop event_state_acknowledged: EventState_Enum {
        get() { return _event_state_acknowledged }
        set(arg_Value) { _event_state_acknowledged = arg_Value }
    }
    public mut prop timestamp: TimeStamp_Choice {
        get() { return _timestamp }
        set(arg_Value) { _timestamp = arg_Value }
    }

    public init() {
    }

    public init(arg_event_state_acknowledged: EventState_Enum, arg_timestamp: TimeStamp_Choice) {
        this._event_state_acknowledged = arg_event_state_acknowledged
        this._timestamp = arg_timestamp
    }
}

