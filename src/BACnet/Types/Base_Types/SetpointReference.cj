public package BACnetCodec4cj.BACnet.Types.Base_Types


/*
--ISO_16484_5_2022_Page_956
--21.6 Base Types

BACnetSetpointReference ::= SEQUENCE {
 setpoint-reference [0] BACnetObjectPropertyReference OPTIONAL
 }
*/

public class SetpointReference {
    private var _setpoint_reference: Option<ObjectPropertyReference> = None //[0] BACnetObjectPropertyReference OPTIONAL

    public mut prop setpoint_reference: Option<ObjectPropertyReference> {
        get() { return _setpoint_reference }
        set(arg_Value) { _setpoint_reference = arg_Value }
    }

    public init() {
    }
}

