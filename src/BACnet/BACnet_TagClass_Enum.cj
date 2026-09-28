public package BACnetCodec4cj.BACnet

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum BACnet_TagClass_Enum <: ToString
& IToUInt32
&IFromUInt32<BACnet_TagClass_Enum> 
&IFromString<BACnet_TagClass_Enum>
{
    | application_tag
    | contextSpecific_tag

    public static func fromUInt32(tag: UInt32): BACnet_TagClass_Enum {
        match (tag) {
            case 0b0000_0000 => BACnet_TagClass_Enum.application_tag
            case 0b0000_1000 => BACnet_TagClass_Enum.contextSpecific_tag

            case _ => throw DecodeException("协议错误.无效标签")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case BACnet_TagClass_Enum.application_tag => 0b0000_0000
            case BACnet_TagClass_Enum.contextSpecific_tag => 0b0000_1000
        }
    }

    public func toString(): String {
        match (this) {
            case BACnet_TagClass_Enum.application_tag => "application_tag"
            case BACnet_TagClass_Enum.contextSpecific_tag => "contextSpecific_tag"
        }
    }

    public static func fromString(arg_str: String): BACnet_TagClass_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "application_tag" => BACnet_TagClass_Enum.application_tag
            case "contextSpecific_tag" => BACnet_TagClass_Enum.contextSpecific_tag
            case "applicationtag" => BACnet_TagClass_Enum.application_tag
            case "contextSpecifictag" => BACnet_TagClass_Enum.contextSpecific_tag

            case _ => throw DecodeException("协议错误.无效标签")
        }
    }

}