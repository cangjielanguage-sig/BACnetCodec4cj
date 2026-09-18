public package BACnetCodec4cj.BACnet.Types.Base_Types

import BACnetCodec4cj.BACnet.Enum.*

/*
--ISO_16484_5_2022_Page_900
--21.6 Base Types

BACnetCredentialAuthenticationFactor ::= SEQUENCE {
 disable [0] BACnetAccessAuthenticationFactorDisable,
 authentication-factor [1] BACnetAuthenticationFactor
 }
*/

public class CredentialAuthenticationFactor {
    private var _disable: AccessAuthenticationFactorDisable_Enum = AccessAuthenticationFactorDisable_Enum.fromUInt32(0) //[0] BACnetAccessAuthenticationFactorDisable
    private var _authentication_factor: AuthenticationFactor = AuthenticationFactor() //[1] BACnetAuthenticationFactor

    public mut prop disable: AccessAuthenticationFactorDisable_Enum {
        get() { return _disable }
        set(arg_Value) { _disable = arg_Value }
    }
    public mut prop authentication_factor: AuthenticationFactor {
        get() { return _authentication_factor }
        set(arg_Value) { _authentication_factor = arg_Value }
    }

    public init() {
    }

    public init(arg_disable: AccessAuthenticationFactorDisable_Enum, arg_authentication_factor: AuthenticationFactor) {
        this._disable = arg_disable
        this._authentication_factor = arg_authentication_factor
    }
}

