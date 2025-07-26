package BACnetCodec4cj.InterFaces
import BACnetCodec4cj.ByteBuf.*
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

//从Uint8转换至相应类型
public interface IFromUInt16<T>{
    static func 从UInt16转换而来(标签:UInt16):T 
    static func fromUInt16(tag:UInt16):T
}

//从相应类型转换至Uint8
public interface IToUInt16{
    func 转换到UInt16():UInt16
    func toUInt16():UInt16
}

//从String转换为相应类型
public interface IFromString<T>{
    static func fromString(arg_str:String):T
}

//从ArrayByte解码
public interface ICodecFromArrayByte<T>{
    static func decodingFromArrayByte(packet:ByteBuf):T    
}

//从ArrayByte解码BACnet用户数据
public interface ICodecBACnetApplicationData<T>{
    //使用简单原语数据类型方式解码
    static func decodingPrimitiveDataFromArrayByte(packet:ByteBuf):T
    //使用带上下文标记的方式解码
    //由上下文标记预知此处出来的结果是什么类，然后预先建立该类对象，再调用该对象解码
    func decodingContextSpecificDataFromArrayByte(packet:ByteBuf):Unit
    //将对象以原语数据方式编码为字节数组，值需要预先存在对象中再调用这个函数
    func encodingToPrimitiveData():Array<Byte>
    //将对象以上下文标记的方式编码为字节数组,所需要的上下文标记号和值需要预先存在对象中再调用这个函数
    func encodingToContextSpecificData():Array<Byte>    
}

//使用构造数据的方式解码
//使用时必须预知是什么类，所以需要先建立该类对象，然后调用该对象解码
public interface IDcodingToConstructedData<T>{
    static func decodingToConstructedData(packet:ByteBuf):T
    //将对象以构造编码的方式编码为字节数组（有opening tag 和 Closing Tag标记对）
    func encodingToConstructedData(arg_tagNumber:UInt8):Array<Byte>
}

public interface IHaveDataValue<V> where V<:Equal<V>{
    mut prop dataValue:V
    
    func isDataEqual(arg_OtherData:IHaveDataValue<V>):Bool{
        return dataValue == arg_OtherData.dataValue
    }
}