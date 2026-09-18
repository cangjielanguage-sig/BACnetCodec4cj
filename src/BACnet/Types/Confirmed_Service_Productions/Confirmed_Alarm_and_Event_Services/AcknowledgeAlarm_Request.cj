public package BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Alarm_and_Event_Services

import BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Service_Request.Confirmed_Service_Request
import BACnetCodec4cj.BACnet.Choice.*
import BACnetCodec4cj.BACnet.Enum.*
import BACnetCodec4cj.BACnet.Types.ApplicationTypes.*

/*
--ISO_16484_5_2022_Page_871
--21.2.1  Confirmed Alarm and Event Services

AcknowledgeAlarm-Request ::= SEQUENCE {
 acknowledging-process-identifier [0] Unsigned32,
 event-object-identifier [1] BACnetObjectIdentifier,
 event-state-acknowledged [2] BACnetEventState,
 timestamp [3] BACnetTimeStamp,
 acknowledgment-source [4] CharacterString,
 time-of-acknowledgment [5] BACnetTimeStamp
 }
*/

public class AcknowledgeAlarm_Request <: Confirmed_Service_Request{
    private var _acknowledging_process_identifier: UInt32 = 0u32 //[0] Unsigned32
    private var _event_object_identifier: BACnet_ObjectIdentifier = BACnet_ObjectIdentifier() //[1] BACnetObjectIdentifier
    private var _event_state_acknowledged: EventState_Enum = EventState_Enum.fromUInt32(0) //[2] BACnetEventState
    private var _timestamp: TimeStamp_Choice = TimeStamp_Choice.fromUInt8(0) //[3] BACnetTimeStamp
    private var _acknowledgment_source: String = "" //[4] CharacterString
    private var _time_of_acknowledgment: TimeStamp_Choice = TimeStamp_Choice.fromUInt8(0) //[5] BACnetTimeStamp

    public mut prop acknowledging_process_identifier: UInt32 {
        get() { return _acknowledging_process_identifier }
        set(arg_Value) { _acknowledging_process_identifier = arg_Value }
    }
    public mut prop event_object_identifier: BACnet_ObjectIdentifier {
        get() { return _event_object_identifier }
        set(arg_Value) { _event_object_identifier = arg_Value }
    }
    public mut prop event_state_acknowledged: EventState_Enum {
        get() { return _event_state_acknowledged }
        set(arg_Value) { _event_state_acknowledged = arg_Value }
    }
    public mut prop timestamp: TimeStamp_Choice {
        get() { return _timestamp }
        set(arg_Value) { _timestamp = arg_Value }
    }
    public mut prop acknowledgment_source: String {
        get() { return _acknowledgment_source }
        set(arg_Value) { _acknowledgment_source = arg_Value }
    }
    public mut prop time_of_acknowledgment: TimeStamp_Choice {
        get() { return _time_of_acknowledgment }
        set(arg_Value) { _time_of_acknowledgment = arg_Value }
    }

    public init() {
    }

    public init(arg_acknowledging_process_identifier: UInt32, arg_event_object_identifier: BACnet_ObjectIdentifier, arg_event_state_acknowledged: EventState_Enum, arg_timestamp: TimeStamp_Choice, arg_acknowledgment_source: String, arg_time_of_acknowledgment: TimeStamp_Choice) {
        this._acknowledging_process_identifier = arg_acknowledging_process_identifier
        this._event_object_identifier = arg_event_object_identifier
        this._event_state_acknowledged = arg_event_state_acknowledged
        this._timestamp = arg_timestamp
        this._acknowledgment_source = arg_acknowledgment_source
        this._time_of_acknowledgment = arg_time_of_acknowledgment
    }
}

