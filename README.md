# BACnetCodec4cj

BACnet 通讯协议的编码解码库，使用仓颉（Cangjie）语言编写。

BACnet 是楼宇自控、HVAC 设备领域的重要 ISO 标准通讯协议，在楼宇自动行业有着极高的使用率。
本项目仅供参考，不作为正式生产环境使用，使用时请自行核对协议确保正确性。
本项目使用 AI 辅助开发，使用时请自行核对 AI 生成内容确保正确性。

目前 `BACnetApplicationDatatypes`（13 种 BACnet 用户数据类型）的编解码已可用；`BACnet ASN.1 CHOICE`（31 个）与 `ENUMERATED`（73 个）枚举已全量建立（分别位于 `src/BACnet/Choice/` 与 `src/BACnet/Enum/`，命名统一追加 `_Choice`/`_Enum` 后缀）；`BACnet ASN.1 SEQUENCE`（126 个）类骨架已按章节生成至 `src/BACnet/Types/`（当前仅字段/prop/init 结构，编解码与枚举转换待后续实现）。

## 当前进展

1. **ConfirmedService / UnConfirmedService**
   - 建立了 Confirm 与 Unconfirmed 服务类型枚举。

2. **BACnet 用户数据（BACnetApplicationDatatypes）（已全部完成）**
   已实现以下 13 种格式的编解码函数（已可用），并建立测试用例：
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

3. **字节缓冲类（ByteBuf）**
   - 建立字节缓冲类，支撑各类编解码操作。
   - 建立测试用例。

4. **异常处理（BACnetCodecException）**
   - 建立异常基类及子类：`DecodeException`、`EncodeException`、`BACnetParamException`、`ByteBuffException` 等，分层组织于 `src/BACnetCodecException/` 下各子包。

5. **枚举与 Choice**
   - 依据 ISO 16484-5:2022 协议第 21 章（FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS）原文，全量建立 **31 个 ASN.1 CHOICE**（`src/BACnet/Choice/`，类名末尾 `_Choice`）与 **73 个 ASN.1 ENUMERATED** 枚举（`src/BACnet/Enum/`，类名末尾 `_Enum`）。
   - 命名规范化：去掉 `BACnet`/`Choice` 冗余前缀、连接符 `-` 统一替换为 `_`、成员名 snake_case。
   - 依据协议原文保留 `reserved(x)` / `non_standardized(x)` 边界（如 `AbortReason` `<=63` reserved、`64..255` non_standardized；`ObjectType` `<=127`/`128..1023`；`PropertyIdentifier` `<=511`/`512..4194303`），`formerly` 标注的已删除服务/成员保留旧值作兼容（如 `ConfirmedService` 的 `authenticate(24)` 等）。
   - 覆盖 `PropertyIdentifier` 属性标识符（462 个属性）、`EngineeringUnits` 工程单位（267 个）、`ObjectType` 对象类型等。
   - 各定义文件底部附完整 ISO 16484-5:2022 协议原文注释（Page 标记 + 章节标题 + 定义块 + `}` 后所有 `--` 注释）。

6. **SEQUENCE 类骨架**
   - 依据协议第 21 章原文，全量提取 **126 个 ASN.1 SEQUENCE** 定义，在 `src/BACnet/Types/` 下按章节建立文件夹，每个类型一个 `.cj` 文件（`private var` 字段 + `public mut prop` 访问器 + 默认/带参 init），附完整协议原文注释。
   - 分布：`APDU_Definitions/`（8 个 PDU，继承 `BACnet_APDU`）、`Confirmed_Service_Productions/`（5 个子章节，共 37 个）、`Unconfirmed_Service_Productions/`（3 个子章节，共 13 个）、`Error_Productions/`（6 个）、`Base_Types/`（约 62 个）。
   - 命名去 `BACnet` 前缀、`-`→`_`、字段 snake_case（Types 目录不加 `_Choice`/`_Enum` 后缀）；引用 Choice/Enum 分别写作 `Xxx_Choice`/`Xxx_Enum`；嵌套 CHOICE/SEQUENCE 不展开；字段编解码与枚举/字符转换逻辑待后续实现。

## 项目结构

