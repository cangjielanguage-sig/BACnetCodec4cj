public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum FileAccessMethod_Enum <: IFromUInt32<FileAccessMethod_Enum> & IToUInt32 & ToString & IFromString<FileAccessMethod_Enum> {
    | record_access // (0)
    | stream_access // (1)

    public static func fromUInt32(arg_tag: UInt32): FileAccessMethod_Enum {
        match (arg_tag) {
            case 0 => FileAccessMethod_Enum.record_access
            case 1 => FileAccessMethod_Enum.stream_access
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case FileAccessMethod_Enum.record_access => 0
            case FileAccessMethod_Enum.stream_access => 1
        }
    }

    public func toString(): String {
        match (this) {
            case FileAccessMethod_Enum.record_access => "record_access"
            case FileAccessMethod_Enum.stream_access => "stream_access"
        }
    }

    public static func fromString(arg_str: String): FileAccessMethod_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "record_access" => FileAccessMethod_Enum.record_access
            case "stream_access" => FileAccessMethod_Enum.stream_access
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_918
--21.6 Base Types

BACnetFileAccessMethod ::= ENUMERATED {
 record-access (0),
 stream-access (1)
 }
*/
