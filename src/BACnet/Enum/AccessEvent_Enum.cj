public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum AccessEvent_Enum <: IFromUInt32<AccessEvent_Enum> & IToUInt32 & ToString & IFromString<AccessEvent_Enum> {
    | none // (0)
    | granted // (1)
    | muster // (2)
    | passback_detected // (3)
    | duress // (4)
    | trace // (5)
    | lockout_max_attempts // (6)
    | lockout_other // (7)
    | lockout_relinquished // (8)
    | locked_by_higher_priority // (9)
    | out_of_service // (10)
    | out_of_service_relinquished // (11)
    | accompaniment_by // (12)
    | authentication_factor_read // (13)
    | authorization_delayed // (14)
    | verification_required // (15)
    | no_entry_after_granted // (16)
    | denied_deny_all // (128)
    | denied_unknown_credential // (129)
    | denied_authentication_unavailable // (130)
    | denied_authentication_factor_timeout // (131)
    | denied_incorrect_authentication_factor // (132)
    | denied_zone_no_access_rights // (133)
    | denied_point_no_access_rights // (134)
    | denied_no_access_rights // (135)
    | denied_out_of_time_range // (136)
    | denied_threat_level // (137)
    | denied_passback // (138)
    | denied_unexpected_location_usage // (139)
    | denied_max_attempts // (140)
    | denied_lower_occupancy_limit // (141)
    | denied_upper_occupancy_limit // (142)
    | denied_authentication_factor_lost // (143)
    | denied_authentication_factor_stolen // (144)
    | denied_authentication_factor_damaged // (145)
    | denied_authentication_factor_destroyed // (146)
    | denied_authentication_factor_disabled // (147)
    | denied_authentication_factor_error // (148)
    | denied_credential_unassigned // (149)
    | denied_credential_not_provisioned // (150)
    | denied_credential_not_yet_active // (151)
    | denied_credential_expired // (152)
    | denied_credential_manual_disable // (153)
    | denied_credential_lockout // (154)
    | denied_credential_max_days // (155)
    | denied_credential_max_uses // (156)
    | denied_credential_inactivity // (157)
    | denied_credential_disabled // (158)
    | denied_no_accompaniment // (159)
    | denied_incorrect_accompaniment // (160)
    | denied_lockout // (161)
    | denied_verification_failed // (162)
    | denied_verification_timeout // (163)
    | denied_other // (164)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): AccessEvent_Enum {
        match (arg_tag) {
            case 0 => AccessEvent_Enum.none
            case 1 => AccessEvent_Enum.granted
            case 2 => AccessEvent_Enum.muster
            case 3 => AccessEvent_Enum.passback_detected
            case 4 => AccessEvent_Enum.duress
            case 5 => AccessEvent_Enum.trace
            case 6 => AccessEvent_Enum.lockout_max_attempts
            case 7 => AccessEvent_Enum.lockout_other
            case 8 => AccessEvent_Enum.lockout_relinquished
            case 9 => AccessEvent_Enum.locked_by_higher_priority
            case 10 => AccessEvent_Enum.out_of_service
            case 11 => AccessEvent_Enum.out_of_service_relinquished
            case 12 => AccessEvent_Enum.accompaniment_by
            case 13 => AccessEvent_Enum.authentication_factor_read
            case 14 => AccessEvent_Enum.authorization_delayed
            case 15 => AccessEvent_Enum.verification_required
            case 16 => AccessEvent_Enum.no_entry_after_granted
            case 128 => AccessEvent_Enum.denied_deny_all
            case 129 => AccessEvent_Enum.denied_unknown_credential
            case 130 => AccessEvent_Enum.denied_authentication_unavailable
            case 131 => AccessEvent_Enum.denied_authentication_factor_timeout
            case 132 => AccessEvent_Enum.denied_incorrect_authentication_factor
            case 133 => AccessEvent_Enum.denied_zone_no_access_rights
            case 134 => AccessEvent_Enum.denied_point_no_access_rights
            case 135 => AccessEvent_Enum.denied_no_access_rights
            case 136 => AccessEvent_Enum.denied_out_of_time_range
            case 137 => AccessEvent_Enum.denied_threat_level
            case 138 => AccessEvent_Enum.denied_passback
            case 139 => AccessEvent_Enum.denied_unexpected_location_usage
            case 140 => AccessEvent_Enum.denied_max_attempts
            case 141 => AccessEvent_Enum.denied_lower_occupancy_limit
            case 142 => AccessEvent_Enum.denied_upper_occupancy_limit
            case 143 => AccessEvent_Enum.denied_authentication_factor_lost
            case 144 => AccessEvent_Enum.denied_authentication_factor_stolen
            case 145 => AccessEvent_Enum.denied_authentication_factor_damaged
            case 146 => AccessEvent_Enum.denied_authentication_factor_destroyed
            case 147 => AccessEvent_Enum.denied_authentication_factor_disabled
            case 148 => AccessEvent_Enum.denied_authentication_factor_error
            case 149 => AccessEvent_Enum.denied_credential_unassigned
            case 150 => AccessEvent_Enum.denied_credential_not_provisioned
            case 151 => AccessEvent_Enum.denied_credential_not_yet_active
            case 152 => AccessEvent_Enum.denied_credential_expired
            case 153 => AccessEvent_Enum.denied_credential_manual_disable
            case 154 => AccessEvent_Enum.denied_credential_lockout
            case 155 => AccessEvent_Enum.denied_credential_max_days
            case 156 => AccessEvent_Enum.denied_credential_max_uses
            case 157 => AccessEvent_Enum.denied_credential_inactivity
            case 158 => AccessEvent_Enum.denied_credential_disabled
            case 159 => AccessEvent_Enum.denied_no_accompaniment
            case 160 => AccessEvent_Enum.denied_incorrect_accompaniment
            case 161 => AccessEvent_Enum.denied_lockout
            case 162 => AccessEvent_Enum.denied_verification_failed
            case 163 => AccessEvent_Enum.denied_verification_timeout
            case 164 => AccessEvent_Enum.denied_other
            case x where x <= 511 => AccessEvent_Enum.reserved(x)
            case y where y > 511 && y <= 65535 => AccessEvent_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case AccessEvent_Enum.none => 0
            case AccessEvent_Enum.granted => 1
            case AccessEvent_Enum.muster => 2
            case AccessEvent_Enum.passback_detected => 3
            case AccessEvent_Enum.duress => 4
            case AccessEvent_Enum.trace => 5
            case AccessEvent_Enum.lockout_max_attempts => 6
            case AccessEvent_Enum.lockout_other => 7
            case AccessEvent_Enum.lockout_relinquished => 8
            case AccessEvent_Enum.locked_by_higher_priority => 9
            case AccessEvent_Enum.out_of_service => 10
            case AccessEvent_Enum.out_of_service_relinquished => 11
            case AccessEvent_Enum.accompaniment_by => 12
            case AccessEvent_Enum.authentication_factor_read => 13
            case AccessEvent_Enum.authorization_delayed => 14
            case AccessEvent_Enum.verification_required => 15
            case AccessEvent_Enum.no_entry_after_granted => 16
            case AccessEvent_Enum.denied_deny_all => 128
            case AccessEvent_Enum.denied_unknown_credential => 129
            case AccessEvent_Enum.denied_authentication_unavailable => 130
            case AccessEvent_Enum.denied_authentication_factor_timeout => 131
            case AccessEvent_Enum.denied_incorrect_authentication_factor => 132
            case AccessEvent_Enum.denied_zone_no_access_rights => 133
            case AccessEvent_Enum.denied_point_no_access_rights => 134
            case AccessEvent_Enum.denied_no_access_rights => 135
            case AccessEvent_Enum.denied_out_of_time_range => 136
            case AccessEvent_Enum.denied_threat_level => 137
            case AccessEvent_Enum.denied_passback => 138
            case AccessEvent_Enum.denied_unexpected_location_usage => 139
            case AccessEvent_Enum.denied_max_attempts => 140
            case AccessEvent_Enum.denied_lower_occupancy_limit => 141
            case AccessEvent_Enum.denied_upper_occupancy_limit => 142
            case AccessEvent_Enum.denied_authentication_factor_lost => 143
            case AccessEvent_Enum.denied_authentication_factor_stolen => 144
            case AccessEvent_Enum.denied_authentication_factor_damaged => 145
            case AccessEvent_Enum.denied_authentication_factor_destroyed => 146
            case AccessEvent_Enum.denied_authentication_factor_disabled => 147
            case AccessEvent_Enum.denied_authentication_factor_error => 148
            case AccessEvent_Enum.denied_credential_unassigned => 149
            case AccessEvent_Enum.denied_credential_not_provisioned => 150
            case AccessEvent_Enum.denied_credential_not_yet_active => 151
            case AccessEvent_Enum.denied_credential_expired => 152
            case AccessEvent_Enum.denied_credential_manual_disable => 153
            case AccessEvent_Enum.denied_credential_lockout => 154
            case AccessEvent_Enum.denied_credential_max_days => 155
            case AccessEvent_Enum.denied_credential_max_uses => 156
            case AccessEvent_Enum.denied_credential_inactivity => 157
            case AccessEvent_Enum.denied_credential_disabled => 158
            case AccessEvent_Enum.denied_no_accompaniment => 159
            case AccessEvent_Enum.denied_incorrect_accompaniment => 160
            case AccessEvent_Enum.denied_lockout => 161
            case AccessEvent_Enum.denied_verification_failed => 162
            case AccessEvent_Enum.denied_verification_timeout => 163
            case AccessEvent_Enum.denied_other => 164
            case AccessEvent_Enum.reserved(x) => x
            case AccessEvent_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case AccessEvent_Enum.none => "none"
            case AccessEvent_Enum.granted => "granted"
            case AccessEvent_Enum.muster => "muster"
            case AccessEvent_Enum.passback_detected => "passback_detected"
            case AccessEvent_Enum.duress => "duress"
            case AccessEvent_Enum.trace => "trace"
            case AccessEvent_Enum.lockout_max_attempts => "lockout_max_attempts"
            case AccessEvent_Enum.lockout_other => "lockout_other"
            case AccessEvent_Enum.lockout_relinquished => "lockout_relinquished"
            case AccessEvent_Enum.locked_by_higher_priority => "locked_by_higher_priority"
            case AccessEvent_Enum.out_of_service => "out_of_service"
            case AccessEvent_Enum.out_of_service_relinquished => "out_of_service_relinquished"
            case AccessEvent_Enum.accompaniment_by => "accompaniment_by"
            case AccessEvent_Enum.authentication_factor_read => "authentication_factor_read"
            case AccessEvent_Enum.authorization_delayed => "authorization_delayed"
            case AccessEvent_Enum.verification_required => "verification_required"
            case AccessEvent_Enum.no_entry_after_granted => "no_entry_after_granted"
            case AccessEvent_Enum.denied_deny_all => "denied_deny_all"
            case AccessEvent_Enum.denied_unknown_credential => "denied_unknown_credential"
            case AccessEvent_Enum.denied_authentication_unavailable => "denied_authentication_unavailable"
            case AccessEvent_Enum.denied_authentication_factor_timeout => "denied_authentication_factor_timeout"
            case AccessEvent_Enum.denied_incorrect_authentication_factor => "denied_incorrect_authentication_factor"
            case AccessEvent_Enum.denied_zone_no_access_rights => "denied_zone_no_access_rights"
            case AccessEvent_Enum.denied_point_no_access_rights => "denied_point_no_access_rights"
            case AccessEvent_Enum.denied_no_access_rights => "denied_no_access_rights"
            case AccessEvent_Enum.denied_out_of_time_range => "denied_out_of_time_range"
            case AccessEvent_Enum.denied_threat_level => "denied_threat_level"
            case AccessEvent_Enum.denied_passback => "denied_passback"
            case AccessEvent_Enum.denied_unexpected_location_usage => "denied_unexpected_location_usage"
            case AccessEvent_Enum.denied_max_attempts => "denied_max_attempts"
            case AccessEvent_Enum.denied_lower_occupancy_limit => "denied_lower_occupancy_limit"
            case AccessEvent_Enum.denied_upper_occupancy_limit => "denied_upper_occupancy_limit"
            case AccessEvent_Enum.denied_authentication_factor_lost => "denied_authentication_factor_lost"
            case AccessEvent_Enum.denied_authentication_factor_stolen => "denied_authentication_factor_stolen"
            case AccessEvent_Enum.denied_authentication_factor_damaged => "denied_authentication_factor_damaged"
            case AccessEvent_Enum.denied_authentication_factor_destroyed => "denied_authentication_factor_destroyed"
            case AccessEvent_Enum.denied_authentication_factor_disabled => "denied_authentication_factor_disabled"
            case AccessEvent_Enum.denied_authentication_factor_error => "denied_authentication_factor_error"
            case AccessEvent_Enum.denied_credential_unassigned => "denied_credential_unassigned"
            case AccessEvent_Enum.denied_credential_not_provisioned => "denied_credential_not_provisioned"
            case AccessEvent_Enum.denied_credential_not_yet_active => "denied_credential_not_yet_active"
            case AccessEvent_Enum.denied_credential_expired => "denied_credential_expired"
            case AccessEvent_Enum.denied_credential_manual_disable => "denied_credential_manual_disable"
            case AccessEvent_Enum.denied_credential_lockout => "denied_credential_lockout"
            case AccessEvent_Enum.denied_credential_max_days => "denied_credential_max_days"
            case AccessEvent_Enum.denied_credential_max_uses => "denied_credential_max_uses"
            case AccessEvent_Enum.denied_credential_inactivity => "denied_credential_inactivity"
            case AccessEvent_Enum.denied_credential_disabled => "denied_credential_disabled"
            case AccessEvent_Enum.denied_no_accompaniment => "denied_no_accompaniment"
            case AccessEvent_Enum.denied_incorrect_accompaniment => "denied_incorrect_accompaniment"
            case AccessEvent_Enum.denied_lockout => "denied_lockout"
            case AccessEvent_Enum.denied_verification_failed => "denied_verification_failed"
            case AccessEvent_Enum.denied_verification_timeout => "denied_verification_timeout"
            case AccessEvent_Enum.denied_other => "denied_other"
            case AccessEvent_Enum.reserved(x) => "reserved_${x}"
            case AccessEvent_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): AccessEvent_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "none" => AccessEvent_Enum.none
            case "granted" => AccessEvent_Enum.granted
            case "muster" => AccessEvent_Enum.muster
            case "passback_detected" => AccessEvent_Enum.passback_detected
            case "duress" => AccessEvent_Enum.duress
            case "trace" => AccessEvent_Enum.trace
            case "lockout_max_attempts" => AccessEvent_Enum.lockout_max_attempts
            case "lockout_other" => AccessEvent_Enum.lockout_other
            case "lockout_relinquished" => AccessEvent_Enum.lockout_relinquished
            case "locked_by_higher_priority" => AccessEvent_Enum.locked_by_higher_priority
            case "out_of_service" => AccessEvent_Enum.out_of_service
            case "out_of_service_relinquished" => AccessEvent_Enum.out_of_service_relinquished
            case "accompaniment_by" => AccessEvent_Enum.accompaniment_by
            case "authentication_factor_read" => AccessEvent_Enum.authentication_factor_read
            case "authorization_delayed" => AccessEvent_Enum.authorization_delayed
            case "verification_required" => AccessEvent_Enum.verification_required
            case "no_entry_after_granted" => AccessEvent_Enum.no_entry_after_granted
            case "denied_deny_all" => AccessEvent_Enum.denied_deny_all
            case "denied_unknown_credential" => AccessEvent_Enum.denied_unknown_credential
            case "denied_authentication_unavailable" => AccessEvent_Enum.denied_authentication_unavailable
            case "denied_authentication_factor_timeout" => AccessEvent_Enum.denied_authentication_factor_timeout
            case "denied_incorrect_authentication_factor" => AccessEvent_Enum.denied_incorrect_authentication_factor
            case "denied_zone_no_access_rights" => AccessEvent_Enum.denied_zone_no_access_rights
            case "denied_point_no_access_rights" => AccessEvent_Enum.denied_point_no_access_rights
            case "denied_no_access_rights" => AccessEvent_Enum.denied_no_access_rights
            case "denied_out_of_time_range" => AccessEvent_Enum.denied_out_of_time_range
            case "denied_threat_level" => AccessEvent_Enum.denied_threat_level
            case "denied_passback" => AccessEvent_Enum.denied_passback
            case "denied_unexpected_location_usage" => AccessEvent_Enum.denied_unexpected_location_usage
            case "denied_max_attempts" => AccessEvent_Enum.denied_max_attempts
            case "denied_lower_occupancy_limit" => AccessEvent_Enum.denied_lower_occupancy_limit
            case "denied_upper_occupancy_limit" => AccessEvent_Enum.denied_upper_occupancy_limit
            case "denied_authentication_factor_lost" => AccessEvent_Enum.denied_authentication_factor_lost
            case "denied_authentication_factor_stolen" => AccessEvent_Enum.denied_authentication_factor_stolen
            case "denied_authentication_factor_damaged" => AccessEvent_Enum.denied_authentication_factor_damaged
            case "denied_authentication_factor_destroyed" => AccessEvent_Enum.denied_authentication_factor_destroyed
            case "denied_authentication_factor_disabled" => AccessEvent_Enum.denied_authentication_factor_disabled
            case "denied_authentication_factor_error" => AccessEvent_Enum.denied_authentication_factor_error
            case "denied_credential_unassigned" => AccessEvent_Enum.denied_credential_unassigned
            case "denied_credential_not_provisioned" => AccessEvent_Enum.denied_credential_not_provisioned
            case "denied_credential_not_yet_active" => AccessEvent_Enum.denied_credential_not_yet_active
            case "denied_credential_expired" => AccessEvent_Enum.denied_credential_expired
            case "denied_credential_manual_disable" => AccessEvent_Enum.denied_credential_manual_disable
            case "denied_credential_lockout" => AccessEvent_Enum.denied_credential_lockout
            case "denied_credential_max_days" => AccessEvent_Enum.denied_credential_max_days
            case "denied_credential_max_uses" => AccessEvent_Enum.denied_credential_max_uses
            case "denied_credential_inactivity" => AccessEvent_Enum.denied_credential_inactivity
            case "denied_credential_disabled" => AccessEvent_Enum.denied_credential_disabled
            case "denied_no_accompaniment" => AccessEvent_Enum.denied_no_accompaniment
            case "denied_incorrect_accompaniment" => AccessEvent_Enum.denied_incorrect_accompaniment
            case "denied_lockout" => AccessEvent_Enum.denied_lockout
            case "denied_verification_failed" => AccessEvent_Enum.denied_verification_failed
            case "denied_verification_timeout" => AccessEvent_Enum.denied_verification_timeout
            case "denied_other" => AccessEvent_Enum.denied_other
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => AccessEvent_Enum.reserved(x)
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
                        case Some(x) => AccessEvent_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_892
--21.6 Base Types

BACnetAccessEvent ::= ENUMERATED {
 none (0),
 granted (1),
 muster (2),
 passback-detected (3),
 duress (4),
 trace (5),
 lockout-max-attempts (6),
 lockout-other (7),
 lockout-relinquished (8),
 locked-by-higher-priority (9),
 out-of-service (10),
 out-of-service-relinquished (11),
 accompaniment-by (12),
 authentication-factor-read (13),
 authorization-delayed (14),
 verification-required (15),
 no-entry-after-granted (16),
 -- Enumerated values 128-511 are used for events which indicate that access has been denied.
 denied-deny-all (128),
 denied-unknown-credential (129),
 denied-authentication-unavailable (130),
 denied-authentication-factor-timeout (131),
 denied-incorrect-authentication-factor (132),
 denied-zone-no-access-rights (133),
 denied-point-no-access-rights (134),
 denied-no-access-rights (135),
 denied-out-of-time-range (136),
 denied-threat-level (137),
 denied-passback (138),
 denied-unexpected-location-usage (139),
 denied-max-attempts (140),
 denied-lower-occupancy-limit (141),
 denied-upper-occupancy-limit (142),
 denied-authentication-factor-lost (143),
 denied-authentication-factor-stolen (144),
 denied-authentication-factor-damaged (145),
 denied-authentication-factor-destroyed (146),
 denied-authentication-factor-disabled (147),
 denied-authentication-factor-error (148),
 denied-credential-unassigned (149),
 denied-credential-not-provisioned (150),
 denied-credential-not-yet-active (151),
 denied-credential-expired (152),
 denied-credential-manual-disable (153),
 denied-credential-lockout (154),
 denied-credential-max-days (155),
 denied-credential-max-uses (156),
 denied-credential-inactivity (157),
 denied-credential-disabled (158),
 denied-no-accompaniment (159),
 denied-incorrect-accompaniment (160),
 denied-lockout (161),
 denied-verification-failed (162),
 denied-verification-timeout (163),
 denied-other (164),
 ...
 }
 -- Enumerated values 0-511 are reserved for definition by ASHRAE. Enumerated values
 -- 512-65535 may be used by others subject to the procedures and constraints described
 -- in Clause 23.
--ISO_16484_5_2022_Page_893
*/
