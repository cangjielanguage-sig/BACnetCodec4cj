public package BACnetCodec4cj.Types

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetException.*
import BACnetCodec4cj.Choice.*

//所有APDU的父类
public open class BACnet_APDU {
    private var _pdu_Type: BACnet_PDUTypeChoice = BACnet_PDUTypeChoice.Confirmed_Request_Pdu //[0] Unsigned (0..15), -- 0 for this PDU type
    public mut prop pdu_Type: BACnet_PDUTypeChoice {
        get() {
            return _pdu_Type
        }
        set(arg_Value) {
            _pdu_Type = arg_Value
        }
    }

    public init() {
        //无指定则默认0,即Confirmed_Request_Pdu
        this._pdu_Type = BACnet_PDUTypeChoice.Confirmed_Request_Pdu
    }

    public init(pduTypeChoice: BACnet_PDUTypeChoice) {
        //使用enum指定
        this._pdu_Type = pduTypeChoice
    }

    public init(pduTypeFromInt8: UInt8) {
        //使用int8指定
        this._pdu_Type = BACnet_PDUTypeChoice.fromUInt8(pduTypeFromInt8)
    }
}
