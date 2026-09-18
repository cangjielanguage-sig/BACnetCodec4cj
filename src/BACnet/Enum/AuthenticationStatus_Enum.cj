public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum AuthenticationStatus_Enum <: IFromUInt32<AuthenticationStatus_Enum> & IToUInt32 & ToString & IFromString<AuthenticationStatus_Enum> {
    | not_ready // (0)
    | ready // (1)
    | disabled // (2)
    | waiting_for_authentication_factor // (3)
    | waiting_for_accompaniment // (4)
    | waiting_for_verification // (5)
    | in_progress // (6)

    public static func fromUInt32(arg_tag: UInt32): AuthenticationStatus_Enum {
        match (arg_tag) {
            case 0 => AuthenticationStatus_Enum.not_ready
            case 1 => AuthenticationStatus_Enum.ready
            case 2 => AuthenticationStatus_Enum.disabled
            case 3 => AuthenticationStatus_Enum.waiting_for_authentication_factor
            case 4 => AuthenticationStatus_Enum.waiting_for_accompaniment
            case 5 => AuthenticationStatus_Enum.waiting_for_verification
            case 6 => AuthenticationStatus_Enum.in_progress
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case AuthenticationStatus_Enum.not_ready => 0
            case AuthenticationStatus_Enum.ready => 1
            case AuthenticationStatus_Enum.disabled => 2
            case AuthenticationStatus_Enum.waiting_for_authentication_factor => 3
            case AuthenticationStatus_Enum.waiting_for_accompaniment => 4
            case AuthenticationStatus_Enum.waiting_for_verification => 5
            case AuthenticationStatus_Enum.in_progress => 6
        }
    }

    public func toString(): String {
        match (this) {
            case AuthenticationStatus_Enum.not_ready => "not_ready"
            case AuthenticationStatus_Enum.ready => "ready"
            case AuthenticationStatus_Enum.disabled => "disabled"
            case AuthenticationStatus_Enum.waiting_for_authentication_factor => "waiting_for_authentication_factor"
            case AuthenticationStatus_Enum.waiting_for_accompaniment => "waiting_for_accompaniment"
            case AuthenticationStatus_Enum.waiting_for_verification => "waiting_for_verification"
            case AuthenticationStatus_Enum.in_progress => "in_progress"
        }
    }

    public static func fromString(arg_str: String): AuthenticationStatus_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "not_ready" => AuthenticationStatus_Enum.not_ready
            case "ready" => AuthenticationStatus_Enum.ready
            case "disabled" => AuthenticationStatus_Enum.disabled
            case "waiting_for_authentication_factor" => AuthenticationStatus_Enum.waiting_for_authentication_factor
            case "waiting_for_accompaniment" => AuthenticationStatus_Enum.waiting_for_accompaniment
            case "waiting_for_verification" => AuthenticationStatus_Enum.waiting_for_verification
            case "in_progress" => AuthenticationStatus_Enum.in_progress
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_898
--21.6 Base Types

BACnetAuthenticationStatus ::= ENUMERATED {
 not-ready (0),
 ready (1),
 disabled (2),
 waiting-for-authentication-factor (3),
 waiting-for-accompaniment (4),
 waiting-for-verification (5),
 in-progress (6)
 }
*/