- `src/BACnetCodec4cj.cj` —— 根包公开门面，调用者只需 `import BACnetCodec4cj.*`
- `src/BACnet/` —— 协议相关定义
  - `BACnet.cj` —— BACnet 包门面（re-export Choice/Enum/Types）
  - `Choice/` —— ASN.1 CHOICE 及编码层枚举（31 个 CHOICE + `CharSet_Choice`/`TagClass_Choice`，共 33 个，类名末尾统一追加 `_Choice`；`BACnet_PDU_Type_Choice` 为 PDU 类型特殊命名）
  - `Enum/` —— ASN.1 ENUMERATED 枚举（73 个，类名末尾统一追加 `_Enum`，如 `AbortReason_Enum`、`ObjectType_Enum`、`PropertyIdentifier_Enum`、`ConfirmedService_Enum`）
  - `Types/` —— 数据类型与 PDU
    - `APDU_Definitions/` —— APDU 定义（`BACnet_APDU` 及其 8 个 PDU 子类，如 `Confirmed_Request_Pdu`）
    - `ApplicationTypes/` —— `ApplicationTags`（应用 tag 编号）、`BACnetApplicationDatatypes` 及 13 种数据类型
    - `Confirmed_Service_Productions/` —— 已确认服务（5 个子章节目录：Alarm_and_Event / File_Access / Object_Access / Remote_Device_Management / Virtual_Terminal 等 Services）
    - `Unconfirmed_Service_Productions/` —— 未确认服务（3 个子章节目录：Alarm_and_Event / Object_Access / Remote_Device_Management Services）
    - `Error_Productions/` —— 错误结构
    - `Base_Types/` —— 基础类型（21.6）
- `src/BACnetCodecException/` —— 异常类（BaseException / DecodeException / EncodeException / BACnetParamException / UtilityException 等子包）
- `src/InterFaces/` —— 编解码接口定义（`IFromUInt8`、`IToUInt8`、`IFromUInt32`、`IToUInt32`、`IFromString`、`ICodecPrimitiveData` 等）
- `src/Utility/` —— 辅助工具类（含 `ByteBuf/` 字节缓冲类）

## 已知限制
   `BACnet 2022 版里 21.5 Application Types 第 891 页列出了具体的用户数据类型`

   `注意，UInt64 类型在 BACnet 2022 版才开始支持，具体使用的地方不多，本库中支持到了 64 位整数，支持到了 UInt64，实际使用时请主要使用 UInt32（0..4294967295）范围内的数字，使用 UInt64 时请核对协议确保您要使用的属性确实需要使用 UInt64`

   `注意，Int 类型在 BACnet 2022 版里仅使用了 Int16，本库中使用了与 UInt 类型对称的范围，都支持到了 64 位整数，支持到了 Int64，实际使用时请使用 Int16 范围内（-32768..32767）的数字`

   `CharacterString 的字符集中，除 UTF_8 使用仓颉默认编解码外，其他字符集解码依赖 charset4cj 库，感谢 charset4cj 库各位作者大大的分享。`

   `目前 CharacterString 的 X'01' IBM/Microsoft DBCS code page xxx 的字符集是不全的，处理方法是在 charset4cj 里查找名为 cpxxx 的内码字符集，找不到时就以默认 UTF_8 做编解码。`

   `所以一般不建议使用 CharSet_Choice.CodePage(UInt16)，正确性我无法保证`

   `另外，JISX0208 在 charset4cj 没找到，用的是 ISO_2022_JP 编码，不知道是不是一回事儿，没法儿验证。`

   `所以一般不建议使用 CharSet_Choice.JISX0208，正确性我无法保证`

   `另外，编码时默认 UTF_8 编码，如需指定字符集编码，则需指定 BACnet_CharacterString 的 encodeCharSet 属性，若指定的内码页在 charset4cj 库里没有则会自动使用 UTF_8 编码输出`

   `字符串编解码情况实在太复杂，很容易因为字符不在字符集内等等原因抛出异常，一不小心没处理就会导致解码中断，因为字符能正常取到长度，就算解码失败也不会影响后续其他编解码，所以字符串编解码尽量不抛出异常，调用 charset4cj 库时出现异常的场景都会使用 UTF_8 来作为缺省处理，若使用 UTF_8 处理仍然异常则会返回"String Decode ERROR 字符串解码异常"`

## 使用说明

### 依赖

- 仓颉工具链 1.1.3（cjnative）
- [charset4cj](https://gitcode.com/Cangjie-TPC/charset4cj.git)（tag `v1.0.5`）

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