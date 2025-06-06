package BACnetCodec4cj.ByteBuff

public class ByteBuff {
    private var 数据缓存:Array<Byte>
    private var 游标:Int64 = 0
    public init(){
        数据缓存 = Array<Byte>(0, item: 0);
    }

    public init(数据:Array<Byte>,数据长度:Int64){
        数据缓存 = 数据[..数据长度]
    }

    public func read_1_ByteFromBuff():Byte{
        let 返回值 = 数据缓存[游标]
        游标+=1
        return 返回值
    }
}