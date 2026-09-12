public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum AuthenticationFactorType_Enum <: IFromUInt32<AuthenticationFactorType_Enum> & IToUInt32 & ToString & IFromString<AuthenticationFactorType_Enum> {
    | undefined // (0)
    | error // (1)
    | custom // (2)
    | simple_number16 // (3)
    | simple_number32 // (4)
    | simple_number56 // (5)
    | simple_alpha_numeric // (6)
    | aba_track2 // (7)
    | wiegand26 // (8)
    | wiegand37 // (9)
    | wiegand37_facility // (10)
    | facility16_card32 // (11)
    | facility32_card32 // (12)
    | fasc_n // (13)
    | fasc_n_bcd // (14)
    | fasc_n_large // (15)
    | fasc_n_large_bcd // (16)
    | gsa75 // (17)
    | chuid // (18)
    | chuid_full // (19)
    | guid // (20)
    | cbeff_a // (21)
    | cbeff_b // (22)
    | cbeff_c // (23)
    | user_password // (24)

    public static func fromUInt32(arg_tag: UInt32): AuthenticationFactorType_Enum {
        match (arg_tag) {
            case 0 => AuthenticationFactorType_Enum.undefined
            case 1 => AuthenticationFactorType_Enum.error
            case 2 => AuthenticationFactorType_Enum.custom
            case 3 => AuthenticationFactorType_Enum.simple_number16
            case 4 => AuthenticationFactorType_Enum.simple_number32
            case 5 => AuthenticationFactorType_Enum.simple_number56
            case 6 => AuthenticationFactorType_Enum.simple_alpha_numeric
            case 7 => AuthenticationFactorType_Enum.aba_track2
            case 8 => AuthenticationFactorType_Enum.wiegand26
            case 9 => AuthenticationFactorType_Enum.wiegand37
            case 10 => AuthenticationFactorType_Enum.wiegand37_facility
            case 11 => AuthenticationFactorType_Enum.facility16_card32
            case 12 => AuthenticationFactorType_Enum.facility32_card32
            case 13 => AuthenticationFactorType_Enum.fasc_n
            case 14 => AuthenticationFactorType_Enum.fasc_n_bcd
            case 15 => AuthenticationFactorType_Enum.fasc_n_large
            case 16 => AuthenticationFactorType_Enum.fasc_n_large_bcd
            case 17 => AuthenticationFactorType_Enum.gsa75
            case 18 => AuthenticationFactorType_Enum.chuid
            case 19 => AuthenticationFactorType_Enum.chuid_full
            case 20 => AuthenticationFactorType_Enum.guid
            case 21 => AuthenticationFactorType_Enum.cbeff_a
            case 22 => AuthenticationFactorType_Enum.cbeff_b
            case 23 => AuthenticationFactorType_Enum.cbeff_c
            case 24 => AuthenticationFactorType_Enum.user_password
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case AuthenticationFactorType_Enum.undefined => 0
            case AuthenticationFactorType_Enum.error => 1
            case AuthenticationFactorType_Enum.custom => 2
            case AuthenticationFactorType_Enum.simple_number16 => 3
            case AuthenticationFactorType_Enum.simple_number32 => 4
            case AuthenticationFactorType_Enum.simple_number56 => 5
            case AuthenticationFactorType_Enum.simple_alpha_numeric => 6
            case AuthenticationFactorType_Enum.aba_track2 => 7
            case AuthenticationFactorType_Enum.wiegand26 => 8
            case AuthenticationFactorType_Enum.wiegand37 => 9
            case AuthenticationFactorType_Enum.wiegand37_facility => 10
            case AuthenticationFactorType_Enum.facility16_card32 => 11
            case AuthenticationFactorType_Enum.facility32_card32 => 12
            case AuthenticationFactorType_Enum.fasc_n => 13
            case AuthenticationFactorType_Enum.fasc_n_bcd => 14
            case AuthenticationFactorType_Enum.fasc_n_large => 15
            case AuthenticationFactorType_Enum.fasc_n_large_bcd => 16
            case AuthenticationFactorType_Enum.gsa75 => 17
            case AuthenticationFactorType_Enum.chuid => 18
            case AuthenticationFactorType_Enum.chuid_full => 19
            case AuthenticationFactorType_Enum.guid => 20
            case AuthenticationFactorType_Enum.cbeff_a => 21
            case AuthenticationFactorType_Enum.cbeff_b => 22
            case AuthenticationFactorType_Enum.cbeff_c => 23
            case AuthenticationFactorType_Enum.user_password => 24
        }
    }

    public func toString(): String {
        match (this) {
            case AuthenticationFactorType_Enum.undefined => "undefined"
            case AuthenticationFactorType_Enum.error => "error"
            case AuthenticationFactorType_Enum.custom => "custom"
            case AuthenticationFactorType_Enum.simple_number16 => "simple_number16"
            case AuthenticationFactorType_Enum.simple_number32 => "simple_number32"
            case AuthenticationFactorType_Enum.simple_number56 => "simple_number56"
            case AuthenticationFactorType_Enum.simple_alpha_numeric => "simple_alpha_numeric"
            case AuthenticationFactorType_Enum.aba_track2 => "aba_track2"
            case AuthenticationFactorType_Enum.wiegand26 => "wiegand26"
            case AuthenticationFactorType_Enum.wiegand37 => "wiegand37"
            case AuthenticationFactorType_Enum.wiegand37_facility => "wiegand37_facility"
            case AuthenticationFactorType_Enum.facility16_card32 => "facility16_card32"
            case AuthenticationFactorType_Enum.facility32_card32 => "facility32_card32"
            case AuthenticationFactorType_Enum.fasc_n => "fasc_n"
            case AuthenticationFactorType_Enum.fasc_n_bcd => "fasc_n_bcd"
            case AuthenticationFactorType_Enum.fasc_n_large => "fasc_n_large"
            case AuthenticationFactorType_Enum.fasc_n_large_bcd => "fasc_n_large_bcd"
            case AuthenticationFactorType_Enum.gsa75 => "gsa75"
            case AuthenticationFactorType_Enum.chuid => "chuid"
            case AuthenticationFactorType_Enum.chuid_full => "chuid_full"
            case AuthenticationFactorType_Enum.guid => "guid"
            case AuthenticationFactorType_Enum.cbeff_a => "cbeff_a"
            case AuthenticationFactorType_Enum.cbeff_b => "cbeff_b"
            case AuthenticationFactorType_Enum.cbeff_c => "cbeff_c"
            case AuthenticationFactorType_Enum.user_password => "user_password"
        }
    }

    public static func fromString(arg_str: String): AuthenticationFactorType_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "undefined" => AuthenticationFactorType_Enum.undefined
            case "error" => AuthenticationFactorType_Enum.error
            case "custom" => AuthenticationFactorType_Enum.custom
            case "simple_number16" => AuthenticationFactorType_Enum.simple_number16
            case "simple_number32" => AuthenticationFactorType_Enum.simple_number32
            case "simple_number56" => AuthenticationFactorType_Enum.simple_number56
            case "simple_alpha_numeric" => AuthenticationFactorType_Enum.simple_alpha_numeric
            case "aba_track2" => AuthenticationFactorType_Enum.aba_track2
            case "wiegand26" => AuthenticationFactorType_Enum.wiegand26
            case "wiegand37" => AuthenticationFactorType_Enum.wiegand37
            case "wiegand37_facility" => AuthenticationFactorType_Enum.wiegand37_facility
            case "facility16_card32" => AuthenticationFactorType_Enum.facility16_card32
            case "facility32_card32" => AuthenticationFactorType_Enum.facility32_card32
            case "fasc_n" => AuthenticationFactorType_Enum.fasc_n
            case "fasc_n_bcd" => AuthenticationFactorType_Enum.fasc_n_bcd
            case "fasc_n_large" => AuthenticationFactorType_Enum.fasc_n_large
            case "fasc_n_large_bcd" => AuthenticationFactorType_Enum.fasc_n_large_bcd
            case "gsa75" => AuthenticationFactorType_Enum.gsa75
            case "chuid" => AuthenticationFactorType_Enum.chuid
            case "chuid_full" => AuthenticationFactorType_Enum.chuid_full
            case "guid" => AuthenticationFactorType_Enum.guid
            case "cbeff_a" => AuthenticationFactorType_Enum.cbeff_a
            case "cbeff_b" => AuthenticationFactorType_Enum.cbeff_b
            case "cbeff_c" => AuthenticationFactorType_Enum.cbeff_c
            case "user_password" => AuthenticationFactorType_Enum.user_password
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_898
--21.6 Base Types

BACnetAuthenticationFactorType ::= ENUMERATED {
 undefined (0),
 error (1),
 custom (2),
 simple-number16 (3),
 simple-number32 (4),
 simple-number56 (5),
 simple-alpha-numeric (6),
 aba-track2 (7),
 wiegand26 (8),
 wiegand37 (9),
 wiegand37-facility (10),
 facility16-card32 (11),
 facility32-card32 (12),
 fasc-n (13),
 fasc-n-bcd (14),
 fasc-n-large (15),
 fasc-n-large-bcd (16),
 gsa75 (17),
 chuid (18),
 chuid-full (19),
 guid (20),
 cbeff-a (21),
 cbeff-b (22),
 cbeff-c (23),
 user-password (24)
 }
*/
