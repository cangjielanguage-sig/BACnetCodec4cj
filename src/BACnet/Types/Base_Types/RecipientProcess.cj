public package BACnetCodec4cj.BACnet.Types.Base_Types

import BACnetCodec4cj.BACnet.Choice.*

/*
--ISO_16484_5_2022_Page_952
--21.6 Base Types

BACnetRecipientProcess ::= SEQUENCE {
 recipient [0] BACnetRecipient,
 process-identifier [1] Unsigned32
 }
*/

public class RecipientProcess {
    private var _recipient: Recipient_Choice = Recipient_Choice.fromUInt8(0) //[0] BACnetRecipient
    private var _process_identifier: UInt32 = 0u32 //[1] Unsigned32

    public mut prop recipient: Recipient_Choice {
        get() { return _recipient }
        set(arg_Value) { _recipient = arg_Value }
    }
    public mut prop process_identifier: UInt32 {
        get() { return _process_identifier }
        set(arg_Value) { _process_identifier = arg_Value }
    }

    public init() {
    }

    public init(arg_recipient: Recipient_Choice, arg_process_identifier: UInt32) {
        this._recipient = arg_recipient
        this._process_identifier = arg_process_identifier
    }
}

