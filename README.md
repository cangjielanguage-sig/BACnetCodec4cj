# BACnetCodec4cj

BACnet 通讯协议的编码解码库，使用仓颉（Cangjie）语言编写。

BACnet 是楼宇自控、HVAC 设备领域的重要 ISO 标准通讯协议，在楼宇自动行业有着极高的使用率。
本项目仅供参考，不作为正式生产环境使用，使用时请自行核对协议确保正确性。
本项目使用 AI 辅助开发，使用时请自行核对 AI 生成内容确保正确性。

目前仅 `BACnetApplicationDatatypes` 部分的 BACnet 用户数据可实现实际编解码操作，其余部分仍在制作当中。

## 当前进展

1. **ConfirmedService**
   - 建立了多个枚举类。

2. **UnConfirmedService**
   - 建立了多个枚举类。

3. **BACnet 用户数据（BACnetApplicationDatatypes）（已全部完成）**
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
   - Enumerated
   - Date
   - Time
   - ObjectIdentifier

4. **字节缓冲类**
   - 建立字节缓冲类（ByteBuf）。
   - 建立测试用例。

5. **错误处理**
   - 建立 `BACnetError` 异常基类及 `BACnetDecodeError`、`BACnetEncodeError`、`BACnetParamError` 等子类。

## 已知限制
   `BACnet 2022 版里 21.5 Application Types 第 891 页列出了具体的用户数据类型`

   `注意，UInt64 类型在 BACnet 2022 版才开始支持，具体使用的地方不多，本库中支持到了 64 位整数，支持到了 UInt64，实际使用时请主要使用 UInt32（0..4294967295）范围内的数字，使用 UInt64 时请核对协议确保您要使用的属性确实需要使用 UInt64`

   `注意，Int 类型在 BACnet 2022 版里仅使用了 Int16，本库中使用了与 UInt 类型对称的范围，都支持到了 64 位整数，支持到了 Int64，实际使用时请使用 Int16 范围内（-32768..32767）的数字`

   `CharacterString 的字符集中，除 UTF_8 使用仓颉默认编解码外，其他字符集解码依赖 charset4cj 库，感谢 charset4cj 库各位作者大大的分享。`

   `目前 CharacterString 的 X'01' IBM/Microsoft DBCS code page xxx 的字符集是不全的，处理方法是在 charset4cj 里查找名为 cpxxx 的内码字符集，找不到时就以默认 UTF_8 做编解码。`

   `所以一般不建议使用 BACnetCharSetChoice.CodePage(UInt16)，正确性我无法保证`

   `另外，JISX0208 在 charset4cj 没找到，用的是 ISO_2022_JP 编码，不知道是不是一回事儿，没法儿验证。`

   `所以一般不建议使用 BACnetCharSetChoice.JISX0208，正确性我无法保证`

   `另外，编码时默认 UTF_8 编码，如需指定字符集编码，则需指定 BACnet_CharacterString 的 encodeCharSet 属性，若指定的内码页在 charset4cj 库里没有则会自动使用 UTF_8 编码输出`

   `字符串编解码情况实在太复杂，很容易因为字符不在字符集内等等原因抛出异常，一不小心没处理就会导致解码中断，因为字符能正常取到长度，就算解码失败也不会影响后续其他编解码，所以字符串编解码尽量不抛出异常，调用 charset4cj 库时出现异常的场景都会使用 UTF_8 来作为缺省处理，若使用 UTF_8 处理仍然异常则会返回"String Decode ERROR 字符串解码异常"`
   
## 使用说明

### 依赖

- 仓颉工具链 1.1.3（cjnative）
- [charset4cj](https://gitcode.com/Cangjie-TPC/charset4cj.git)（develop 分支）

### 构建

```bash
cjpm build
```

### 运行测试

```bash
cjpm test
```

说明：测试源与被测源码同位于 `src/` 目录下对应包目录，文件名以 `_test.cj` 结尾，由 `cjpm test` 自动发现并执行。

### 变更日志

请参阅 [CHANGELOG.md](CHANGELOG.md)。

## 未来计划

- 实现 BACnet 通讯协议的编解码。
- 实现 BACnet 通讯协议的测试用例。

## 联系方式

如果您有任何问题或建议，请联系我（杨超）：nightycd@163.com。

## 感谢

- 使用了华为云码道辅助开发，感谢华为云码道的分享。
- 使用了 cangjie-skills 库，感谢 cangjie-skills 库各位作者大大的分享。
- 使用了 charset4cj 库，感谢 charset4cj 库各位作者大大的分享。