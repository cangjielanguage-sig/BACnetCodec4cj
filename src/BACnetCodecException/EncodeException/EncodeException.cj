public package BACnetCodec4cj.BACnetCodecException.EncodeException

import BACnetCodec4cj.BACnetCodecException.BaseException.BACnetCodecBaseException

public class EncodeException <: BACnetCodecBaseException {
    public init() {
        super("BACnet编码错误类.EncodeException")
    }
    public init(message: String) {
        super(message)
    }
    public override func getClassName(): String {
        "EncodeException"
    }
}
