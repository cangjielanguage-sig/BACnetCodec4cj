public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum Relationship_Enum <: IFromUInt32<Relationship_Enum> & IToUInt32 & ToString & IFromString<Relationship_Enum> {
    | unknown // (0)
    | default // (1)
    | contains // (2)
    | contained_by // (3)
    | uses // (4)
    | used_by // (5)
    | commands // (6)
    | commanded_by // (7)
    | adjusts // (8)
    | adjusted_by // (9)
    | ingress // (10)
    | egress // (11)
    | supplies_air // (12)
    | receives_air // (13)
    | supplies_hot_air // (14)
    | receives_hot_air // (15)
    | supplies_cool_air // (16)
    | receives_cool_air // (17)
    | supplies_power // (18)
    | receives_power // (19)
    | supplies_gas // (20)
    | receives_gas // (21)
    | supplies_water // (22)
    | receives_water // (23)
    | supplies_hot_water // (24)
    | receives_hot_water // (25)
    | supplies_cool_water // (26)
    | receives_cool_water // (27)
    | supplies_steam // (28)
    | receives_steam // (29)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): Relationship_Enum {
        match (arg_tag) {
            case 0 => Relationship_Enum.unknown
            case 1 => Relationship_Enum.default
            case 2 => Relationship_Enum.contains
            case 3 => Relationship_Enum.contained_by
            case 4 => Relationship_Enum.uses
            case 5 => Relationship_Enum.used_by
            case 6 => Relationship_Enum.commands
            case 7 => Relationship_Enum.commanded_by
            case 8 => Relationship_Enum.adjusts
            case 9 => Relationship_Enum.adjusted_by
            case 10 => Relationship_Enum.ingress
            case 11 => Relationship_Enum.egress
            case 12 => Relationship_Enum.supplies_air
            case 13 => Relationship_Enum.receives_air
            case 14 => Relationship_Enum.supplies_hot_air
            case 15 => Relationship_Enum.receives_hot_air
            case 16 => Relationship_Enum.supplies_cool_air
            case 17 => Relationship_Enum.receives_cool_air
            case 18 => Relationship_Enum.supplies_power
            case 19 => Relationship_Enum.receives_power
            case 20 => Relationship_Enum.supplies_gas
            case 21 => Relationship_Enum.receives_gas
            case 22 => Relationship_Enum.supplies_water
            case 23 => Relationship_Enum.receives_water
            case 24 => Relationship_Enum.supplies_hot_water
            case 25 => Relationship_Enum.receives_hot_water
            case 26 => Relationship_Enum.supplies_cool_water
            case 27 => Relationship_Enum.receives_cool_water
            case 28 => Relationship_Enum.supplies_steam
            case 29 => Relationship_Enum.receives_steam
            case x where x <= 1023 => Relationship_Enum.reserved(x)
            case y where y > 1023 && y <= 65535 => Relationship_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case Relationship_Enum.unknown => 0
            case Relationship_Enum.default => 1
            case Relationship_Enum.contains => 2
            case Relationship_Enum.contained_by => 3
            case Relationship_Enum.uses => 4
            case Relationship_Enum.used_by => 5
            case Relationship_Enum.commands => 6
            case Relationship_Enum.commanded_by => 7
            case Relationship_Enum.adjusts => 8
            case Relationship_Enum.adjusted_by => 9
            case Relationship_Enum.ingress => 10
            case Relationship_Enum.egress => 11
            case Relationship_Enum.supplies_air => 12
            case Relationship_Enum.receives_air => 13
            case Relationship_Enum.supplies_hot_air => 14
            case Relationship_Enum.receives_hot_air => 15
            case Relationship_Enum.supplies_cool_air => 16
            case Relationship_Enum.receives_cool_air => 17
            case Relationship_Enum.supplies_power => 18
            case Relationship_Enum.receives_power => 19
            case Relationship_Enum.supplies_gas => 20
            case Relationship_Enum.receives_gas => 21
            case Relationship_Enum.supplies_water => 22
            case Relationship_Enum.receives_water => 23
            case Relationship_Enum.supplies_hot_water => 24
            case Relationship_Enum.receives_hot_water => 25
            case Relationship_Enum.supplies_cool_water => 26
            case Relationship_Enum.receives_cool_water => 27
            case Relationship_Enum.supplies_steam => 28
            case Relationship_Enum.receives_steam => 29
            case Relationship_Enum.reserved(x) => x
            case Relationship_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case Relationship_Enum.unknown => "unknown"
            case Relationship_Enum.default => "default"
            case Relationship_Enum.contains => "contains"
            case Relationship_Enum.contained_by => "contained_by"
            case Relationship_Enum.uses => "uses"
            case Relationship_Enum.used_by => "used_by"
            case Relationship_Enum.commands => "commands"
            case Relationship_Enum.commanded_by => "commanded_by"
            case Relationship_Enum.adjusts => "adjusts"
            case Relationship_Enum.adjusted_by => "adjusted_by"
            case Relationship_Enum.ingress => "ingress"
            case Relationship_Enum.egress => "egress"
            case Relationship_Enum.supplies_air => "supplies_air"
            case Relationship_Enum.receives_air => "receives_air"
            case Relationship_Enum.supplies_hot_air => "supplies_hot_air"
            case Relationship_Enum.receives_hot_air => "receives_hot_air"
            case Relationship_Enum.supplies_cool_air => "supplies_cool_air"
            case Relationship_Enum.receives_cool_air => "receives_cool_air"
            case Relationship_Enum.supplies_power => "supplies_power"
            case Relationship_Enum.receives_power => "receives_power"
            case Relationship_Enum.supplies_gas => "supplies_gas"
            case Relationship_Enum.receives_gas => "receives_gas"
            case Relationship_Enum.supplies_water => "supplies_water"
            case Relationship_Enum.receives_water => "receives_water"
            case Relationship_Enum.supplies_hot_water => "supplies_hot_water"
            case Relationship_Enum.receives_hot_water => "receives_hot_water"
            case Relationship_Enum.supplies_cool_water => "supplies_cool_water"
            case Relationship_Enum.receives_cool_water => "receives_cool_water"
            case Relationship_Enum.supplies_steam => "supplies_steam"
            case Relationship_Enum.receives_steam => "receives_steam"
            case Relationship_Enum.reserved(x) => "reserved_${x}"
            case Relationship_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): Relationship_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "unknown" => Relationship_Enum.unknown
            case "default" => Relationship_Enum.default
            case "contains" => Relationship_Enum.contains
            case "contained_by" => Relationship_Enum.contained_by
            case "uses" => Relationship_Enum.uses
            case "used_by" => Relationship_Enum.used_by
            case "commands" => Relationship_Enum.commands
            case "commanded_by" => Relationship_Enum.commanded_by
            case "adjusts" => Relationship_Enum.adjusts
            case "adjusted_by" => Relationship_Enum.adjusted_by
            case "ingress" => Relationship_Enum.ingress
            case "egress" => Relationship_Enum.egress
            case "supplies_air" => Relationship_Enum.supplies_air
            case "receives_air" => Relationship_Enum.receives_air
            case "supplies_hot_air" => Relationship_Enum.supplies_hot_air
            case "receives_hot_air" => Relationship_Enum.receives_hot_air
            case "supplies_cool_air" => Relationship_Enum.supplies_cool_air
            case "receives_cool_air" => Relationship_Enum.receives_cool_air
            case "supplies_power" => Relationship_Enum.supplies_power
            case "receives_power" => Relationship_Enum.receives_power
            case "supplies_gas" => Relationship_Enum.supplies_gas
            case "receives_gas" => Relationship_Enum.receives_gas
            case "supplies_water" => Relationship_Enum.supplies_water
            case "receives_water" => Relationship_Enum.receives_water
            case "supplies_hot_water" => Relationship_Enum.supplies_hot_water
            case "receives_hot_water" => Relationship_Enum.receives_hot_water
            case "supplies_cool_water" => Relationship_Enum.supplies_cool_water
            case "receives_cool_water" => Relationship_Enum.receives_cool_water
            case "supplies_steam" => Relationship_Enum.supplies_steam
            case "receives_steam" => Relationship_Enum.receives_steam
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => Relationship_Enum.reserved(x)
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
                        case Some(x) => Relationship_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_952
--21.6 Base Types

BACnetRelationship ::= ENUMERATED {
 unknown (0),
 default (1),
 -- Note that all of the following are in even/odd pairs indicating forward and reverse relationships.
 -- Proprietary extensions shall also follow the same even/odd pairing so that consumers can determine, for
 -- any given relationship, what the opposite relationship is.
 contains (2),
 contained-by (3),
 uses (4),
 used-by (5),
 commands (6),
 commanded-by (7),
 adjusts (8),
 adjusted-by (9),
 ingress (10),
 egress (11),
 supplies-air (12),
 receives-air (13),
 supplies-hot-air (14),
 receives-hot-air (15),
 supplies-cool-air (16),
 receives-cool-air (17),
 supplies-power (18),
 receives-power (19),
 supplies-gas (20),
 receives-gas (21),
 supplies-water (22),
 receives-water (23),
 supplies-hot-water (24),
 receives-hot-water (25),
 supplies-cool-water (26),
 receives-cool-water (27),
 supplies-steam (28),
 receives-steam (29),
 ...
 }
 -- Enumerated values 0-1023 are reserved for definition by ASHRAE. Enumerated values 1024-65535
 -- may be used by others subject to the procedures and constraints described in Clause 23.
--ISO_16484_5_2022_Page_953
*/
