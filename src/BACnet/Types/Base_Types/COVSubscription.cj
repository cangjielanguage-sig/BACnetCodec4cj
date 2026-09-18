public package BACnetCodec4cj.BACnet.Types.Base_Types


/*
--ISO_16484_5_2022_Page_900
--21.6 Base Types

BACnetCOVSubscription ::= SEQUENCE {
 recipient [0] BACnetRecipientProcess,
 monitored-property-reference [1] BACnetObjectPropertyReference,
 issue-confirmed-notifications [2] BOOLEAN,
 time-remaining [3] Unsigned,
 cov-increment [4] REAL OPTIONAL -- used only with monitored
      -- properties with a numeric datatype
 }
*/

public class COVSubscription {
    private var _recipient: RecipientProcess = RecipientProcess() //[0] BACnetRecipientProcess
    private var _monitored_property_reference: ObjectPropertyReference = ObjectPropertyReference() //[1] BACnetObjectPropertyReference
    private var _issue_confirmed_notifications: Bool = false //[2] BOOLEAN
    private var _time_remaining: UInt32 = 0u32 //[3] Unsigned
    private var _cov_increment: Option<Float32> = None //[4] REAL OPTIONAL -- used only with monitored

    public mut prop recipient: RecipientProcess {
        get() { return _recipient }
        set(arg_Value) { _recipient = arg_Value }
    }
    public mut prop monitored_property_reference: ObjectPropertyReference {
        get() { return _monitored_property_reference }
        set(arg_Value) { _monitored_property_reference = arg_Value }
    }
    public mut prop issue_confirmed_notifications: Bool {
        get() { return _issue_confirmed_notifications }
        set(arg_Value) { _issue_confirmed_notifications = arg_Value }
    }
    public mut prop time_remaining: UInt32 {
        get() { return _time_remaining }
        set(arg_Value) { _time_remaining = arg_Value }
    }
    public mut prop cov_increment: Option<Float32> {
        get() { return _cov_increment }
        set(arg_Value) { _cov_increment = arg_Value }
    }

    public init() {
    }

    public init(arg_recipient: RecipientProcess, arg_monitored_property_reference: ObjectPropertyReference, arg_issue_confirmed_notifications: Bool, arg_time_remaining: UInt32) {
        this._recipient = arg_recipient
        this._monitored_property_reference = arg_monitored_property_reference
        this._issue_confirmed_notifications = arg_issue_confirmed_notifications
        this._time_remaining = arg_time_remaining
        this._cov_increment = None
    }
}

