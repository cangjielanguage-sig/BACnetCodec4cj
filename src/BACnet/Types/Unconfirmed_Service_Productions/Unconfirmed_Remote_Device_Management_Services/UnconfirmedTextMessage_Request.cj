public package BACnetCodec4cj.BACnet.Types.Unconfirmed_Service_Productions.Unconfirmed_Remote_Device_Management_Services
import BACnetCodec4cj.BACnet.Types.Unconfirmed_Service_Productions.Unconfirmed_Service_Request.Unconfirmed_Service_Request
import BACnetCodec4cj.BACnet.Types.ApplicationTypes.*

/*
--ISO_16484_5_2022_Page_880
--21.3.3 Unconfirmed Remote Device Management Services

UnconfirmedTextMessage-Request ::= SEQUENCE {
 text-message-source-device [0] BACnetObjectIdentifier,
 message-class [1] CHOICE {
   numeric [0] Unsigned,
   character [1] CharacterString
   } OPTIONAL,
 message-priority [2] ENUMERATED {
   normal (0),
   urgent (1)
   },
 message [3] CharacterString
 }
*/

public class UnconfirmedTextMessage_Request <: Unconfirmed_Service_Request{
    private var _text_message_source_device: BACnet_ObjectIdentifier = BACnet_ObjectIdentifier() //[0] BACnetObjectIdentifier
    private var _message_class: UInt8 = 0u8 //[1] CHOICE {
    private var _message_priority: UInt8 = 0u8 //[2] ENUMERATED {
    private var _message: String = "" //[3] CharacterString

    public mut prop text_message_source_device: BACnet_ObjectIdentifier {
        get() { return _text_message_source_device }
        set(arg_Value) { _text_message_source_device = arg_Value }
    }
    public mut prop message_class: UInt8 {
        get() { return _message_class }
        set(arg_Value) { _message_class = arg_Value }
    }
    public mut prop message_priority: UInt8 {
        get() { return _message_priority }
        set(arg_Value) { _message_priority = arg_Value }
    }
    public mut prop message: String {
        get() { return _message }
        set(arg_Value) { _message = arg_Value }
    }

    public init() {
    }

    public init(arg_text_message_source_device: BACnet_ObjectIdentifier, arg_message_class: UInt8, arg_message_priority: UInt8, arg_message: String) {
        this._text_message_source_device = arg_text_message_source_device
        this._message_class = arg_message_class
        this._message_priority = arg_message_priority
        this._message = arg_message
    }
}

