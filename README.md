# 猛犸写作

在开源「活人感写作」基础上发展的中文写作 skill，当前开发在 `dev-writing`。V1.0 的目标是让 Agent 独立研究、构思、写作和统稿，与猛犸形成合作默契，而不是模仿他的文风。

主要先用于自媒体视频文案，保留其他现实与虚构文体的写作基础。猛犸负责创作判断，可以随时讨论或自己写；Agent 也维护稿件、来源与交接记录，让他不必管理目录。

**当前是 V1.0 候选规则，尚未经过猛犸的完整真实创作验证，也未发布新版本。**

## 不安装也能用

有本地文件能力的 Agent 可以直接读取这个仓库中的 `human-writing/SKILL.md`，按任务读取参考文件，无需先安装。告诉它本机实际的仓库路径和独立创作目录即可：

> 请读取这个仓库的 human-writing/SKILL.md，按其中的规则协助我写作。我的创作目录是【实际路径】，请维护那里的稿件与接手说明。

也可以直接把 [直接使用版](./human-writing/dist/human-writing-lite.md) 的内容和写作需求一起发给 Agent。它是自包含的，不依赖其他参考文件；没有文件工具的聊天产品可以按它创作，但不能真正托管本地文件。

## 快速安装

希望使用标准 skill 调用时，可把这句话交给 Agent：

> 帮我从 https://github.com/jiyunmengma-lab/mammoth-writing 的 dev-writing 分支安装 human-writing 目录中的 Skill，不要使用默认分支。

完整复制 `human-writing` 文件夹到客户端支持的 Skills 目录，例如 `~/.agents/skills/human-writing/`。也可下载 [dev-writing 分支](https://github.com/jiyunmengma-lab/mammoth-writing/archive/refs/heads/dev-writing.zip) 后复制。安装后的显示名为「猛犸写作」，调用名仍是 `$human-writing`。

本地未推送的修改不在 GitHub 下载中；测试本轮工作树版本时直接读取本地目录，或从本地复制安装。

## 使用方式

- “这个题目给普通观众讲，你自己找角度，先写一版完整稿。”
- “这段太平了，先讨论哪里出了问题，不用重写全文。”
- “当前稿给我看看。”
- “给我一个空白文档，我自己写一下结尾。”

创作目录与 skill 源码目录分开。Agent 会维护其中的 `AGENTS.md`、当前稿入口与必要的来源和决定，让其他 Agent 能接着做。目录按需要增长，不要求使用者理解结构，也不要求建立 Git、数据库或专用工作台。

首次没有创作目录时，Agent 会引导你选**放在哪里、目录叫什么**，给出完整路径，得到你同意后再创建。已有目录则确认使用它。你只需知道这个根目录在哪，内部整理仍由 Agent 负责。

### 分期系列怎么放

下面是将来**创作目录**的示例，不是这个 skill 的源码目录。比如“说文解字”每期一个字：

```text
你选定的创作目录/
├── AGENTS.md           接手说明和各期入口
└── 说文解字/
    ├── 共享资料/      整个系列共用的来源和设定
    └── 各期/
        ├── 我/        这一期的稿件、资料和修改记录
        └── 贞/        另一期开自己的目录
```

目录随选题逐步建立，不预定多少期，也不要求先排好顺序。共用资料留一份，各期引用；每期自己的材料和当前稿各归其位。已有合理目录则沿用。

文档链接由运行 Agent 的客户端提供；须实际确认猛犸能打开、编辑并保存到同一个文件。仅通过链接检查不等于完成这项使用验证。

## 规则在哪里

| 文件 | 用途 |
| --- | --- |
| [SKILL.md](./human-writing/SKILL.md) | 创作责任、合作、事实边界及按需导航 |
| [formats.md](./human-writing/references/formats.md) | 视频文案、口播及其他形式 |
| [workspace.md](./human-writing/references/workspace.md) | 创作仓库托管、交接和轻量经验 |
| [revision.md](./human-writing/references/revision.md) | 改稿、审稿和全文一致性 |
| [reality.md](./human-writing/references/reality.md) | 现实题材、引用与来源 |
| [fiction.md](./human-writing/references/fiction.md) | 虚构及混合作品 |
| [forum-prose.md](./human-writing/references/forum-prose.md) | 回答、长帖与叙事散文 |
| [human-writing-lite.md](./human-writing/dist/human-writing-lite.md) | 不安装时使用的自包含版本 |

## 验证与版本

运行 `ruby tests/check_package.rb` 检查元数据、引用文件、文档链接与直接使用版的包装完整性。行为场景与尚未完成的真实使用检查见 [验证记录](./docs/VALIDATION.md)。这些检查不证明文学质量或长期独立性。

`human-writing/VERSION` 仍保存上游 `1.1.0` 版本信息；本轮候选规则以 `dev-writing` 工作树为准。历史发布记录保留在 [CHANGELOG.md](./CHANGELOG.md)，本轮没有创建 release。

## 来源与许可

基于 [KKKKhazix/human-writing](https://github.com/KKKKhazix/human-writing)，遵循 [MIT License](./LICENSE)。保留上游许可证和历史记录。本仓库保存规则，不包含猛犸的私人创作档案或模型权重。
