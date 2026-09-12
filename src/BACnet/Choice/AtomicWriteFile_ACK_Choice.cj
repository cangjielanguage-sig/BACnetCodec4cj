public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*


public enum AtomicWriteFile_ACK_Choice <: IFromUInt8<AtomicWriteFile_ACK_Choice> & IToUInt8 & ToString & IFromString<AtomicWriteFile_ACK_Choice> {
    | file_start_position // file-start-position [0] INTEGER,
    | file_start_record // file-start-record [1] INTEGER

    public static func fromUInt8(tag: UInt8): AtomicWriteFile_ACK_Choice {
        match (tag) {
            case 0 => AtomicWriteFile_ACK_Choice.file_start_position
            case 1 => AtomicWriteFile_ACK_Choice.file_start_record
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case AtomicWriteFile_ACK_Choice.file_start_position => 0
            case AtomicWriteFile_ACK_Choice.file_start_record => 1
        }
    }

    public func toString(): String {
        match (this) {
            case AtomicWriteFile_ACK_Choice.file_start_position => "file_start_position"
            case AtomicWriteFile_ACK_Choice.file_start_record => "file_start_record"
        }
    }

    public static func fromString(arg_str: String): AtomicWriteFile_ACK_Choice {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "file_start_position" => AtomicWriteFile_ACK_Choice.file_start_position
            case "file_start_record" => AtomicWriteFile_ACK_Choice.file_start_record
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_874
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

AtomicWriteFile-ACK ::= CHOICE {
 file-start-position [0] INTEGER,
 file-start-record [1] INTEGER
 }
*/
