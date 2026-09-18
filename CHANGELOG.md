# Changelog

本项目所有重要变更均记录于此。条目依据 git 提交历史（`git log`）整理，格式参照 [Keep a Changelog](https://keepachangelog.com/zh-CN/1.1.0/) 与语义化版本。每个变更章节包含「摘要」（背景、改动内容与影响）与「改动文件」清单。

---

## [0.5.0] - 2026-09-18 — SEQUENCE 全量生成骨架与 unused import 清理

### 摘要
依据 ISO 16484-5:2022 协议第 21 章原文，全量提取 126 个 `::= SEQUENCE` 定义，在 `src/BACnet/Types/` 下按章节名建立文件夹，将相应章节的 SEQUENCE 分别放入，每个类型一个 `.cj` 文件；文件内先只放类骨架（`private var` 字段 + `public mut prop` 访问器 + 默认/带参 init，不写枚举与字符转换函数），并附完整协议原文注释。同时修复 `Error_Productions ↔ Base_Types` 协议固有循环依赖，去除全部 unused import。版本号由 0.4.0 提升至 0.5.0。

### 变更明细

#### Added
- **126 个 ASN.1 SEQUENCE 类骨架**：新增至 `src/BACnet/Types/` 下按章节划分的目录中：
  - `APDU_Definitions/`（21.1，8 个 PDU）
  - `Confirmed_Service_Productions/` 下 5 个子章节目录（21.2.1~21.2.5，共 37 个）
  - `Unconfirmed_Service_Productions/` 下 3 个子章节目录（21.3.1~21.3.3，共 13 个）
  - `Error_Productions/`（21.4，6 个）
  - `Base_Types/`（21.6，约 62 个）

#### Changed
- **命名**：类名/文件名去掉 `BACnet` 前缀、连接符 `-`→`_`、字段 snake_case；`BACnetXxx` 且去前缀后为 std 冲突词（如 `DateTime`）者保留 `BACnet` 前缀。Types 目录不追加 `_Choice`/`_Enum` 后缀。
- **PDU 继承**：21.1 的 PDU 类统一 `<: BACnet_APDU`。
- **字段类型映射**：`BACnet` 前缀类型优先映射 Choice/Enum（`_Choice`/`_Enum`），裸名优先映射 SEQUENCE 类；`Date`/`Time` 映射 `BACnet_Date`/`BACnet_Time`（而非 std `DateTime`）；Enum/Choice 字段默认值用 `fromUInt32(0)`/`fromUInt8(0)`；`NULL`→`UInt8`；复杂 CHOICE/SEQUENCE 内联不展开（占位 `UInt8`）。
- **按需 import**：生成文件的 import 改为根据字段实际引用按需追加，不再无条件导入 Choice/Enum/std.time/ApplicationTypes。

#### Fixed
- **循环依赖**：`Error_Productions ↔ Base_Types` 为协议固有交叉引用，通过将 `Base_Types` 作为叶子包（其跨包引用字段降级为 `UInt8`）打破。
- **unused import 清理**：去除 `Choice/`、`Enum/` 下 52 个文件中未使用的 `import std.convert.*`；异常类 `getClassName` 去除子类冗余 `open`（保留父类 `open override`）。

### 改动文件
- 新增 `src/BACnet/Types/` 下 126 个 SEQUENCE 类文件（分布于 `APDU_Definitions/`、`Confirmed_Service_Productions/*/`、`Unconfirmed_Service_Productions/*/`、`Error_Productions/`、`Base_Types/`）
- 修改 `src/BACnet/Types/APDU_Definitions/Confirmed_Request_Pdu.cj`（恢复 `<: BACnet_APDU` 继承）
- 修改 `src/BACnet/Choice/`、`src/BACnet/Enum/` 下 52 个文件（去未使用 `std.convert.*`）
- 修改 `src/BACnetCodecException/` 下异常类（去除子类冗余 `open`）
- 修改 `cjpm.toml`（版本 0.4.0→0.5.0）

---

## [0.4.0] - 2026-09-12 — ENUMERATED 全量生成与 Choice/Enum 后缀规范化

### 摘要
依据 ISO 16484-5:2022 协议第 21 章原文，全量生成 73 个 ASN.1 ENUMERATED 枚举至 `src/BACnet/Enum/`（去 `BACnet`/`Choice` 前缀、成员 snake_case、统一 `IFromUInt32`/`IToUInt32`/`ToString`/`IFromString` 接口，按协议边界保留 `reserved`/`non_standardized`，`formerly` 删除项给出兼容值，仓颉关键字用反引号转义，注释块完整包含 `}` 之后的所有 `--` 原文）。同时为 `src/BACnet/Choice/` 与 `src/BACnet/Enum/` 下所有文件/类名统一追加 `_Choice`/`_Enum` 后缀，并修复 Types 包重构遗留的循环依赖。版本号由 0.3.0 提升至 0.4.0。

### 变更明细

#### Added
- **73 个 ASN.1 ENUMERATED 枚举**：新增至 `src/BACnet/Enum/`（package `BACnetCodec4cj.BACnet.Enum`），覆盖协议第 21 章全部 `::= ENUMERATED` 定义（`AbortReason`、`EngineeringUnits`、`ObjectType`、`PropertyIdentifier`、`ConfirmedService`、`UnconfirmedService` 等）。统一实现 `IFromUInt32`/`IToUInt32`/`ToString`/`IFromString`，并在文件底部附完整协议原文注释（Page 标记 + 章节标题 + 定义块 + `}` 后所有 `--` 注释）。

#### Changed
- **命名规范化**：`src/BACnet/Enum/` 下类名/文件名去掉 `BACnet`/`Choice` 字样，连接符 `-`→`_`，成员全小写 snake_case（如 `who-Am-I`→`who_am_i`）。
- **reserved/non_standardized 边界**：按协议注释解析边界（如 `AbortReason` `x<=63` reserved、`64..255` non_standardized；`ObjectType` `<=127`/`128..1023`；`PropertyIdentifier` `<=511`/`512..4194303`）。
- **removed 兼容值**：`formerly` 标注的已删除服务/成员保留旧值（`ConfirmedService` 的 `authenticate(24)`/`request-key(25)`/`read-property-conditional(13)`、`NetworkType` 的 `non-bacnet(8)`、`PropertyIdentifier` 的 8 个 removed 属性）。
- **关键字反引号转义**：`IPMode.foreign`、`LiftCarDoorCommand.open` 用反引号转义（均为仓颉关键字）。
- **Choice 追加 `_Choice`**：`src/BACnet/Choice/` 下 32 个文件/类名末尾追加 `_Choice`（`BACnet_PDU_Type_Choice` 已含后缀故跳过），同步更新引用。
- **Enum 追加 `_Enum`**：`src/BACnet/Enum/` 下 73 个文件/类名末尾追加 `_Enum`，同步更新引用。
- **迁移**：`ObjectType`、`UnconfirmedService` 由 Choice 目录迁移至 Enum 目录；`BACnetPropertyIdentifier` 改名 `PropertyIdentifier`。
- **版本号**：`cjpm.toml` 版本 0.3.0→0.4.0。

#### Fixed
- **循环依赖**：修复 `Types` 包与子包 `APDU_Definitions`、`ApplicationTypes` 相互 import 导致的 cyclic dependency。移除子包中冗余的 `import Types.*`（`Confirmed_Request_Pdu.cj`、`BACnet_ObjectIdentifier.cj`），测试文件改为直接 `import ...APDU_Definitions.*`。

### 改动文件
- 新增 `src/BACnet/Enum/` 下 73 个枚举文件
- 改名 `src/BACnet/Choice/` 下 32 个文件（追加 `_Choice`）
- 改名 `src/BACnet/Enum/` 下 73 个文件（追加 `_Enum`）
- 删除 `src/BACnet/Choice/ObjectType.cj`、`src/BACnet/Choice/UnconfirmedService.cj`、`src/BACnet/Enum/BACnetPropertyIdentifier.cj`（迁移/改名至 Enum）
- 修改引用文件 `src/BACnet/Types/APDU_Definitions/Confirmed_Request_Pdu.cj`、`src/BACnet/Types/ApplicationTypes/BACnet_ObjectIdentifier.cj`、`src/BACnet/Types/ApplicationTypes/BACnetApplicationDatatypes_test.cj` 等
- 修改 `cjpm.toml`（版本 0.3.0→0.4.0）

---

## [0.3.0] - 2026-09-09 — ASN.1 CHOICE 全量生成与命名规范化
### 注意
本版本Choice为AI根据协议源文件按照固定格式生成，实际有大量Choice是值的概念，后续版本会逐一修正，本版本只做文件结构示意，无法实用。
本版本对文件结构进行了大幅度的调整，将BACnet相关定义集中到BACnet包中，方便管理。

### 吐槽
1.BACnet协议本身：因为之前做简化版本解码时留下的错误印象，以为BACnet协议里标的Choice都是像
```
BACnet-Confirmed-Service-ACK  ::= CHOICE { 
 get-alarm-summary [3] GetAlarmSummary-ACK,
 ...
}
```
这种的，就是一个flag,实际是enum的概念和作用。
但是实际情况不是这样，类似这种的 choice 只占了协议的很小一部分。
协议中大量的Choice都是值的概念，Choice代表这地方的值的类型不固定，是它定义下面
的多个类型中间的一种，比如
```
BACnet-Property-States ::= CHOICE {
    boolean [1] BOOLEAN,
    unsigned-integer [2] UNSIGNED-INTEGER,
    ...,
    error [23] BACnet-Error,
    ...
}
```
也就是说，这东西需要具体用不同类型的编解码，而不是简单的应用一个整数来对应。
因为本次大改了文件结构，以后就打算用这个文件结构思路来扩展后续工作，
当前这个版本还是花了近亿token才得到的版本，所以先提交一个包含错误概念的版本，
然后后续会逐一核对choice下的所有类型并修正。

还有，这协议的choice定义，很多都是没有按照ASN.1的格式来定义的，类似刚才那两个例子中，
```
BACnet-Confirmed-Service-ACK  ::= CHOICE { 
 get-alarm-summary [3] GetAlarmSummary-ACK,
 ...
}
```
里的[3]代表如果值是3则代表后续包是GetAlarmSummary-ACK。

而在
```
BACnet-Property-States ::= CHOICE {
    boolean [1] BOOLEAN,
    unsigned-integer [2] UNSIGNED-INTEGER,
    ...,
    error [23] BACnet-Error,
    ...
}
```
里的[2]却代表这个值使用上下文标记2，如果在这个choice解码时遇到上下文标记2那么就要用unsigned-integer的编解码方式来解码。

也就是说，协议里很多choice的定义，都是没有按照ASN.1的格式来定义的，
而是直接把ASN.1的tag和value混在一起定义了，
这导致了协议的choice定义非常混乱。

2.每天1000万的token，实际上只够严肃认真的使用AI运行几个问题而已，AI连续运行1个小时左右
1000万token就会耗尽。慢慢来吧，没赞助的话大概就这样了。

### 摘要
依据 ISO 16484-5:2022 协议第 21 章（FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS）原文，全量生成 31 个 ASN.1 CHOICE 类型定义的 Cangjie 枚举代码，并对 Choice/Enum 目录进行命名规范化重构（去 `BACnet`/`Choice` 字样、`-`→`_`、字段 snake_case）。同步裁剪协议原文未声明的 `reserved()`/`remove()` 兼容值，为所有 CHOICE 实现 `IFromUInt8`/`IToUInt8`/`ToString`/`IFromString` 四接口。版本号由 0.2.0 提升至 0.3.0。

### 变更明细

#### Added
- **31 个 ASN.1 CHOICE 枚举**：新增至 `src/BACnet/Choice/`（package `BACnetCodec4cj.BACnet.Choice`），覆盖协议第 21 章全部 `::= CHOICE` 定义。每个枚举含原文注释（`[N]` tag、类型、协议行号），实现 `IFromUInt8`/`IToUInt8`/`ToString`/`IFromString`。
- **`BACnet_PDU_Type_Choice`**：PDU 类型 CHOICE，特殊命名保留 `BACnet_`/`_Choice` 前后缀（区别于其余 30 个去前缀命名）。

#### Changed
- **命名规范化**：`src/BACnet/Choice/` 下 37 个 `.cj` 文件类名与文件名去掉 `BACnet`/`Choice` 字样，连接符 `-` 一律替换为 `_`，枚举成员字段名全小写 snake_case。
- **6 个非 CHOICE 枚举改名**：`ConfirmedService`、`UnconfirmedService`、`ObjectType`、`CharSet`、`ApplicationDatatypes`、`TagClass` 同步去 `BACnet`/`Choice` 命名。
- **`PDU.cj` → `BACnet_PDU_Type_Choice.cj`**：文件与类名同步更新，`Types.cj` 中引用同步修正。
- **reserved/remove 裁剪**：依据协议原文注释，24 个 CHOICE 去除未声明的 `reserved()`/`remove()` 兼容值及对应转换分支；7 个保留 `reserved()`（`Confirmed_Service_Request`/`Confirmed_Service_ACK`/`Unconfirmed_Service_Request`/`Error`/`EventParameter`/`NotificationParameters`/`PropertyStates`）；7 个保留 `remove()`（上述除 `Unconfirmed_Service_Request` 外加 `TimeStamp`）。
- **引用更新**：16 个引用文件（含 `Types.cj`、`ApplicationDatatypes/` 下 13 个数据类型、`Confirmed_Request_Pdu.cj` 等）同步更新 import 与类型引用。
- **版本号**：`cjpm.toml` 版本 0.2.0→0.3.0。

### 改动文件
- 新增 `src/BACnet/Choice/` 下 31 个 CHOICE 枚举文件
- 改名 `src/BACnet/Choice/` 下 6 个非 CHOICE 枚举文件 + `PDU.cj`→`BACnet_PDU_Type_Choice.cj`
- 修改 `src/BACnet/Types/Types.cj`、`src/BACnet/Types/ApplicationDatatypes/`（13 个）、`src/BACnet/Types/Confirmed_Request_Pdu/Confirmed_Request_Pdu.cj` 等共 16 个引用文件
- 修改 `cjpm.toml`（版本 0.2.0→0.3.0）

---

## [0.2.0] - 2026-09-05 — 枚举与 Choice 重构

### 摘要
完成枚举/Choice 的目录化重构与协议文档化：将分散在多个源码文件中的 9 个 Choice 枚举统一抽取到独立的 `src/Choice/` 包，新增完整的 `BACnetPropertyIdentifier` 属性标识符枚举（462 个），并为 20 个已有定义补齐 ISO 16484-5:2022 协议原文注释（含章节与页码）。版本号由 0.1.0 提升至 0.2.0。

### 变更明细

#### Added
- **`BACnetPropertyIdentifier` 枚举**：新增至 `src/Enum/BACnetPropertyIdentifier.cj`（package `BACnetCodec4cj.Enum`），覆盖协议 21.6 定义的 462 个属性标识符（0-507 标准值 + 扩展通配），实现 `IFromUInt32`/`IToUInt32`/`ToString`/`IFromString`。
- **`IFromUInt32` / `IToUInt32` 接口**：新增到 `src/InterFaces/InterFaces.cj`，支撑 UInt32 范围的枚举转换（属性标识符扩展值可达 4194303）。
- **协议原文注释**：为 20 个定义文件追加 ISO 16484-5:2022 协议原文（块注释，含 `--ISO_16484_5_2022_Page_XXX` 页码与 `--21.X` 章节标注）。

#### Changed
- **Choice 枚举目录化重构**：将 9 个 Choice 枚举（`BACnet_PDUTypeChoice`、`BACnetObjectTypeChoice`、`BACnetApplicationDatatypesChoice`、`BACnetTagClassChoice`、`BACnetCharSetChoice`、`UnconfirmedServiceChoice`、`ConfirmedServiceChoice`、`ConfirmedServiceRequestChoice`、`ConfirmedServiceACKChoice`）统一抽取到 `src/Choice/`（package `BACnetCodec4cj.Choice`），各自独立成同名 `.cj` 文件。
- **import 更新**：所有引用上述枚举的文件补充 `import BACnetCodec4cj.BACnet.Choice.*`；根包公开门面补充 `public import ...Choice.*` 与 `...Enum.*`。

### 改动文件
- 新增 `src/Choice/`（9 个 Choice 枚举文件）
- 新增 `src/Enum/BACnetPropertyIdentifier.cj`
- 删除 `src/Types/BACnetObjectType.cj`、`src/Types/Confirmed_Request_Pdu/{ConfirmedServiceChoice,ConfirmedServiceRequestChoice,ConfirmedServiceACKChoice}.cj`
- 修改 `src/InterFaces/InterFaces.cj`、`src/BACnetCodec4cj.cj`、`src/Types/Types.cj`、`src/Types/Confirmed_Request_Pdu/Confirmed_Request_Pdu.cj`、`src/Types/UnconfirmedService/UnconfirmedService.cj`、`src/Types/BACnetApplicationDatatypes/` 下数据类型文件
- 修改 `cjpm.toml`（版本 0.1.0→0.2.0）

---

## 2026-09-02 — P3 工程化

### 摘要
完成 **P3（工程化/发布）**：锁定 `charset4cj` 依赖版本以保障可复现构建，补充根包公开门面统一对外入口，并引入 CI 流水线（cjfmt 格式检查、cjpm build 构建、cjpm test 单元测试）。同时将调用者视角分析报告 `analysis_report.md` 移出 git 仓库并改名归档。

### 变更明细

#### Added
- **根包公开门面**：`src/BACnetCodec4cj.cj` 集中 re-export 常用公开类型（异常类、ByteBuf、接口、基础类型、13 种应用数据类型、服务类型），调用者只需 `import BACnetCodec4cj.*`。
- **CI 流水线**：新增 `.gitcode-ci.yml`，配置 cjfmt 格式检查、cjpm build 构建、cjpm test 单元测试三个 stage。(目前不能实际用，因为AI不懂gircode上的CI怎么配，我不懂CI)

#### Changed
- **依赖锁定**：`charset4cj` 依赖由 `branch = "develop"` 锁定为 `tag = "v1.0.5"`（commit `ea5203fe`），保证第三方调用者可复现构建。

#### Removed
- **分析报告移出版本控制**：`analysis_report.md`（调用者视角分析报告）移出 git 仓库并改名归档为独立文档，不再纳入版本控制。

### 改动文件
- `cjpm.toml`（依赖锁定）、`cjpm.lock`
- `src/BACnetCodec4cj.cj`（公开门面 re-export）
- `.gitcode-ci.yml`（新增）
- `analysis_report.md`（移出版本控制）
- `CHANGELOG.md`

---

## 2026-09-01 — P0/P1/P2 整改

### 摘要
基于 `analysis_report.md` 路线图，完成 **P0（正确性修复）**、**P1（API 去噪）** 与 **P2（结构重构）** 的整改收尾。修复 3 处正确性缺陷，清理对外 API 中的中文与冗余命名，统一全库命名规范，并将 `OctetString`/`BitString` 的数据载体由字符串改为字节/位数组以对齐协议语义。同时纠正了测试目录约定（测试源必须位于 `src/` 下，而非 `tests/`），并修正 `cjpm.toml` 的 `cjc-version`。全部 18 个单元测试通过。

### 变更明细

#### Fixed
- **`cursorMoveBackward` 负值回退缺陷**：游标前进/回退参数为负或越过起点时，原实现会产生错误的下标。改为将越界结果钳制到 `0`，保证游标始终位于合法区间。
- **`readBACnetApplicationDataLength` 扩展长度分支失效**：长度为 `254`（2 字节扩展）与 `255`（4 字节扩展）的两个分支此前不会被命中。重构判断逻辑，按 `254`/`255` 分流正确读取 2/4 字节扩展长度。
- **`BACnet_APDU` 默认 PDU 类型错误**：默认值由 `Abort_Pdu` 修正为 `Confirmed_Request_Pdu`（协议 0 号 PDU 类型）。

#### Changed
- **API 去噪**：删除接口与枚举中的中文方法名（如 `从UInt8转换而来`）与冗余方法 `toUint8this`；移除调试函数 `printArrayAsFormat`。
- **异常体系规范化**：异常类统一为 `*Error`/`Param` 命名，建立公共基类 `BACnetError`，子类 `DecodeException`/`EncodeException`/`BACnetParamError` 等继承自它。
- **接口拆分**：将 `ICodecBACnetApplicationData` 拆分为 `ICodecPrimitiveData<T>`（原语数据）与 `ICodecContextSpecificData`（上下文数据），职责更单一。
- **数据语义化**：`OctetString.dataValue` 由 `String` 改为 `Array<Byte>`；`BitString.dataValue` 由 `String` 改为 `Array<Bool>`；`Null` 移除无意义的 `Option<Bool>` 型 `dataValue`。
- **命名统一**：`WithLenth`→`WithLength`、`arg_lenth`→`arg_length`、`Bacnet`→`BACnet`；文件 `Bacnet_BitString.cj` 改名为 `BACnet_BitString.cj`。
- **公共工具抽取**：新增 `encodeWithTagHead` 辅助函数，复用至 `BACnet_OctetString`（其余类型因值处理逻辑异构，克制不抽象）。
- **工程修正**：`cjpm.toml` 的 `cjc-version` 由 `1.0.0` 修正为 `1.1.3`，移除无效的 `test-dir` 配置。

### 改动文件
- `cjpm.toml`（cjc-version 修正）
- `src/BACnetException/BACnetException.cj`
- `src/ByteBuf/ByteBuf.cj`
- `src/InterFaces/InterFaces.cj`
- `src/Types/Types.cj`
- `src/Types/BACnetApplicationDatatypes/BACnetApplicationDatatypes.cj`
- `src/Types/BACnetApplicationDatatypes/` 下 13 个数据类型文件（Boolean/UnsignedInteger/SignedInteger/Real/Double/OctetString/CharacterString/BitString/Enumerated/Date/Time/ObjectIdentifier/Null）
- `src/Types/BACnetApplicationDatatypes/Bacnet_BitString.cj` → `BACnet_BitString.cj`（改名）
- `src/ByteBuf/ByteBuf_test.cj`
- `src/Types/BACnetApplicationDatatypes/BACnetApplicationDatatypes_test.cj`
- `src/Types/Confirmed_Request_Pdu/Confirmed_Request_Pdu.cj`
- `src/Types/ErrorProductions/ErrorProductions.cj`
- `analysis_report.md`（新增第 14 节阶段成果报告，后于次日移出版本控制）

---

## 2026-08-28 — 根据 AI 建议整改 P1/P2

### 摘要
针对调用者视角分析报告中的 P1（API 去噪）与 P2（结构重构）整改项开展大规模结构性整改。涉及 38 个文件，新增 4108 行、删除 4592 行，主要是接口/异常/数据类型三类文件的全面改写与命名规范化，以及 `Confirmed_Request_Pdu` 目录与相关服务选择类的重组。

### 改动文件
- `analysis_report.md`、`README.md`、`cjpm.lock`、`src/BACnetCodec4cj.cj`
- `src/BACnetException/BACnetException.cj`
- `src/ByteBuf/ByteBuf.cj`、`src/ByteBuf/ByteBuf_test.cj`
- `src/InterFaces/InterFaces.cj`
- `src/Types/BACnetApplicationDatatypes/` 全部数据类型文件
- `src/Types/BACnetObjectType.cj`、`src/Types/Types.cj`
- `src/Types/ConfirmedRequestPdu/` → `src/Types/Confirmed_Request_Pdu/`（目录重组）
- `src/Types/ErrorProductions/ErrorProductions.cj`
- `src/Types/UnconfirmedService/UnconfirmedService.cj`

---

## 2025-10-20 — 相关类与枚举拆分到单独文件

### 摘要
将原本集中在 `Types.cj` 中相关类与枚举按职责拆分到独立文件，并引入调用者视角分析报告 `analysis_report.md`（282 行）与 `cjpm.lock`（锁定依赖版本）。其中 Confirmed Request 相关类型进一步拆分为 `AtomicWriteFileACK`、`ConfirmedServiceChoice`、`ConfirmedServiceRequestChoice`、`ConfirmedServiceACKChoice` 等独立文件。

### 改动文件
- `analysis_report.md`（新增）、`cjpm.lock`（新增）、`cjpm.toml`
- `src/Types/ConfirmedRequestPdu/AtomicWriteFileACK.cj`
- `src/Types/ConfirmedRequestPdu/ConfirmedRequestPdu.cj`
- `src/Types/ConfirmedRequestPdu/ConfirmedServiceChoice.cj`
- `src/Types/ConfirmedRequestPdu/ConfirmedServiceRequestChoice.cj`
- `src/Types/ConfirmedRequestPdu/ConfirmedServiceACKChoice.cj`
- `src/Types/BACnetApplicationDatatypes/Bacnet_BitString.cj`
- `log.txt`

---

## 2025-08-11 — 补齐 BACnetApplicationDatatype

### 摘要
补齐 `BACnetApplicationDatatype` 父类的定义与相关处理逻辑，完善各数据类型与父类型之间的派生关系，并同步更新 README 说明。

### 改动文件
- `src/Types/BACnetApplicationDatatypes/BACnetApplicationDatatypes.cj`
- `README.md`

---

## 2025-07-26 — BACnetApplicationDatatypes 全部类型完成

### 摘要
完成最后一个数据类型 `BACnet_ObjectIdentifier`（含对象类型枚举 `BACnetObjectType`），至此 13 种 BACnet 应用数据类型全部实现完毕。同时扩展 `ByteBuf` 与 `InterFaces` 以支持对象标识符的编解码，并大幅补充测试用例。

### 改动文件
- `README.md`
- `src/ByteBuf/ByteBuf.cj`
- `src/InterFaces/InterFaces.cj`
- `src/Types/BACnetApplicationDatatypes/BACnet_ObjectIdentifier.cj`（新增）
- `src/Types/BACnetApplicationDatatypes/BACnet_SignedInteger.cj`
- `src/Types/BACnetApplicationDatatypes/BACnet_UnsignedInteger.cj`
- `src/Types/BACnetApplicationDatatypes/BACnetApplicationDatatypes_test.cj`
- `src/Types/BACnetObjectType.cj`（新增）
- `src/Types/Types.cj`

---

## 2025-07-25 — 添加 Date 与 Time 类型

### 摘要
新增 `BACnet_Date`（日期）与 `BACnet_Time`（时间）两个数据类型及对应测试用例，扩展了对 BACnet 时间戳类应用数据的编解码支持。

### 改动文件
- `src/Types/BACnetApplicationDatatypes/BACnet_Date.cj`（新增）
- `src/Types/BACnetApplicationDatatypes/BACnet_Time.cj`（新增）
- `src/Types/BACnetApplicationDatatypes/BACnetApplicationDatatypes_test.cj`

---

## 2025-07-23 — 添加 BitString 与 Enumerated 类型

### 摘要
新增 `BACnet_BitString`（位串）与 `BACnet_Enumerated`（枚举值）两个数据类型，并补充相应测试。位串类型支持位数组的编解码，枚举类型支持枚举值的原语与上下文编解码。

### 改动文件
- `src/Types/BACnetApplicationDatatypes/Bacnet_BitString.cj`（新增）
- `src/Types/BACnetApplicationDatatypes/BACnet_Enumerated.cj`（新增）
- `src/Types/BACnetApplicationDatatypes/BACnet_Boolean.cj`
- `src/Types/BACnetApplicationDatatypes/BACnetApplicationDatatypes_test.cj`
- `README.md`

---

## 2025-07-22 — 添加 CharacterString 类型

### 摘要
新增 `BACnet_CharacterString`（字符串）数据类型，支持多种字符集（UTF-8/UTF-16/UTF-32/ISO-8859-1/JISX0208/CodePage 等）的编码与解码，并补充 `.gitignore` 与 README 说明。同时完善 `BACnet_OctetString` 的处理。

### 改动文件
- `src/Types/BACnetApplicationDatatypes/BACnet_CharacterString.cj`（新增）
- `src/Types/BACnetApplicationDatatypes/BACnet_OctetString.cj`
- `src/Types/BACnetApplicationDatatypes/BACnetApplicationDatatypes.cj`
- `src/Types/BACnetApplicationDatatypes/BACnetApplicationDatatypes_test.cj`
- `.gitignore`、`README.md`

---

## 2025-07-21 — 拆分数据类型文件并添加 OctetString

### 摘要
将庞大的 `BACnetApplicationDatatypes.cj` 按数据类型拆分为独立文件，补全 ApplicationTag 的 TagNumber 域读取与数据长度（Length）读取逻辑，并新增 `BACnet_OctetString`（字节串）类型。拆分后各类型文件独立维护，可读性显著提升。

### 改动文件
- `src/Types/BACnetApplicationDatatypes/BACnetApplicationDatatypes.cj`
- `src/Types/BACnetApplicationDatatypes/BACnet_Boolean.cj`（新增）
- `src/Types/BACnetApplicationDatatypes/BACnet_Double.cj`（新增）
- `src/Types/BACnetApplicationDatatypes/BACnet_Null.cj`（新增）
- `src/Types/BACnetApplicationDatatypes/BACnet_OctetString.cj`（新增）
- `src/Types/BACnetApplicationDatatypes/BACnet_Real.cj`（新增）
- `src/Types/BACnetApplicationDatatypes/BACnet_SignedInteger.cj`（新增）
- `src/Types/BACnetApplicationDatatypes/BACnet_UnsignedInteger.cj`（新增）
- `src/Types/BACnetApplicationDatatypes/BACnetApplicationDatatypes_test.cj`
- `cjpm.toml`

---

## 2025-07-19 — 添加 SignedInteger / Real / Double 类型

### 摘要
新增 `BACnet_SignedInteger`、`BACnet_Real` 与 `BACnet_Double` 三个数值类型及测试用例，并将测试方式改为更简洁的辅助函数形式（往返一致性与协议样例向量）。同时更新 README 说明并美化格式。

### 改动文件
- `src/InterFaces/InterFaces.cj`
- `src/ByteBuf/ByteBuf.cj`
- `src/Types/BACnetApplicationDatatypes/BACnetApplicationDatatypes.cj`
- `src/Types/BACnetApplicationDatatypes/BACnetApplicationDatatypes_test.cj`
- `README.md`

---

## 2025-07-18 — 补充三个基础类型的测试用例

### 摘要
为已实现的 `BACnet_Null`、`BACnet_Boolean`、`BACnet_UnsignedInteger` 三个数据类型补齐完整测试用例，并修复测试过程中暴露的编解码 BUG。

### 改动文件
- `src/ByteBuf/ByteBuf.cj`、`src/ByteBuf/ByteBuf_test.cj`
- `src/InterFaces/InterFaces.cj`
- `src/Types/BACnetApplicationDatatypes/BACnetApplicationDatatypes.cj`
- `src/Types/BACnetApplicationDatatypes/BACnetApplicationDatatypes_test.cj`

---

## 2025-07-14 — BACnetApplication 部分完成，建立 ByteBuf

### 摘要
BACnetApplication 数据类型部分完成，建立 `ByteBuf` 数据缓存类（替代早期 `ByteBuff`），扩容为完整的内存字节缓冲区实现，并同步扩展异常类与接口。

### 改动文件
- `cjpm.toml`
- `src/BACnetCodec4cj.cj`
- `src/BACnetException/BACnetException.cj`
- `src/ByteBuf/ByteBuf.cj`（新增）、`src/ByteBuf/ByteBuf_test.cj`（新增）
- `src/ByteBuff/ByteBuff.cj`（删除）
- `src/InterFaces/InterFaces.cj`
- `src/Types/BACnetApplicationDatatypes/BACnetApplicationDatatypes.cj`

---

## 2025-06-06 — 建立 ByteBuf 数据缓存类（早期）

### 摘要
建立 `ByteBuff` 数据缓存类的初始版本，计划仿照 Rust 中 BYTE 包的部分功能，为后续编解码提供字节缓冲区基础。

### 改动文件
- `src/ByteBuff/ByteBuff.cj`（新增，后于 2025-07-14 被 `ByteBuf` 取代）
- `src/Types/BACnetApplicationDatatypes/BACnetApplicationDatatypes.cj`
- `src/Types/ConfirmedService/ConfirmedService.cj`
- `src/Types/UnconfirmedService/UnconfirmedService.cj`
- `src/Types/Types.cj`、`src/BACnetException/BACnetException.cj`

---

## 2025-05-25 — 改为可执行包并集中接口

### 摘要
将项目调整为可执行包，把分散的接口定义集中到独立的 `InterFaces.cj` 文件中，删除演示文件 `demo.cj`，明确包结构。

### 改动文件
- `cjpm.toml`
- `src/BACnetCodec4cj.cj`
- `src/BACnetException/BACnetException.cj`
- `src/InterFaces/InterFaces.cj`（新增）
- `src/Types/BACnetApplicationDatatypes/BACnetApplicationDatatypes.cj`
- `src/Types/ConfirmedService/ConfirmedService.cj`
- `src/Types/Types.cj`
- `src/Types/UnconfirmedService/UnconfirmedService.cj`
- `src/demo.cj`（删除）

---

## 2025-05-24 — 调整命名并新建接口

### 摘要
调整类与文件的命名，去掉 `BACnet` 前缀，重新命名部分类并新建接口。将 `ConfirmedServiceProductions` / `UnconfirmedServiceProductions` 重组为 `ConfirmedService` / `UnconfirmedService`。

### 改动文件
- `src/BACnetCodec4cj.cj`
- `src/BACnetException/BACnetException.cj`
- `src/Types/BACnetApplicationDatatypes/BACnetApplicationDatatypes.cj`（新增）
- `src/Types/ConfirmedService/ConfirmedService.cj`（新增，替代 Produktions）
- `src/Types/Types.cj`
- `src/Types/UnconfirmedService/UnconfirmedService.cj`（新增，替代 Produktions）

---

## 2025-05-16 — 初始化项目与首个可编译版本

### 摘要
初始化项目工程，建立 `.gitignore`、`LICENSE`、`cjpm.toml` 与 CHANGELOG，创建首个可编译版本，包含基础类型定义、异常类与确认/非确认服务生产类。

### 改动文件
- `README.md`、`.gitignore`、`LICENSE`、`cjpm.toml`、`CHANGELOG`
- `src/BACnetCodec4cj.cj`
- `src/BACnetException/BACnetException.cj`
- `src/Types/Types.cj`
- `src/Types/ConfirmedService/ConfirmedServiceProductions.cj`
- `src/Types/UnconfirmedService/UnconfirmedServiceProductions.cj`
- `src/Types/ErrorProductions/ErrorProductions.cj`
- `src/demo.cj`

---

## 2025-05-12 — 项目建立

### 摘要
于 gitcode.com 建立项目，建立 BACnet 下的一些类型定义（早期非 git 记录，源自原始 CHANGELOG）。

### 改动文件
- 初始类型定义（未纳入 git 提交记录）