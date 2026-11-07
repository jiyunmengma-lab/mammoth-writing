<p align="center">
  <img src="./assets/readme-cover.svg" alt="活人感写作" width="100%">
</p>

<p align="center">
  <a href="https://github.com/KKKKhazix/human-writing/releases/tag/v1.1.0"><img alt="Version 1.1.0" src="https://img.shields.io/badge/version-1.1.0-C4473A?style=flat-square"></a>
  <a href="./LICENSE"><img alt="MIT License" src="https://img.shields.io/badge/license-MIT-313131?style=flat-square"></a>
  <a href="https://github.com/KKKKhazix/human-writing/releases/latest"><img alt="GitHub Release" src="https://img.shields.io/github/v/release/KKKKhazix/human-writing?style=flat-square&color=6B6258"></a>
</p>

<p align="center">
  <a href="#快速安装">快速安装</a> ·
  <a href="#它做什么">写作流程</a> ·
  <a href="#仓库结构">仓库结构</a> ·
  <a href="https://github.com/KKKKhazix/human-writing/issues">提交问题</a>
</p>

> AI 写中文有个通病：读完觉得挺流畅，但说不出是谁写的。活人感写作想治的就是这件事。

面向中文写作与改稿，按作品的文体、读者和作者意图选择表达方式。适用于回答、文章、故事、科普、评测、小说、口播等多种场景。

## 它做什么

写作前先判断材料是否足以支撑任务。现实内容核验事实、数字和引文，材料不足时可以查证、询问或调整范围；虚构内容按作品设定创作，并与现实事实区分。

写作与审稿时结合文体和语境处理结构、语言、修辞和节奏，避免无效重复。辨析句式、标点、排比和比喻不按固定规则一票否决。

## 快速安装

把下面这句话发给你的 Agent。

```bash
帮我从 https://github.com/jiyunmengma-lab/mammoth-writing 的 dev-writing 分支安装 human-writing 目录中的 Skill，不要使用默认分支。
```

Agent 应获取 `dev-writing` 分支，并将其中的 `human-writing` 文件夹完整安装到 Skills 目录。装好之后显示名为「活人感写作」。

<details>
<summary><strong>Agent 不支持直接安装时</strong></summary>

下载 [dev-writing 分支](https://github.com/jiyunmengma-lab/mammoth-writing/archive/refs/heads/dev-writing.zip)并解压，将其中的 `human-writing` 文件夹完整复制到本机 Skills 目录。也可以先克隆该分支再复制。文件夹名保留 `human-writing`。

```text
~/.agents/skills/human-writing/
```

</details>

装好之后这样用：

```text
使用 $human-writing，把我的材料写成一篇有活人感和中文韵律的作品。
```

## 版本说明

`human-writing/VERSION` 记录原版版本号，历史发布变化见 [CHANGELOG.md](./CHANGELOG.md)。当前 `dev-writing` 的精简改造以仓库内容为准，尚未建立新的发布版本。

## 仓库结构

<details>
<summary><strong>展开查看完整目录</strong></summary>

```text
human-writing/
├── SKILL.md
├── VERSION
├── LICENSE
├── agents/
│   └── openai.yaml
├── dist/
│   └── human-writing-lite.md
└── references/
│   ├── forum-prose.md
│   ├── reality.md
│   ├── fiction.md
│   ├── formats.md
    └── revision.md
```

| 位置 | 干什么的 |
| :--- | :--- |
| [`SKILL.md`](./human-writing/SKILL.md) | 入口。按需读取、材料判断、现实与虚构边界及审稿原则 |
| [`forum-prose.md`](./human-writing/references/forum-prose.md) | 知乎、公众号、论坛长帖的写法，节奏和措辞的具体做法都在这里 |
| [`reality.md`](./human-writing/references/reality.md) | 真人、历史、新闻、数据和个人经历的事实边界 |
| [`fiction.md`](./human-writing/references/fiction.md) | 小说、故事、虚构散文和对白的创作规则 |
| [`formats.md`](./human-writing/references/formats.md) | 短内容、口播、演讲、教程、评测等特殊形式 |
| [`revision.md`](./human-writing/references/revision.md) | 按作品需要选择的审稿检查 |
| [`human-writing-lite.md`](./human-writing/dist/human-writing-lite.md) | 精简版，聊天窗口直接粘贴用 |

</details>

## 反馈

MIT 协议开源。仓库包含写作规则和参考资料，没有第三方文章、训练语料或模型权重。

碰到规则冲突或者某个模型上表现不对，欢迎[提 Issue](https://github.com/KKKKhazix/human-writing/issues)。附上你的提示词、模型输出片段和你觉得应该是什么样，排查起来快很多。

<p align="center">
  <sub>活人感写作 · Human Writing · 1.1.0</sub>
</p>
