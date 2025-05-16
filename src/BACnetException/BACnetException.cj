public package BACnetCodec4cj.BACnetException

public open class Bacnet解码错误类 <: Exception {
    public init() {
        super("Bacnet解码错误类.")
    }
    public init(message: String) {
        super(message)
    }
    public open override func getClassName(): String {
        "Bacnet解码错误类"
    }
}

public open class Bacnet编码错误类 <: Exception {
    public init() {
        super("Bacnet编码错误类")
    }
    public init(message: String) {
        super(message)
    }
    public open override func getClassName(): String {
        "Bacnet编码错误类"
    }
}