# BACnetCodec

BACnet通讯协议的编码解码库。  
BACnet是楼宇自控、HVAC设备领域的重要ISO标准通讯协议，在楼宇自动行业有着极高的使用率。

目前本项目还在制作当中。

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

4. ​**字节缓冲类**​
   - 建立字节缓冲类
   - 建立测试用例

5. ​**错误处理**​
   - 建立了报错类