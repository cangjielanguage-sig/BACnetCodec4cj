public package BACnetCodec4cj.Types
import BACnetCodec4cj.BACnetException.*

public enum BACnetPDU {
    |Confirmed_Request_Pdu    // [0] BACnet-Confirmed-Request-PDU
    |Unconfirmed_Request_Pdu  // [1] BACnet-Unconfirmed-Request-PDU
    |Simple_Ack_Pdu           // [2] BACnet-SimpleACK-PDU
    |Complex_Ack_Pdu          // [3] BACnet-ComplexACK-PDU
    |Segment_Ack_Pdu          // [4] BACnet-SegmentACK-PDU
    |Error_Pdu                // [5] BACnet-Error-PDU
    |Reject_Pdu               // [6] BACnet-Reject-PDU
    |Abort_Pdu                // [7] BACnet-Abort-PDU

    public func 从Int8转至BACnetPDU(标签: Int8): BACnetPDU {
        match(标签) {
            case 0 => BACnetPDU.Confirmed_Request_Pdu  // [0] BACnet-Confirmed-Request-PDU
            case 1 => BACnetPDU.Unconfirmed_Request_Pdu // [1] BACnet-Unconfirmed-Request-PDU
            case 2 => BACnetPDU.Simple_Ack_Pdu          // [2] BACnet-SimpleACK-PDU
            case 3 => BACnetPDU.Complex_Ack_Pdu         // [3] BACnet-ComplexACK-PDU
            case 4 => BACnetPDU.Segment_Ack_Pdu         // [4] BACnet-SegmentACK-PDU
            case 5 => BACnetPDU.Error_Pdu               // [5] BACnet-Error-PDU
            case 6 => BACnetPDU.Reject_Pdu              // [6] BACnet-Reject-PDU
            case 7 => BACnetPDU.Abort_Pdu               // [7] BACnet-Abort-PDU
            case _ => throw Bacnet解码错误类("解码BACnetPDU Typs字段时出现未定义的值") // 处理非法值
        }
    }

    public func 从BACnetPDU转至Int8(pdu: BACnetPDU): Int8 {
        match(pdu) {
            case BACnetPDU.Confirmed_Request_Pdu   => 0  // [0] BACnet-Confirmed-Request-PDU
            case BACnetPDU.Unconfirmed_Request_Pdu => 1  // [1] BACnet-Unconfirmed-Request-PDU
            case BACnetPDU.Simple_Ack_Pdu          => 2  // [2] BACnet-SimpleACK-PDU
            case BACnetPDU.Complex_Ack_Pdu         => 3  // [3] BACnet-ComplexACK-PDU
            case BACnetPDU.Segment_Ack_Pdu         => 4  // [4] BACnet-SegmentACK-PDU
            case BACnetPDU.Error_Pdu               => 5  // [5] BACnet-Error-PDU
            case BACnetPDU.Reject_Pdu              => 6  // [6] BACnet-Reject-PDU
            case BACnetPDU.Abort_Pdu               => 7  // [7] BACnet-Abort-PDU
        }
    }
}





