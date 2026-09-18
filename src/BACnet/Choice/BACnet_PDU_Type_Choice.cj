public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum BACnet_PDU_Type_Choice <: IFromUInt8<BACnet_PDU_Type_Choice> & IToUInt8 & ToString & IFromString<BACnet_PDU_Type_Choice> {
    | confirmed_request_pdu // confirmed-request-pdu [0] BACnet-Confirmed-Request-BACnet_PDU_Type_Choice,
    | unconfirmed_request_pdu // unconfirmed-request-pdu [1] BACnet-Unconfirmed-Request-BACnet_PDU_Type_Choice,
    | simple_ack_pdu // simple-ack-pdu [2] BACnet-SimpleACK-BACnet_PDU_Type_Choice,
    | complex_ack_pdu // complex-ack-pdu [3] BACnet-ComplexACK-BACnet_PDU_Type_Choice,
    | segment_ack_pdu // segment-ack-pdu [4] BACnet-SegmentACK-BACnet_PDU_Type_Choice,
    | error_pdu // error-pdu [5] BACnet-Error-BACnet_PDU_Type_Choice,
    | reject_pdu // reject-pdu [6] BACnet-Reject-BACnet_PDU_Type_Choice,
    | abort_pdu // abort-pdu [7] BACnet-Abort-BACnet_PDU_Type_Choice

    public static func fromUInt8(tag: UInt8): BACnet_PDU_Type_Choice {
        match (tag) {
            case 0 => BACnet_PDU_Type_Choice.confirmed_request_pdu
            case 1 => BACnet_PDU_Type_Choice.unconfirmed_request_pdu
            case 2 => BACnet_PDU_Type_Choice.simple_ack_pdu
            case 3 => BACnet_PDU_Type_Choice.complex_ack_pdu
            case 4 => BACnet_PDU_Type_Choice.segment_ack_pdu
            case 5 => BACnet_PDU_Type_Choice.error_pdu
            case 6 => BACnet_PDU_Type_Choice.reject_pdu
            case 7 => BACnet_PDU_Type_Choice.abort_pdu
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case BACnet_PDU_Type_Choice.confirmed_request_pdu => 0
            case BACnet_PDU_Type_Choice.unconfirmed_request_pdu => 1
            case BACnet_PDU_Type_Choice.simple_ack_pdu => 2
            case BACnet_PDU_Type_Choice.complex_ack_pdu => 3
            case BACnet_PDU_Type_Choice.segment_ack_pdu => 4
            case BACnet_PDU_Type_Choice.error_pdu => 5
            case BACnet_PDU_Type_Choice.reject_pdu => 6
            case BACnet_PDU_Type_Choice.abort_pdu => 7
        }
    }

    public func toString(): String {
        match (this) {
            case BACnet_PDU_Type_Choice.confirmed_request_pdu => "confirmed_request_pdu"
            case BACnet_PDU_Type_Choice.unconfirmed_request_pdu => "unconfirmed_request_pdu"
            case BACnet_PDU_Type_Choice.simple_ack_pdu => "simple_ack_pdu"
            case BACnet_PDU_Type_Choice.complex_ack_pdu => "complex_ack_pdu"
            case BACnet_PDU_Type_Choice.segment_ack_pdu => "segment_ack_pdu"
            case BACnet_PDU_Type_Choice.error_pdu => "error_pdu"
            case BACnet_PDU_Type_Choice.reject_pdu => "reject_pdu"
            case BACnet_PDU_Type_Choice.abort_pdu => "abort_pdu"
        }
    }

    public static func fromString(arg_str: String): BACnet_PDU_Type_Choice {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "confirmed_request_pdu" => BACnet_PDU_Type_Choice.confirmed_request_pdu
            case "unconfirmed_request_pdu" => BACnet_PDU_Type_Choice.unconfirmed_request_pdu
            case "simple_ack_pdu" => BACnet_PDU_Type_Choice.simple_ack_pdu
            case "complex_ack_pdu" => BACnet_PDU_Type_Choice.complex_ack_pdu
            case "segment_ack_pdu" => BACnet_PDU_Type_Choice.segment_ack_pdu
            case "error_pdu" => BACnet_PDU_Type_Choice.error_pdu
            case "reject_pdu" => BACnet_PDU_Type_Choice.reject_pdu
            case "abort_pdu" => BACnet_PDU_Type_Choice.abort_pdu
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_866
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnetPDU ::= CHOICE {
 confirmed-request-pdu [0] BACnet-Confirmed-Request-PDU,
 unconfirmed-request-pdu [1] BACnet-Unconfirmed-Request-PDU,
 simple-ack-pdu [2] BACnet-SimpleACK-PDU,
 complex-ack-pdu [3] BACnet-ComplexACK-PDU,
 segment-ack-pdu [4] BACnet-SegmentACK-PDU,
 error-pdu [5] BACnet-Error-PDU,
 reject-pdu [6] BACnet-Reject-PDU,
 abort-pdu [7] BACnet-Abort-PDU
 }
*/
