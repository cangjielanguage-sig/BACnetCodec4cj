public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

//复合值

public enum AuditLogQueryParameters_Choice <: IFromUInt8<AuditLogQueryParameters_Choice> & IToUInt8 & ToString & IFromString<AuditLogQueryParameters_Choice> {
    | by_target // by-target [0] SEQUENCE {
    | by_source // by-source [1] SEQUENCE {

    public static func fromUInt8(tag: UInt8): AuditLogQueryParameters_Choice {
        match (tag) {
            case 0 => AuditLogQueryParameters_Choice.by_target
            case 1 => AuditLogQueryParameters_Choice.by_source
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case AuditLogQueryParameters_Choice.by_target => 0
            case AuditLogQueryParameters_Choice.by_source => 1
        }
    }

    public func toString(): String {
        match (this) {
            case AuditLogQueryParameters_Choice.by_target => "by_target"
            case AuditLogQueryParameters_Choice.by_source => "by_source"
        }
    }

    public static func fromString(arg_str: String): AuditLogQueryParameters_Choice {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "by_target" => AuditLogQueryParameters_Choice.by_target
            case "by_source" => AuditLogQueryParameters_Choice.by_source
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_896
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnetAuditLogQueryParameters ::= CHOICE {
 by-target [0] SEQUENCE {
   target-device-identifier [0] BACnetObjectIdentifier,
   target-device-address [1] BACnetAddress OPTIONAL,
   target-object-identifier [2] BACnetObjectIdentifier OPTIONAL,
   target-property-identifier [3] BACnetPropertyIdentifier OPTIONAL,
   target-array-index [4] Unsigned OPTIONAL,
   target-priority  [5] Unsigned(1..16) OPTIONAL,
   operations   [6] BACnetAuditOperationFlags
OPTIONAL,
   successful-actions-only [7] BOOLEAN
  },
 by-source [1] SEQUENCE {
   source-device-identifier [0] BACnetObjectIdentifier,
   source-device-address [1] BACnetAddress OPTIONAL,
   source-object-identifier [2] BACnetObjectIdentifier OPTIONAL,
   operations   [3] BACnetAuditOperationFlags
OPTIONAL,
   successful-actions-only [4] BOOLEAN
  }
 }
*/
