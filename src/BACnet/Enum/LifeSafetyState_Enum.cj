public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum LifeSafetyState_Enum <: IFromUInt32<LifeSafetyState_Enum> & IToUInt32 & ToString & IFromString<LifeSafetyState_Enum> {
    | quiet // (0)
    | pre_alarm // (1)
    | alarm // (2)
    | fault // (3)
    | fault_pre_alarm // (4)
    | fault_alarm // (5)
    | not_ready // (6)
    | active // (7)
    | tamper // (8)
    | test_alarm // (9)
    | test_active // (10)
    | test_fault // (11)
    | test_fault_alarm // (12)
    | holdup // (13)
    | duress // (14)
    | tamper_alarm // (15)
    | abnormal // (16)
    | emergency_power // (17)
    | delayed // (18)
    | blocked // (19)
    | local_alarm // (20)
    | general_alarm // (21)
    | supervisory // (22)
    | test_supervisory // (23)
    | non_default_mode // (24)
    | oeo_unavailable // (25)
    | oeo_alarm // (26)
    | oeo_phase1_recall // (27)
    | oeo_evacuate // (28)
    | oeo_unaffected // (29)
    | test_oeo_unavailable // (30)
    | test_oeo_alarm // (31)
    | test_oeo_phase1_recall // (32)
    | test_oeo_evacuate // (33)
    | test_oeo_unaffected // (34)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): LifeSafetyState_Enum {
        match (arg_tag) {
            case 0 => LifeSafetyState_Enum.quiet
            case 1 => LifeSafetyState_Enum.pre_alarm
            case 2 => LifeSafetyState_Enum.alarm
            case 3 => LifeSafetyState_Enum.fault
            case 4 => LifeSafetyState_Enum.fault_pre_alarm
            case 5 => LifeSafetyState_Enum.fault_alarm
            case 6 => LifeSafetyState_Enum.not_ready
            case 7 => LifeSafetyState_Enum.active
            case 8 => LifeSafetyState_Enum.tamper
            case 9 => LifeSafetyState_Enum.test_alarm
            case 10 => LifeSafetyState_Enum.test_active
            case 11 => LifeSafetyState_Enum.test_fault
            case 12 => LifeSafetyState_Enum.test_fault_alarm
            case 13 => LifeSafetyState_Enum.holdup
            case 14 => LifeSafetyState_Enum.duress
            case 15 => LifeSafetyState_Enum.tamper_alarm
            case 16 => LifeSafetyState_Enum.abnormal
            case 17 => LifeSafetyState_Enum.emergency_power
            case 18 => LifeSafetyState_Enum.delayed
            case 19 => LifeSafetyState_Enum.blocked
            case 20 => LifeSafetyState_Enum.local_alarm
            case 21 => LifeSafetyState_Enum.general_alarm
            case 22 => LifeSafetyState_Enum.supervisory
            case 23 => LifeSafetyState_Enum.test_supervisory
            case 24 => LifeSafetyState_Enum.non_default_mode
            case 25 => LifeSafetyState_Enum.oeo_unavailable
            case 26 => LifeSafetyState_Enum.oeo_alarm
            case 27 => LifeSafetyState_Enum.oeo_phase1_recall
            case 28 => LifeSafetyState_Enum.oeo_evacuate
            case 29 => LifeSafetyState_Enum.oeo_unaffected
            case 30 => LifeSafetyState_Enum.test_oeo_unavailable
            case 31 => LifeSafetyState_Enum.test_oeo_alarm
            case 32 => LifeSafetyState_Enum.test_oeo_phase1_recall
            case 33 => LifeSafetyState_Enum.test_oeo_evacuate
            case 34 => LifeSafetyState_Enum.test_oeo_unaffected
            case x where x <= 255 => LifeSafetyState_Enum.reserved(x)
            case y where y > 255 && y <= 65535 => LifeSafetyState_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case LifeSafetyState_Enum.quiet => 0
            case LifeSafetyState_Enum.pre_alarm => 1
            case LifeSafetyState_Enum.alarm => 2
            case LifeSafetyState_Enum.fault => 3
            case LifeSafetyState_Enum.fault_pre_alarm => 4
            case LifeSafetyState_Enum.fault_alarm => 5
            case LifeSafetyState_Enum.not_ready => 6
            case LifeSafetyState_Enum.active => 7
            case LifeSafetyState_Enum.tamper => 8
            case LifeSafetyState_Enum.test_alarm => 9
            case LifeSafetyState_Enum.test_active => 10
            case LifeSafetyState_Enum.test_fault => 11
            case LifeSafetyState_Enum.test_fault_alarm => 12
            case LifeSafetyState_Enum.holdup => 13
            case LifeSafetyState_Enum.duress => 14
            case LifeSafetyState_Enum.tamper_alarm => 15
            case LifeSafetyState_Enum.abnormal => 16
            case LifeSafetyState_Enum.emergency_power => 17
            case LifeSafetyState_Enum.delayed => 18
            case LifeSafetyState_Enum.blocked => 19
            case LifeSafetyState_Enum.local_alarm => 20
            case LifeSafetyState_Enum.general_alarm => 21
            case LifeSafetyState_Enum.supervisory => 22
            case LifeSafetyState_Enum.test_supervisory => 23
            case LifeSafetyState_Enum.non_default_mode => 24
            case LifeSafetyState_Enum.oeo_unavailable => 25
            case LifeSafetyState_Enum.oeo_alarm => 26
            case LifeSafetyState_Enum.oeo_phase1_recall => 27
            case LifeSafetyState_Enum.oeo_evacuate => 28
            case LifeSafetyState_Enum.oeo_unaffected => 29
            case LifeSafetyState_Enum.test_oeo_unavailable => 30
            case LifeSafetyState_Enum.test_oeo_alarm => 31
            case LifeSafetyState_Enum.test_oeo_phase1_recall => 32
            case LifeSafetyState_Enum.test_oeo_evacuate => 33
            case LifeSafetyState_Enum.test_oeo_unaffected => 34
            case LifeSafetyState_Enum.reserved(x) => x
            case LifeSafetyState_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case LifeSafetyState_Enum.quiet => "quiet"
            case LifeSafetyState_Enum.pre_alarm => "pre_alarm"
            case LifeSafetyState_Enum.alarm => "alarm"
            case LifeSafetyState_Enum.fault => "fault"
            case LifeSafetyState_Enum.fault_pre_alarm => "fault_pre_alarm"
            case LifeSafetyState_Enum.fault_alarm => "fault_alarm"
            case LifeSafetyState_Enum.not_ready => "not_ready"
            case LifeSafetyState_Enum.active => "active"
            case LifeSafetyState_Enum.tamper => "tamper"
            case LifeSafetyState_Enum.test_alarm => "test_alarm"
            case LifeSafetyState_Enum.test_active => "test_active"
            case LifeSafetyState_Enum.test_fault => "test_fault"
            case LifeSafetyState_Enum.test_fault_alarm => "test_fault_alarm"
            case LifeSafetyState_Enum.holdup => "holdup"
            case LifeSafetyState_Enum.duress => "duress"
            case LifeSafetyState_Enum.tamper_alarm => "tamper_alarm"
            case LifeSafetyState_Enum.abnormal => "abnormal"
            case LifeSafetyState_Enum.emergency_power => "emergency_power"
            case LifeSafetyState_Enum.delayed => "delayed"
            case LifeSafetyState_Enum.blocked => "blocked"
            case LifeSafetyState_Enum.local_alarm => "local_alarm"
            case LifeSafetyState_Enum.general_alarm => "general_alarm"
            case LifeSafetyState_Enum.supervisory => "supervisory"
            case LifeSafetyState_Enum.test_supervisory => "test_supervisory"
            case LifeSafetyState_Enum.non_default_mode => "non_default_mode"
            case LifeSafetyState_Enum.oeo_unavailable => "oeo_unavailable"
            case LifeSafetyState_Enum.oeo_alarm => "oeo_alarm"
            case LifeSafetyState_Enum.oeo_phase1_recall => "oeo_phase1_recall"
            case LifeSafetyState_Enum.oeo_evacuate => "oeo_evacuate"
            case LifeSafetyState_Enum.oeo_unaffected => "oeo_unaffected"
            case LifeSafetyState_Enum.test_oeo_unavailable => "test_oeo_unavailable"
            case LifeSafetyState_Enum.test_oeo_alarm => "test_oeo_alarm"
            case LifeSafetyState_Enum.test_oeo_phase1_recall => "test_oeo_phase1_recall"
            case LifeSafetyState_Enum.test_oeo_evacuate => "test_oeo_evacuate"
            case LifeSafetyState_Enum.test_oeo_unaffected => "test_oeo_unaffected"
            case LifeSafetyState_Enum.reserved(x) => "reserved_${x}"
            case LifeSafetyState_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): LifeSafetyState_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "quiet" => LifeSafetyState_Enum.quiet
            case "pre_alarm" => LifeSafetyState_Enum.pre_alarm
            case "alarm" => LifeSafetyState_Enum.alarm
            case "fault" => LifeSafetyState_Enum.fault
            case "fault_pre_alarm" => LifeSafetyState_Enum.fault_pre_alarm
            case "fault_alarm" => LifeSafetyState_Enum.fault_alarm
            case "not_ready" => LifeSafetyState_Enum.not_ready
            case "active" => LifeSafetyState_Enum.active
            case "tamper" => LifeSafetyState_Enum.tamper
            case "test_alarm" => LifeSafetyState_Enum.test_alarm
            case "test_active" => LifeSafetyState_Enum.test_active
            case "test_fault" => LifeSafetyState_Enum.test_fault
            case "test_fault_alarm" => LifeSafetyState_Enum.test_fault_alarm
            case "holdup" => LifeSafetyState_Enum.holdup
            case "duress" => LifeSafetyState_Enum.duress
            case "tamper_alarm" => LifeSafetyState_Enum.tamper_alarm
            case "abnormal" => LifeSafetyState_Enum.abnormal
            case "emergency_power" => LifeSafetyState_Enum.emergency_power
            case "delayed" => LifeSafetyState_Enum.delayed
            case "blocked" => LifeSafetyState_Enum.blocked
            case "local_alarm" => LifeSafetyState_Enum.local_alarm
            case "general_alarm" => LifeSafetyState_Enum.general_alarm
            case "supervisory" => LifeSafetyState_Enum.supervisory
            case "test_supervisory" => LifeSafetyState_Enum.test_supervisory
            case "non_default_mode" => LifeSafetyState_Enum.non_default_mode
            case "oeo_unavailable" => LifeSafetyState_Enum.oeo_unavailable
            case "oeo_alarm" => LifeSafetyState_Enum.oeo_alarm
            case "oeo_phase1_recall" => LifeSafetyState_Enum.oeo_phase1_recall
            case "oeo_evacuate" => LifeSafetyState_Enum.oeo_evacuate
            case "oeo_unaffected" => LifeSafetyState_Enum.oeo_unaffected
            case "test_oeo_unavailable" => LifeSafetyState_Enum.test_oeo_unavailable
            case "test_oeo_alarm" => LifeSafetyState_Enum.test_oeo_alarm
            case "test_oeo_phase1_recall" => LifeSafetyState_Enum.test_oeo_phase1_recall
            case "test_oeo_evacuate" => LifeSafetyState_Enum.test_oeo_evacuate
            case "test_oeo_unaffected" => LifeSafetyState_Enum.test_oeo_unaffected
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => LifeSafetyState_Enum.reserved(x)
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
                        case Some(x) => LifeSafetyState_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_920
--21.6 Base Types

BACnetLifeSafetyState ::= ENUMERATED {
 quiet (0),
 pre-alarm (1),
 alarm (2),
 fault (3),
 fault-pre-alarm (4),
 fault-alarm (5),
 not-ready (6),
 active (7),
 tamper (8),
 test-alarm (9),
 test-active (10),
 test-fault (11),
 test-fault-alarm (12),
 holdup (13),
 duress (14),
 tamper-alarm (15),
 abnormal (16),
 emergency-power (17),
 delayed (18),
 blocked (19),
 local-alarm (20),
 general-alarm (21),
 supervisory (22),
 test-supervisory (23),
 non-default-mode (24),
 oeo-unavailable (25),
 oeo-alarm (26),
 oeo-phase1-recall (27),
 oeo-evacuate (28),
 oeo-unaffected (29),
 test-oeo-unavailable (30),
 test-oeo-alarm (31),
 test-oeo-phase1-recall (32),
 test-oeo-evacuate (33),
 test-oeo-unaffected (34),
 ...
 }
 -- Enumerated values 0-255 are reserved for definition by ASHRAE. Enumerated values
 -- 256-65535 may be used by others subject to procedures and constraints described in Clause 23.
*/
