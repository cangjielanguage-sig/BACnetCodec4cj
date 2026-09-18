public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum ShedState_Enum <: IFromUInt32<ShedState_Enum> & IToUInt32 & ToString & IFromString<ShedState_Enum> {
    | shed_inactive // (0)
    | shed_request_pending // (1)
    | shed_compliant // (2)
    | shed_non_compliant // (3)

    public static func fromUInt32(arg_tag: UInt32): ShedState_Enum {
        match (arg_tag) {
            case 0 => ShedState_Enum.shed_inactive
            case 1 => ShedState_Enum.shed_request_pending
            case 2 => ShedState_Enum.shed_compliant
            case 3 => ShedState_Enum.shed_non_compliant
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case ShedState_Enum.shed_inactive => 0
            case ShedState_Enum.shed_request_pending => 1
            case ShedState_Enum.shed_compliant => 2
            case ShedState_Enum.shed_non_compliant => 3
        }
    }

    public func toString(): String {
        match (this) {
            case ShedState_Enum.shed_inactive => "shed_inactive"
            case ShedState_Enum.shed_request_pending => "shed_request_pending"
            case ShedState_Enum.shed_compliant => "shed_compliant"
            case ShedState_Enum.shed_non_compliant => "shed_non_compliant"
        }
    }

    public static func fromString(arg_str: String): ShedState_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "shed_inactive" => ShedState_Enum.shed_inactive
            case "shed_request_pending" => ShedState_Enum.shed_request_pending
            case "shed_compliant" => ShedState_Enum.shed_compliant
            case "shed_non_compliant" => ShedState_Enum.shed_non_compliant
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_956
--21.6 Base Types

BACnetShedState ::= ENUMERATED {
 shed-inactive (0),
 shed-request-pending (1),
 shed-compliant (2),
 shed-non-compliant (3)
 }
*/
