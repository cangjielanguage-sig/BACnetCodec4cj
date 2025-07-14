public package BACnetCodec4cj.BACnetException

public open class BACnetDecodeErro 
<: Exception 
{
    public init() {
        super("Bacnet解码错误类.BacnetDecodeErro")
    }
    public init(message: String) {
        super(message)
    }
    public open override func getClassName(): String {
        "BacnetDecodeErro"
    }
}

public open class BACnetEncodeErro 
<: Exception 
{
    public init() {
        super("Bacnet编码错误类.BacnetEncodeErro")
    }
    public init(message: String) {
        super(message)
    }
    public open override func getClassName(): String {
        "BacnetEncodeErro"
    }
}

public open class BACnetParmErro 
<: Exception 
{
    public init() {
        super("Bacnet参数设置错误类.BACnetParmErro")
    }
    public init(message: String) {
        super(message)
    }
    public open override func getClassName(): String {
        "BACnetParmErro"
    }
}

public open class ByteBufErro 
<: Exception 
{
    public init() {
        super("缓冲错误类.ByteBufErro")
    }
    public init(message: String) {
        super(message)
    }
    public open override func getClassName(): String {
        "ByteBufErro"
    }
}