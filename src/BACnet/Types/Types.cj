public package BACnetCodec4cj.BACnet.Types

import BACnetCodec4cj.BACnet.Choice.*

//所有APDU的父类
public open class BACnet_APDU {
    private var _pdu_Type: BACnet_PDU_Type_Choice = BACnet_PDU_Type_Choice.confirmed_request_pdu //[0] Unsigned (0..15), -- 0 for this PDU type
    public mut prop pdu_Type: BACnet_PDU_Type_Choice {
        get() {
            return _pdu_Type
        }
        set(arg_Value) {
            _pdu_Type = arg_Value
        }
    }

    public init() {
        //无指定则默认0,即Confirmed_Request_Pdu
        this._pdu_Type = BACnet_PDU_Type_Choice.confirmed_request_pdu
    }

    public init(pduTypeChoice: BACnet_PDU_Type_Choice) {
        //使用enum指定
        this._pdu_Type = pduTypeChoice
    }

    public init(pduTypeFromInt8: UInt8) {
        //使用int8指定
        this._pdu_Type = BACnet_PDU_Type_Choice.fromUInt8(pduTypeFromInt8)
    }
}
