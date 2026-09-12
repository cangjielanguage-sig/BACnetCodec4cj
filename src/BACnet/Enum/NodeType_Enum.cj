public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum NodeType_Enum <: IFromUInt32<NodeType_Enum> & IToUInt32 & ToString & IFromString<NodeType_Enum> {
    | unknown // (0)
    | system // (1)
    | network // (2)
    | device // (3)
    | organizational // (4)
    | area // (5)
    | equipment // (6)
    | point // (7)
    | collection // (8)
    | property // (9)
    | functional // (10)
    | other // (11)
    | subsystem // (12)
    | building // (13)
    | floor // (14)
    | section // (15)
    | module // (16)
    | tree // (17)
    | member // (18)
    | protocol // (19)
    | room // (20)
    | zone // (21)

    public static func fromUInt32(arg_tag: UInt32): NodeType_Enum {
        match (arg_tag) {
            case 0 => NodeType_Enum.unknown
            case 1 => NodeType_Enum.system
            case 2 => NodeType_Enum.network
            case 3 => NodeType_Enum.device
            case 4 => NodeType_Enum.organizational
            case 5 => NodeType_Enum.area
            case 6 => NodeType_Enum.equipment
            case 7 => NodeType_Enum.point
            case 8 => NodeType_Enum.collection
            case 9 => NodeType_Enum.property
            case 10 => NodeType_Enum.functional
            case 11 => NodeType_Enum.other
            case 12 => NodeType_Enum.subsystem
            case 13 => NodeType_Enum.building
            case 14 => NodeType_Enum.floor
            case 15 => NodeType_Enum.section
            case 16 => NodeType_Enum.module
            case 17 => NodeType_Enum.tree
            case 18 => NodeType_Enum.member
            case 19 => NodeType_Enum.protocol
            case 20 => NodeType_Enum.room
            case 21 => NodeType_Enum.zone
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case NodeType_Enum.unknown => 0
            case NodeType_Enum.system => 1
            case NodeType_Enum.network => 2
            case NodeType_Enum.device => 3
            case NodeType_Enum.organizational => 4
            case NodeType_Enum.area => 5
            case NodeType_Enum.equipment => 6
            case NodeType_Enum.point => 7
            case NodeType_Enum.collection => 8
            case NodeType_Enum.property => 9
            case NodeType_Enum.functional => 10
            case NodeType_Enum.other => 11
            case NodeType_Enum.subsystem => 12
            case NodeType_Enum.building => 13
            case NodeType_Enum.floor => 14
            case NodeType_Enum.section => 15
            case NodeType_Enum.module => 16
            case NodeType_Enum.tree => 17
            case NodeType_Enum.member => 18
            case NodeType_Enum.protocol => 19
            case NodeType_Enum.room => 20
            case NodeType_Enum.zone => 21
        }
    }

    public func toString(): String {
        match (this) {
            case NodeType_Enum.unknown => "unknown"
            case NodeType_Enum.system => "system"
            case NodeType_Enum.network => "network"
            case NodeType_Enum.device => "device"
            case NodeType_Enum.organizational => "organizational"
            case NodeType_Enum.area => "area"
            case NodeType_Enum.equipment => "equipment"
            case NodeType_Enum.point => "point"
            case NodeType_Enum.collection => "collection"
            case NodeType_Enum.property => "property"
            case NodeType_Enum.functional => "functional"
            case NodeType_Enum.other => "other"
            case NodeType_Enum.subsystem => "subsystem"
            case NodeType_Enum.building => "building"
            case NodeType_Enum.floor => "floor"
            case NodeType_Enum.section => "section"
            case NodeType_Enum.module => "module"
            case NodeType_Enum.tree => "tree"
            case NodeType_Enum.member => "member"
            case NodeType_Enum.protocol => "protocol"
            case NodeType_Enum.room => "room"
            case NodeType_Enum.zone => "zone"
        }
    }

    public static func fromString(arg_str: String): NodeType_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "unknown" => NodeType_Enum.unknown
            case "system" => NodeType_Enum.system
            case "network" => NodeType_Enum.network
            case "device" => NodeType_Enum.device
            case "organizational" => NodeType_Enum.organizational
            case "area" => NodeType_Enum.area
            case "equipment" => NodeType_Enum.equipment
            case "point" => NodeType_Enum.point
            case "collection" => NodeType_Enum.collection
            case "property" => NodeType_Enum.property
            case "functional" => NodeType_Enum.functional
            case "other" => NodeType_Enum.other
            case "subsystem" => NodeType_Enum.subsystem
            case "building" => NodeType_Enum.building
            case "floor" => NodeType_Enum.floor
            case "section" => NodeType_Enum.section
            case "module" => NodeType_Enum.module
            case "tree" => NodeType_Enum.tree
            case "member" => NodeType_Enum.member
            case "protocol" => NodeType_Enum.protocol
            case "room" => NodeType_Enum.room
            case "zone" => NodeType_Enum.zone
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_925
--21.6 Base Types

BACnetNodeType ::= ENUMERATED {
 unknown (0),
 system (1),
 network (2),
 device (3),
 organizational (4),
 area (5),
 equipment (6),
 point (7),
 collection (8),
 property (9),
 functional (10),
 other (11),
 subsystem (12),
 building (13),
 floor (14),
 section (15),
 module (16),
 tree (17),
 member (18),
 protocol (19),
 room (20),
 zone (21)
 }
*/
