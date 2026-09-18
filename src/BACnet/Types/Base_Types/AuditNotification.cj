public package BACnetCodec4cj.BACnet.Types.Base_Types

import BACnetCodec4cj.BACnet.Choice.*
import BACnetCodec4cj.BACnet.Enum.*
import BACnetCodec4cj.BACnet.Types.ApplicationTypes.*

/*
--ISO_16484_5_2022_Page_896
--21.6 Base Types

BACnetAuditNotification ::= SEQUENCE {
 source-timestamp [0] BACnetTimeStamp OPTIONAL,
 target-timestamp [1] BACnetTimeStamp OPTIONAL,
 source-device [2] BACnetRecipient,
 source-object [3] BACnetObjectIdentifier OPTIONAL,
 operation [4] BACnetAuditOperation,
 source-comment [5] CharacterString OPTIONAL,
 target-comment [6] CharacterString OPTIONAL,
 invoke-id [7] Unsigned8 OPTIONAL,
 source-user-id [8] Unsigned16 OPTIONAL,
 source-user-role [9] Unsigned8 OPTIONAL,
 target-device [10] BACnetRecipient,
 target-object [11] BACnetObjectIdentifier OPTIONAL,
 target-property [12] BACnetPropertyReference OPTIONAL,
 target-priority [13] Unsigned (1..16) OPTIONAL,
 target-value [14] ABSTRACT-SYNTAX.&Type OPTIONAL,
 current-value [15] ABSTRACT-SYNTAX.&Type OPTIONAL,
 result [16] Error OPTIONAL
 }
--ISO_16484_5_2022_Page_897
*/

public class AuditNotification {
    private var _source_timestamp: Option<TimeStamp_Choice> = None //[0] BACnetTimeStamp OPTIONAL
    private var _target_timestamp: Option<TimeStamp_Choice> = None //[1] BACnetTimeStamp OPTIONAL
    private var _source_device: Recipient_Choice = Recipient_Choice.fromUInt8(0) //[2] BACnetRecipient
    private var _source_object: Option<BACnet_ObjectIdentifier> = None //[3] BACnetObjectIdentifier OPTIONAL
    private var _operation: AuditOperation_Enum = AuditOperation_Enum.fromUInt32(0) //[4] BACnetAuditOperation
    private var _source_comment: Option<String> = None //[5] CharacterString OPTIONAL
    private var _target_comment: Option<String> = None //[6] CharacterString OPTIONAL
    private var _invoke_id: Option<UInt8> = None //[7] Unsigned8 OPTIONAL
    private var _source_user_id: Option<UInt16> = None //[8] Unsigned16 OPTIONAL
    private var _source_user_role: Option<UInt8> = None //[9] Unsigned8 OPTIONAL
    private var _target_device: Recipient_Choice = Recipient_Choice.fromUInt8(0) //[10] BACnetRecipient
    private var _target_object: Option<BACnet_ObjectIdentifier> = None //[11] BACnetObjectIdentifier OPTIONAL
    private var _target_property: Option<PropertyReference> = None //[12] BACnetPropertyReference OPTIONAL
    private var _target_priority: Option<UInt32> = None //[13] Unsigned (1..16) OPTIONAL
    private var _target_value: Option<Array<Byte>> = None //[14] ABSTRACT-SYNTAX.&Type OPTIONAL
    private var _current_value: Option<Array<Byte>> = None //[15] ABSTRACT-SYNTAX.&Type OPTIONAL
    private var _result: Option<UInt8> = None //[16] Error OPTIONAL

    public mut prop source_timestamp: Option<TimeStamp_Choice> {
        get() { return _source_timestamp }
        set(arg_Value) { _source_timestamp = arg_Value }
    }
    public mut prop target_timestamp: Option<TimeStamp_Choice> {
        get() { return _target_timestamp }
        set(arg_Value) { _target_timestamp = arg_Value }
    }
    public mut prop source_device: Recipient_Choice {
        get() { return _source_device }
        set(arg_Value) { _source_device = arg_Value }
    }
    public mut prop source_object: Option<BACnet_ObjectIdentifier> {
        get() { return _source_object }
        set(arg_Value) { _source_object = arg_Value }
    }
    public mut prop operation: AuditOperation_Enum {
        get() { return _operation }
        set(arg_Value) { _operation = arg_Value }
    }
    public mut prop source_comment: Option<String> {
        get() { return _source_comment }
        set(arg_Value) { _source_comment = arg_Value }
    }
    public mut prop target_comment: Option<String> {
        get() { return _target_comment }
        set(arg_Value) { _target_comment = arg_Value }
    }
    public mut prop invoke_id: Option<UInt8> {
        get() { return _invoke_id }
        set(arg_Value) { _invoke_id = arg_Value }
    }
    public mut prop source_user_id: Option<UInt16> {
        get() { return _source_user_id }
        set(arg_Value) { _source_user_id = arg_Value }
    }
    public mut prop source_user_role: Option<UInt8> {
        get() { return _source_user_role }
        set(arg_Value) { _source_user_role = arg_Value }
    }
    public mut prop target_device: Recipient_Choice {
        get() { return _target_device }
        set(arg_Value) { _target_device = arg_Value }
    }
    public mut prop target_object: Option<BACnet_ObjectIdentifier> {
        get() { return _target_object }
        set(arg_Value) { _target_object = arg_Value }
    }
    public mut prop target_property: Option<PropertyReference> {
        get() { return _target_property }
        set(arg_Value) { _target_property = arg_Value }
    }
    public mut prop target_priority: Option<UInt32> {
        get() { return _target_priority }
        set(arg_Value) { _target_priority = arg_Value }
    }
    public mut prop target_value: Option<Array<Byte>> {
        get() { return _target_value }
        set(arg_Value) { _target_value = arg_Value }
    }
    public mut prop current_value: Option<Array<Byte>> {
        get() { return _current_value }
        set(arg_Value) { _current_value = arg_Value }
    }
    public mut prop result: Option<UInt8> {
        get() { return _result }
        set(arg_Value) { _result = arg_Value }
    }

    public init() {
    }

    public init(arg_source_device: Recipient_Choice, arg_operation: AuditOperation_Enum, arg_target_device: Recipient_Choice) {
        this._source_timestamp = None
        this._target_timestamp = None
        this._source_device = arg_source_device
        this._source_object = None
        this._operation = arg_operation
        this._source_comment = None
        this._target_comment = None
        this._invoke_id = None
        this._source_user_id = None
        this._source_user_role = None
        this._target_device = arg_target_device
        this._target_object = None
        this._target_property = None
        this._target_priority = None
        this._target_value = None
        this._current_value = None
        this._result = None
    }
}

