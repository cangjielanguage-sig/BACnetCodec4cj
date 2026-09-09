public package BACnetCodec4cj.BACnetCodecException.BaseException

public open class BACnetCodecBaseException <: Exception {
    public init() {
        super("BACnet错误基类.BACnetCodecBaseException")
    }
    public init(message: String) {
        super(message)
    }
    public open override func getClassName(): String {
        "BACnetCodecBaseException"
    }
}

