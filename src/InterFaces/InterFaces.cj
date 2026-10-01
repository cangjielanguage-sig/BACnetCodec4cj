package BACnetCodec4cj.InterFaces

import BACnetCodec4cj.Utility.ByteBuf.ByteBuf

//Convert UInt8 to the corresponding type
public interface IFromUInt8<T> {
    static func fromUInt8(tag: UInt8): T
}

//Convert the corresponding type to UInt8
public interface IToUInt8 {
    func toUInt8(): UInt8
}

//Convert UInt16 to the corresponding type
public interface IFromUInt16<T> {
    static func fromUInt16(tag: UInt16): T
}

//Convert the corresponding type to UInt16
public interface IToUInt16 {
    func toUInt16(): UInt16
}

//Convert UInt32 to the corresponding type
public interface IFromUInt32<T> {
    static func fromUInt32(tag: UInt32): T
}

//Convert the corresponding type to UInt32
public interface IToUInt32 {
    func toUInt32(): UInt32
}

//从String转换为相应类型
public interface IFromString<T> {
    static func fromString(arg_str: String): T
}

//从ArrayByte解码
public interface ICodecFromArrayByte<T> {
    static func decodingFromArrayByte(packet: ByteBuf): T
    //将对象编码为字节数组
    func encodingToBytes(): Array<Byte>
}

//使用原语类型方式编解码BACnet用户数据的原始结构
//BACnet标准中,PrimitiveData原本是用于原始数据类型的术语
//但是我这里扩大化了,也把Constructed Data的本体（即不包含OpenTag/CloseTag对的数据本体）的编解码
//也归入了PrimitiveData的范畴
public interface ICodecPrimitiveData<T> {
    //使用简单原语数据类型方式解码
    //或解码Constructed Data的本体
    static func decodingPrimitiveDataFromArrayByte(packet: ByteBuf): T
    //将对象以原语数据方式编码为字节数组，值需要预先存在对象中再调用这个函数
    //编码Constructed Data的本体
    func encodingToPrimitiveData(): Array<Byte>
}

//使用上下文标记方式编解码BACnet用户数据
public interface ICodecContextSpecificData<T> {
    //使用带上下文标记的方式解码
    static func decodingContextSpecificDataFromArrayByte(packet: ByteBuf,arg_tagNumber: UInt8): T
    //将对象以上下文标记的方式编码为字节数组，所需要的上下文标记号和值需要预先存在对象中再调用这个函数
    func encodingToContextSpecificData(): Array<Byte>
}

//使用构造数据的方式解码
public interface IDcodingToConstructedData<T> {
    static func decodingToConstructedData(packet: ByteBuf): T
    //将对象以构造编码的方式编码为字节数组（有opening tag 和 Closing Tag标记对）
    func encodingToConstructedData(): Array<Byte>
}

public interface IHaveDataValue<V> where V <: Equal<V> {
    mut prop dataValue: V

    func isDataEqual(arg_OtherData: IHaveDataValue<V>): Bool {
        return dataValue == arg_OtherData.dataValue
    }
}

public interface IHaveTag{
    mut prop tagNumber: UInt8
    mut prop tagClass: BACnet_TagClass_Enum
    mut prop tagLength: UInt32 
}
