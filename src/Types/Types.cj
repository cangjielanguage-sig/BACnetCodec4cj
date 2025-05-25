public package BACnetCodec4cj.Types
import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetException.*


//所有APDU的父类
open public class APDU{
    public var pdu_Type:PDUTypeChoice
    public init() {
        //无指定则默认0,后期再改类型
        pdu_Type = PDUTypeChoice.Unconfirmed_Request_Pdu
    }

    public init(pduTypeChoice:PDUTypeChoice) {
        //使用enum指定
        pdu_Type = pduTypeChoice
    }

    public init(pduTypeFromInt8:UInt8) {
        //使用int8指定
        pdu_Type = PDUTypeChoice.fromUInt8(pduTypeFromInt8)
    }
}

//BACnet 的PDU类型枚举
public enum PDUTypeChoice <: IFromUInt8<PDUTypeChoice> & IToUInt8{
    |Confirmed_Request_Pdu    // [0] BACnet-Confirmed-Request-PDU
    |Unconfirmed_Request_Pdu  // [1] BACnet-Unconfirmed-Request-PDU
    |Simple_Ack_Pdu           // [2] BACnet-SimpleACK-PDU
    |Complex_Ack_Pdu          // [3] BACnet-ComplexACK-PDU
    |Segment_Ack_Pdu          // [4] BACnet-SegmentACK-PDU
    |Error_Pdu                // [5] BACnet-Error-PDU
    |Reject_Pdu               // [6] BACnet-Reject-PDU
    |Abort_Pdu                // [7] BACnet-Abort-PDU

    public static func 从UInt8转换而来(标签: UInt8): PDUTypeChoice {
        match(标签) {
            case 0 => PDUTypeChoice.Confirmed_Request_Pdu  // [0] BACnet-Confirmed-Request-PDU
            case 1 => PDUTypeChoice.Unconfirmed_Request_Pdu // [1] BACnet-Unconfirmed-Request-PDU
            case 2 => PDUTypeChoice.Simple_Ack_Pdu          // [2] BACnet-SimpleACK-PDU
            case 3 => PDUTypeChoice.Complex_Ack_Pdu         // [3] BACnet-ComplexACK-PDU
            case 4 => PDUTypeChoice.Segment_Ack_Pdu         // [4] BACnet-SegmentACK-PDU
            case 5 => PDUTypeChoice.Error_Pdu               // [5] BACnet-Error-PDU
            case 6 => PDUTypeChoice.Reject_Pdu              // [6] BACnet-Reject-PDU
            case 7 => PDUTypeChoice.Abort_Pdu               // [7] BACnet-Abort-PDU
            case _ => throw BacnetDecodeErro("解码BACnetPDU Typs字段时出现未定义的值") // 处理非法值
        }
    }

    public static func fromUInt8(tag:UInt8):PDUTypeChoice {
        match(tag) {
            case 0 => PDUTypeChoice.Confirmed_Request_Pdu  // [0] BACnet-Confirmed-Request-PDU
            case 1 => PDUTypeChoice.Unconfirmed_Request_Pdu // [1] BACnet-Unconfirmed-Request-PDU
            case 2 => PDUTypeChoice.Simple_Ack_Pdu          // [2] BACnet-SimpleACK-PDU
            case 3 => PDUTypeChoice.Complex_Ack_Pdu         // [3] BACnet-ComplexACK-PDU
            case 4 => PDUTypeChoice.Segment_Ack_Pdu         // [4] BACnet-SegmentACK-PDU
            case 5 => PDUTypeChoice.Error_Pdu               // [5] BACnet-Error-PDU
            case 6 => PDUTypeChoice.Reject_Pdu              // [6] BACnet-Reject-PDU
            case 7 => PDUTypeChoice.Abort_Pdu               // [7] BACnet-Abort-PDU
            case _ => throw BacnetDecodeErro("Encountered an undefined value when decoding the BACnet PDU Type field.") // 处理非法值
        }
    }

    public func 转换到UInt8(): UInt8 {
        match(this) {
            case PDUTypeChoice.Confirmed_Request_Pdu   => 0  // [0] BACnet-Confirmed-Request-PDU
            case PDUTypeChoice.Unconfirmed_Request_Pdu => 1  // [1] BACnet-Unconfirmed-Request-PDU
            case PDUTypeChoice.Simple_Ack_Pdu          => 2  // [2] BACnet-SimpleACK-PDU
            case PDUTypeChoice.Complex_Ack_Pdu         => 3  // [3] BACnet-ComplexACK-PDU
            case PDUTypeChoice.Segment_Ack_Pdu         => 4  // [4] BACnet-SegmentACK-PDU
            case PDUTypeChoice.Error_Pdu               => 5  // [5] BACnet-Error-PDU
            case PDUTypeChoice.Reject_Pdu              => 6  // [6] BACnet-Reject-PDU
            case PDUTypeChoice.Abort_Pdu               => 7  // [7] BACnet-Abort-PDU
        }
    }

    public func toUInt8():UInt8{
        match(this) {
            case PDUTypeChoice.Confirmed_Request_Pdu   => 0  // [0] BACnet-Confirmed-Request-PDU
            case PDUTypeChoice.Unconfirmed_Request_Pdu => 1  // [1] BACnet-Unconfirmed-Request-PDU
            case PDUTypeChoice.Simple_Ack_Pdu          => 2  // [2] BACnet-SimpleACK-PDU
            case PDUTypeChoice.Complex_Ack_Pdu         => 3  // [3] BACnet-ComplexACK-PDU
            case PDUTypeChoice.Segment_Ack_Pdu         => 4  // [4] BACnet-SegmentACK-PDU
            case PDUTypeChoice.Error_Pdu               => 5  // [5] BACnet-Error-PDU
            case PDUTypeChoice.Reject_Pdu              => 6  // [6] BACnet-Reject-PDU
            case PDUTypeChoice.Abort_Pdu               => 7  // [7] BACnet-Abort-PDU
        }
    }
}
