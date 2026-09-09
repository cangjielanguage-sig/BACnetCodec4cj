public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum ClientCOV <: IFromUInt8<ClientCOV> & IToUInt8 & ToString & IFromString<ClientCOV> {
    | default_increment // default-increment NULL
    | real_increment // real-increment REAL,

    public static func fromUInt8(tag: UInt8): ClientCOV {
        match (tag) {
            case 0 => ClientCOV.default_increment
            case 4 => ClientCOV.real_increment
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case ClientCOV.default_increment => 0
            case ClientCOV.real_increment => 4
        }
    }

    public func toString(): String {
        match (this) {
            case ClientCOV.default_increment => "default_increment"
            case ClientCOV.real_increment => "real_increment"
        }
    }

    public static func fromString(arg_str: String): ClientCOV {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "default_increment" => ClientCOV.default_increment
            case "real_increment" => ClientCOV.real_increment
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_900
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnetClientCOV ::= CHOICE {
 real-increment REAL,
 default-increment NULL
 }
*/
