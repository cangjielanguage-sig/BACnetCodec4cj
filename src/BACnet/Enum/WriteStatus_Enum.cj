public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum WriteStatus_Enum <: IFromUInt32<WriteStatus_Enum> & IToUInt32 & ToString & IFromString<WriteStatus_Enum> {
    | idle // (0)
    | in_progress // (1)
    | successful // (2)
    | failed // (3)

    public static func fromUInt32(arg_tag: UInt32): WriteStatus_Enum {
        match (arg_tag) {
            case 0 => WriteStatus_Enum.idle
            case 1 => WriteStatus_Enum.in_progress
            case 2 => WriteStatus_Enum.successful
            case 3 => WriteStatus_Enum.failed
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case WriteStatus_Enum.idle => 0
            case WriteStatus_Enum.in_progress => 1
            case WriteStatus_Enum.successful => 2
            case WriteStatus_Enum.failed => 3
        }
    }

    public func toString(): String {
        match (this) {
            case WriteStatus_Enum.idle => "idle"
            case WriteStatus_Enum.in_progress => "in_progress"
            case WriteStatus_Enum.successful => "successful"
            case WriteStatus_Enum.failed => "failed"
        }
    }

    public static func fromString(arg_str: String): WriteStatus_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "idle" => WriteStatus_Enum.idle
            case "in_progress" => WriteStatus_Enum.in_progress
            case "successful" => WriteStatus_Enum.successful
            case "failed" => WriteStatus_Enum.failed
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_958
--21.6 Base Types

BACnetWriteStatus ::= ENUMERATED {
 idle (0),
 in-progress (1),
 successful (2),
 failed (3)
 }
--ISO_16484_5_2022_Page_959
*/
