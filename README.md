# BACnetCodec

BACnet通讯协议的编码解码库。  
BACnet是楼宇自控、HVAC设备领域的重要ISO标准通讯协议，在楼宇自动行业有着极高的使用率。

目前本项目还在制作当中。仅有BACnetApplicationDatatypes部分BACnet用户数据可实现实际编解码操作。

## 当前进展

1. ​**ConfirmedService**​
   - 建立了多个枚举类
   
2. ​**UnConfirmedService**​
   - 建立了多个枚举类
   
3. ​**BACnet用户数据 (BACnetApplicationDatatypes)​**​  
   已实现以下格式的编解码函数（已可用），并建立测试用例：
   - Null
   - Boolean
   - UnsignedInteger
   - SignedInteger
   - Real
   - Double
   - OctetString
   - CharacterString
   - BitString

`CharacterString的字符集中，除UTF_8使用仓颉默认编解码外，其他字符集解码依赖charset4cj库，感谢charset4cj库各位作者大大的分享。`

`目前CharacterString的X'01' IBM/Microsoft DBCS  code pagexxx 的字符集是不全的，处理方法是在charset4cj里查找名为cpxxx的内码字符集，找不到时就以默认UTF_8做编解码。`

`所以一般不建议使用BacnetCharSetChoice.CodePage(UInt16)，正确性我无法保证`

`另外，JISX0208在charset4cj没找到，用的是ISO_2022_JP编码，不知道是不是一回事儿，没法儿验证。`

`所以一般不建议使用BacnetCharSetChoice.JISX0208，正确性我无法保证`

`另外，编码时默认UTF_8编码，如需指定字符集编码，则需指定BACnet_CharacterString的encodeCharSet属性，若指定的内码页在charset4cj库里没有则会自动使用UTF_8编码输出`

`字符串编解码情况实在太复杂，很容易因为字符不在字符集内等等原因抛出异常，一不小心没处理就会导致解码中断，因为字符能正常取到长度，就算解码失败也不会影响后续其他编解码，所以字符串编解码尽量不抛出异常，调用charset4cj库时出现异常的场景都会使用UTF_8来作为缺省处理`

4. ​**字节缓冲类**​
   - 建立字节缓冲类
   - 建立测试用例

5. ​**错误处理**​
   - 建立了报错类