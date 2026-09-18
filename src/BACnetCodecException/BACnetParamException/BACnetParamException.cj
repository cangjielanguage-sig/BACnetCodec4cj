public package BACnetCodec4cj.BACnetCodecException.BACnetParamException
import BACnetCodec4cj.BACnetCodecException.BaseException.BACnetCodecBaseException

public class BACnetParamException <: BACnetCodecBaseException{
    public init() {
        super("BACnet参数设置错误类.BACnetParamException")
    }
    public init(message: String) {
        super(message)
    }
    public override func getClassName(): String {
        "BACnetParamException"
    }
}
