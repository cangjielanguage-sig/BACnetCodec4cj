# Changelog

本项目所有重要变更均记录于此。条目依据 git 提交历史（`git log`）整理，格式参照 [Keep a Changelog](https://keepachangelog.com/zh-CN/1.1.0/) 与语义化版本。每个变更章节包含「摘要」（背景、改动内容与影响）与「改动文件」清单。

---

## [Unreleased] — 2026-09-01

### 摘要
基于 `analysis_report.md` 路线图，完成 **P0（正确性修复）**、**P1（API 去噪）** 与 **P2（结构重构）** 的整改收尾。修复 3 处正确性缺陷，清理对外 API 中的中文与冗余命名，统一全库命名规范，并将 `OctetString`/`BitString` 的数据载体由字符串改为字节/位数组以对齐协议语义。同时纠正了测试目录约定（测试源必须位于 `src/` 下，而非 `tests/`），并修正 `cjpm.toml` 的 `cjc-version`。全部 18 个单元测试通过。

### 变更明细

#### Fixed
- **`cursorMoveBackward` 负值回退缺陷**：游标前进/回退参数为负或越过起点时，原实现会产生错误的下标。改为将越界结果钳制到 `0`，保证游标始终位于合法区间。
- **`readBACnetApplicationDataLength` 扩展长度分支失效**：长度为 `254`（2 字节扩展）与 `255`（4 字节扩展）的两个分支此前不会被命中。重构判断逻辑，按 `254`/`255` 分流正确读取 2/4 字节扩展长度。
- **`BACnet_APDU` 默认 PDU 类型错误**：默认值由 `Abort_Pdu` 修正为 `Confirmed_Request_Pdu`（协议 0 号 PDU 类型）。

#### Changed
- **API 去噪**：删除接口与枚举中的中文方法名（如 `从UInt8转换而来`）与冗余方法 `toUint8this`；移除调试函数 `printArrayAsFormat`。
- **异常体系规范化**：异常类统一为 `*Error`/`Param` 命名，建立公共基类 `BACnetError`，子类 `BACnetDecodeError`/`BACnetEncodeError`/`BACnetParamError` 等继承自它。
- **接口拆分**：将 `ICodecBACnetApplicationData` 拆分为 `ICodecPrimitiveData<T>`（原语数据）与 `ICodecContextSpecificData`（上下文数据），职责更单一。
- **数据语义化**：`OctetString.dataValue` 由 `String` 改为 `Array<Byte>`；`BitString.dataValue` 由 `String` 改为 `Array<Bool>`；`Null` 移除无意义的 `Option<Bool>` 型 `dataValue`。
- **命名统一**：`WithLenth`→`WithLength`、`arg_lenth`→`arg_length`、`Bacnet`→`BACnet`；文件 `Bacnet_BitString.cj` 改名为 `BACnet_BitString.cj`。
- **公共工具抽取**：新增 `encodeWithTagHead` 辅助函数，复用至 `BACnet_OctetString`（其余类型因值处理逻辑异构，克制不抽象）。
- **工程修正**：`cjpm.toml` 的 `cjc-version` 由 `1.0.0` 修正为 `1.1.3`，移除无效的 `test-dir` 配置。
- **依赖锁定**：`charset4cj` 依赖由 `branch = "develop"` 锁定为 `tag = "v1.0.5"`（commit `ea5203fe`），保证第三方调用者可复现构建。

#### Added
- **根包公开门面**：`src/BACnetCodec4cj.cj` 集中 re-export 常用公开类型（异常类、ByteBuf、接口、基础类型、13 种应用数据类型、服务类型），调用者只需 `import BACnetCodec4cj.*`。
- **CI 流水线**：新增 `.gitcode-ci.yml`，配置 cjfmt 格式检查、cjpm build 构建、cjpm test 单元测试三个 stage。

### 改动文件
- `cjpm.toml`
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
- `analysis_report.md`（新增第 14 节阶段成果报告）
- `src/BACnetCodec4cj.cj`（公开门面 re-export）
- `.gitcode-ci.yml`（新增）
- `CHANGELOG.md`

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