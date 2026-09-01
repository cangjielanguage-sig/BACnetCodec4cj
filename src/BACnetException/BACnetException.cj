public package BACnetCodec4cj.BACnetException

public open class BACnetError <: Exception {
    public init() {
        super("BACnet错误基类.BACnetError")
    }
    public init(message: String) {
        super(message)
    }
    public open override func getClassName(): String {
        "BACnetError"
    }
}

public open class BACnetDecodeError <: BACnetError {
    public init() {
        super("BACnet解码错误类.BACnetDecodeError")
    }
    public init(message: String) {
        super(message)
    }
    public open override func getClassName(): String {
        "BACnetDecodeError"
    }
}

public open class BACnetEncodeError <: BACnetError {
    public init() {
        super("BACnet编码错误类.BACnetEncodeError")
    }
    public init(message: String) {
        super(message)
    }
    public open override func getClassName(): String {
        "BACnetEncodeError"
    }
}

public open class BACnetParamError <: BACnetError {
    public init() {
        super("BACnet参数设置错误类.BACnetParamError")
    }
    public init(message: String) {
        super(message)
    }
    public open override func getClassName(): String {
        "BACnetParamError"
    }
}

public open class ByteBufError <: BACnetError {
    public init() {
        super("缓冲错误类.ByteBufError")
    }
    public init(message: String) {
        super(message)
    }
    public open override func getClassName(): String {
        "ByteBufError"
    }
}
