public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum NetworkPortCommand_Enum <: IFromUInt32<NetworkPortCommand_Enum> & IToUInt32 & ToString & IFromString<NetworkPortCommand_Enum> {
    | idle // (0)
    | discard_changes // (1)
    | renew_fd_registration // (2)
    | restart_slave_discovery // (3)
    | renew_dhcp // (4)
    | restart_autonegotiation // (5)
    | disconnect // (6)
    | restart_port // (7)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): NetworkPortCommand_Enum {
        match (arg_tag) {
            case 0 => NetworkPortCommand_Enum.idle
            case 1 => NetworkPortCommand_Enum.discard_changes
            case 2 => NetworkPortCommand_Enum.renew_fd_registration
            case 3 => NetworkPortCommand_Enum.restart_slave_discovery
            case 4 => NetworkPortCommand_Enum.renew_dhcp
            case 5 => NetworkPortCommand_Enum.restart_autonegotiation
            case 6 => NetworkPortCommand_Enum.disconnect
            case 7 => NetworkPortCommand_Enum.restart_port
            case x where x <= 127 => NetworkPortCommand_Enum.reserved(x)
            case y where y > 127 && y <= 255 => NetworkPortCommand_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case NetworkPortCommand_Enum.idle => 0
            case NetworkPortCommand_Enum.discard_changes => 1
            case NetworkPortCommand_Enum.renew_fd_registration => 2
            case NetworkPortCommand_Enum.restart_slave_discovery => 3
            case NetworkPortCommand_Enum.renew_dhcp => 4
            case NetworkPortCommand_Enum.restart_autonegotiation => 5
            case NetworkPortCommand_Enum.disconnect => 6
            case NetworkPortCommand_Enum.restart_port => 7
            case NetworkPortCommand_Enum.reserved(x) => x
            case NetworkPortCommand_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case NetworkPortCommand_Enum.idle => "idle"
            case NetworkPortCommand_Enum.discard_changes => "discard_changes"
            case NetworkPortCommand_Enum.renew_fd_registration => "renew_fd_registration"
            case NetworkPortCommand_Enum.restart_slave_discovery => "restart_slave_discovery"
            case NetworkPortCommand_Enum.renew_dhcp => "renew_dhcp"
            case NetworkPortCommand_Enum.restart_autonegotiation => "restart_autonegotiation"
            case NetworkPortCommand_Enum.disconnect => "disconnect"
            case NetworkPortCommand_Enum.restart_port => "restart_port"
            case NetworkPortCommand_Enum.reserved(x) => "reserved_${x}"
            case NetworkPortCommand_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): NetworkPortCommand_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "idle" => NetworkPortCommand_Enum.idle
            case "discard_changes" => NetworkPortCommand_Enum.discard_changes
            case "renew_fd_registration" => NetworkPortCommand_Enum.renew_fd_registration
            case "restart_slave_discovery" => NetworkPortCommand_Enum.restart_slave_discovery
            case "renew_dhcp" => NetworkPortCommand_Enum.renew_dhcp
            case "restart_autonegotiation" => NetworkPortCommand_Enum.restart_autonegotiation
            case "disconnect" => NetworkPortCommand_Enum.disconnect
            case "restart_port" => NetworkPortCommand_Enum.restart_port
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => NetworkPortCommand_Enum.reserved(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _n where _n.startsWith("non_standardized_") =>
                let _numStr = _n.removePrefix("non_standardized_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => NetworkPortCommand_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_924
--21.6 Base Types

BACnetNetworkPortCommand ::= ENUMERATED {
 idle (0),
 discard-changes (1),
 renew-fd-registration (2),
 restart-slave-discovery (3),
 renew-dhcp (4),
 restart-autonegotiation  (5),
 disconnect (6),
 restart-port (7),
 ...
 }
 -- Enumerated values 0-127 are reserved for definition by ASHRAE. Enumerated values
 -- 128-255 may be used by others subject to the procedures and constraints described
 -- in Clause 23.
--ISO_16484_5_2022_Page_925
*/
