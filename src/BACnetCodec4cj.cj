package BACnetCodec4cj
//从Uint8转换至相应类型
public interface IFromUInt8<T>{
    static func 从UInt8转换而来(标签:UInt8):T 
    static func fromUInt8(tag:UInt8):T
}

//从相应类型转换至Uint8
public interface IToUInt8<T>{
    func 转换到UInt8(pdu:T):UInt8
    func toUInt8(pdu:T):UInt8
}

interface IEncodingBACnetTags {
    func encodingToPrimitiveData():Byte
    func encodingToConstructedData():Byte
}