public package BACnetCodec4cj.BACnetCodecException.DecodeException

import BACnetCodec4cj.BACnetCodecException.BaseException.BACnetCodecBaseException


public class DecodeException <: BACnetCodecBaseException {
    public init() {
        super("BACnet解码错误类.DecodeException")
    }
    public init(message: String) {
        super(message)
    }
    public override func getClassName(): String {
        "DecodeException"
    }
}