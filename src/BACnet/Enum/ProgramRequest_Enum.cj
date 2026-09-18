public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum ProgramRequest_Enum <: IFromUInt32<ProgramRequest_Enum> & IToUInt32 & ToString & IFromString<ProgramRequest_Enum> {
    | ready // (0)
    | load // (1)
    | run // (2)
    | halt // (3)
    | restart // (4)
    | unload // (5)

    public static func fromUInt32(arg_tag: UInt32): ProgramRequest_Enum {
        match (arg_tag) {
            case 0 => ProgramRequest_Enum.ready
            case 1 => ProgramRequest_Enum.load
            case 2 => ProgramRequest_Enum.run
            case 3 => ProgramRequest_Enum.halt
            case 4 => ProgramRequest_Enum.restart
            case 5 => ProgramRequest_Enum.unload
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case ProgramRequest_Enum.ready => 0
            case ProgramRequest_Enum.load => 1
            case ProgramRequest_Enum.run => 2
            case ProgramRequest_Enum.halt => 3
            case ProgramRequest_Enum.restart => 4
            case ProgramRequest_Enum.unload => 5
        }
    }

    public func toString(): String {
        match (this) {
            case ProgramRequest_Enum.ready => "ready"
            case ProgramRequest_Enum.load => "load"
            case ProgramRequest_Enum.run => "run"
            case ProgramRequest_Enum.halt => "halt"
            case ProgramRequest_Enum.restart => "restart"
            case ProgramRequest_Enum.unload => "unload"
        }
    }

    public static func fromString(arg_str: String): ProgramRequest_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "ready" => ProgramRequest_Enum.ready
            case "load" => ProgramRequest_Enum.load
            case "run" => ProgramRequest_Enum.run
            case "halt" => ProgramRequest_Enum.halt
            case "restart" => ProgramRequest_Enum.restart
            case "unload" => ProgramRequest_Enum.unload
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_934
--21.6 Base Types

BACnetProgramRequest ::= ENUMERATED {
 ready (0),
 load (1),
 run (2),
 halt (3),
 restart (4),
 unload (5)
 }
*/
