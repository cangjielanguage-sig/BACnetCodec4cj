public package BACnetCodec4cj
import std.convert

public func printArrayAsFormat(arg_array:Array<Byte>,formatStr:String){
    for(bitem in arg_array){
        print("${bitem.format(formatStr)}, ")
    }
    println()
}