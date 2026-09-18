public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum SubscribeCOVPropertyMultiple_Error_Choice <: IFromUInt8<SubscribeCOVPropertyMultiple_Error_Choice> & IToUInt8 & ToString & IFromString<SubscribeCOVPropertyMultiple_Error_Choice> {
    | error_type // error-type [0] Error,
    | first_failed_subscription // first-failed-subscription [1] SEQUENCE {

    public static func fromUInt8(tag: UInt8): SubscribeCOVPropertyMultiple_Error_Choice {
        match (tag) {
            case 0 => SubscribeCOVPropertyMultiple_Error_Choice.error_type
            case 1 => SubscribeCOVPropertyMultiple_Error_Choice.first_failed_subscription
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case SubscribeCOVPropertyMultiple_Error_Choice.error_type => 0
            case SubscribeCOVPropertyMultiple_Error_Choice.first_failed_subscription => 1
        }
    }

    public func toString(): String {
        match (this) {
            case SubscribeCOVPropertyMultiple_Error_Choice.error_type => "error_type"
            case SubscribeCOVPropertyMultiple_Error_Choice.first_failed_subscription => "first_failed_subscription"
        }
    }

    public static func fromString(arg_str: String): SubscribeCOVPropertyMultiple_Error_Choice {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "error_type" => SubscribeCOVPropertyMultiple_Error_Choice.error_type
            case "first_failed_subscription" => SubscribeCOVPropertyMultiple_Error_Choice.first_failed_subscription
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_890
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

SubscribeCOVPropertyMultiple-Error ::= CHOICE {
 error-type [0] Error,
 first-failed-subscription [1] SEQUENCE {
  monitored-object-identifier  [0] BACnetObjectIdentifier,
  monitored-property-reference  [1] BACnetPropertyReference,
  error-type    [2] Error
  }
 }
*/
