package BACnetCodec4cj.InterFaces
//从Uint8转换至相应类型
public interface IFromUInt8<T>{
    static func 从UInt8转换而来(标签:UInt8):T 
    static func fromUInt8(tag:UInt8):T
}

//从相应类型转换至Uint8
public interface IToUInt8{
    func 转换到UInt8():UInt8
    func toUInt8():UInt8
}

public interface IEncodingBACnetTags {
    func encodingToPrimitiveData():Array<Byte>
    func encodingToConstructedData():Array<Byte>
}