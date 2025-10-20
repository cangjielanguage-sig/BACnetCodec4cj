public package BACnetCodec4cj.Types
import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetException.*

//BACnet 的PDU类型枚举
public enum BACnet_PDUTypeChoice 
<: IFromUInt8<BACnet_PDUTypeChoice> 
& IToUInt8
& ToString
& IFromString<BACnet_PDUTypeChoice>
{
    |Confirmed_Request_Pdu    // [0] BACnet-Confirmed-Request-PDU
    |Unconfirmed_Request_Pdu  // [1] BACnet-Unconfirmed-Request-PDU
    |Simple_Ack_Pdu           // [2] BACnet-SimpleACK-PDU
    |Complex_Ack_Pdu          // [3] BACnet-ComplexACK-PDU
    |Segment_Ack_Pdu          // [4] BACnet-SegmentACK-PDU
    |Error_Pdu                // [5] BACnet-Error-PDU
    |Reject_Pdu               // [6] BACnet-Reject-PDU
    |Abort_Pdu                // [7] BACnet-Abort-PDU

    public static func 从UInt8转换而来(标签: UInt8): BACnet_PDUTypeChoice {
        match(标签) {
            case 0 => BACnet_PDUTypeChoice.Confirmed_Request_Pdu  // [0] BACnet-Confirmed-Request-PDU
            case 1 => BACnet_PDUTypeChoice.Unconfirmed_Request_Pdu // [1] BACnet-Unconfirmed-Request-PDU
            case 2 => BACnet_PDUTypeChoice.Simple_Ack_Pdu          // [2] BACnet-SimpleACK-PDU
            case 3 => BACnet_PDUTypeChoice.Complex_Ack_Pdu         // [3] BACnet-ComplexACK-PDU
            case 4 => BACnet_PDUTypeChoice.Segment_Ack_Pdu         // [4] BACnet-SegmentACK-PDU
            case 5 => BACnet_PDUTypeChoice.Error_Pdu               // [5] BACnet-Error-PDU
            case 6 => BACnet_PDUTypeChoice.Reject_Pdu              // [6] BACnet-Reject-PDU
            case 7 => BACnet_PDUTypeChoice.Abort_Pdu               // [7] BACnet-Abort-PDU
            case _ => throw BACnetDecodeErro("解码BACnetPDU Typs字段时出现未定义的值") // 处理非法值
        }
    }

    public static func fromUInt8(tag:UInt8):BACnet_PDUTypeChoice {
        match(tag) {
            case 0 => BACnet_PDUTypeChoice.Confirmed_Request_Pdu  // [0] BACnet-Confirmed-Request-PDU
            case 1 => BACnet_PDUTypeChoice.Unconfirmed_Request_Pdu // [1] BACnet-Unconfirmed-Request-PDU
            case 2 => BACnet_PDUTypeChoice.Simple_Ack_Pdu          // [2] BACnet-SimpleACK-PDU
            case 3 => BACnet_PDUTypeChoice.Complex_Ack_Pdu         // [3] BACnet-ComplexACK-PDU
            case 4 => BACnet_PDUTypeChoice.Segment_Ack_Pdu         // [4] BACnet-SegmentACK-PDU
            case 5 => BACnet_PDUTypeChoice.Error_Pdu               // [5] BACnet-Error-PDU
            case 6 => BACnet_PDUTypeChoice.Reject_Pdu              // [6] BACnet-Reject-PDU
            case 7 => BACnet_PDUTypeChoice.Abort_Pdu               // [7] BACnet-Abort-PDU
            case _ => throw BACnetDecodeErro("Encountered an undefined value when decoding the BACnet PDU Type field.") // 处理非法值
        }
    }

    public func 转换到UInt8(): UInt8 {
        match(this) {
            case BACnet_PDUTypeChoice.Confirmed_Request_Pdu   => 0  // [0] BACnet-Confirmed-Request-PDU
            case BACnet_PDUTypeChoice.Unconfirmed_Request_Pdu => 1  // [1] BACnet-Unconfirmed-Request-PDU
            case BACnet_PDUTypeChoice.Simple_Ack_Pdu          => 2  // [2] BACnet-SimpleACK-PDU
            case BACnet_PDUTypeChoice.Complex_Ack_Pdu         => 3  // [3] BACnet-ComplexACK-PDU
            case BACnet_PDUTypeChoice.Segment_Ack_Pdu         => 4  // [4] BACnet-SegmentACK-PDU
            case BACnet_PDUTypeChoice.Error_Pdu               => 5  // [5] BACnet-Error-PDU
            case BACnet_PDUTypeChoice.Reject_Pdu              => 6  // [6] BACnet-Reject-PDU
            case BACnet_PDUTypeChoice.Abort_Pdu               => 7  // [7] BACnet-Abort-PDU
        }
    }

    public func toUInt8():UInt8{
        match(this) {
            case BACnet_PDUTypeChoice.Confirmed_Request_Pdu   => 0  // [0] BACnet-Confirmed-Request-PDU
            case BACnet_PDUTypeChoice.Unconfirmed_Request_Pdu => 1  // [1] BACnet-Unconfirmed-Request-PDU
            case BACnet_PDUTypeChoice.Simple_Ack_Pdu          => 2  // [2] BACnet-SimpleACK-PDU
            case BACnet_PDUTypeChoice.Complex_Ack_Pdu         => 3  // [3] BACnet-ComplexACK-PDU
            case BACnet_PDUTypeChoice.Segment_Ack_Pdu         => 4  // [4] BACnet-SegmentACK-PDU
            case BACnet_PDUTypeChoice.Error_Pdu               => 5  // [5] BACnet-Error-PDU
            case BACnet_PDUTypeChoice.Reject_Pdu              => 6  // [6] BACnet-Reject-PDU
            case BACnet_PDUTypeChoice.Abort_Pdu               => 7  // [7] BACnet-Abort-PDU
        }
    }

    // ==================== toString 方法 ====================
    public func toString(): String {
        match (this) {
            case BACnet_PDUTypeChoice.Confirmed_Request_Pdu   => "confirmed_request_pdu"
            case BACnet_PDUTypeChoice.Unconfirmed_Request_Pdu => "unconfirmed_request_pdu"
            case BACnet_PDUTypeChoice.Simple_Ack_Pdu          => "simple_ack_pdu"
            case BACnet_PDUTypeChoice.Complex_Ack_Pdu         => "complex_ack_pdu"
            case BACnet_PDUTypeChoice.Segment_Ack_Pdu         => "segment_ack_pdu"
            case BACnet_PDUTypeChoice.Error_Pdu               => "error_pdu"
            case BACnet_PDUTypeChoice.Reject_Pdu              => "reject_pdu"
            case BACnet_PDUTypeChoice.Abort_Pdu               => "abort_pdu"
        }
    }

    // ==================== fromString 方法 ====================
    public static func fromString(arg_str: String): BACnet_PDUTypeChoice {
        // 统一转换为小写并替换连字符为下划线
        let 标准化名称 = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        
        match (标准化名称) {
            case "confirmed_request_pdu"   => BACnet_PDUTypeChoice.Confirmed_Request_Pdu
            case "unconfirmed_request_pdu" => BACnet_PDUTypeChoice.Unconfirmed_Request_Pdu
            case "simple_ack_pdu"           => BACnet_PDUTypeChoice.Simple_Ack_Pdu
            case "complex_ack_pdu"          => BACnet_PDUTypeChoice.Complex_Ack_Pdu
            case "segment_ack_pdu"          => BACnet_PDUTypeChoice.Segment_Ack_Pdu
            case "error_pdu"                => BACnet_PDUTypeChoice.Error_Pdu
            case "reject_pdu"               => BACnet_PDUTypeChoice.Reject_Pdu
            case "abort_pdu"                => BACnet_PDUTypeChoice.Abort_Pdu
            
            // 非法值抛出协议错误
            case _ => throw BACnetEncodeErro("转换错误.输入字符串为无效PDU类型标签")
        }
    }
}

//所有APDU的父类
open public class BACnet_APDU{
    private var _pdu_Type:BACnet_PDUTypeChoice = BACnet_PDUTypeChoice.Abort_Pdu //[0] Unsigned (0..15), -- 0 for this PDU type
    public mut prop pdu_Type:BACnet_PDUTypeChoice{
        get(){ return _pdu_Type}
        set(arg_Value){_pdu_Type = arg_Value}
    }

    public init() {
        //无指定则默认0,后期再改类型
        this._pdu_Type = BACnet_PDUTypeChoice.Abort_Pdu
    }

    public init(pduTypeChoice:BACnet_PDUTypeChoice) {
        //使用enum指定
        this._pdu_Type = pduTypeChoice
    }

    public init(pduTypeFromInt8:UInt8) {
        //使用int8指定
        this._pdu_Type = BACnet_PDUTypeChoice.fromUInt8(pduTypeFromInt8)
    }
}