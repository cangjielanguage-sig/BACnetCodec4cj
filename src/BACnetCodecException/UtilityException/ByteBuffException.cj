public package BACnetCodec4cj.BACnetCodecException.UtilityException

import BACnetCodec4cj.BACnetCodecException.BaseException.BACnetCodecBaseException

public class ByteBufException <: BACnetCodecBaseException {
    public init() {
        super("缓冲错误类.ByteBufException")
    }
    public init(message: String) {
        super(message)
    }
    public override func getClassName(): String {
        "ByteBufException"
    }
}

