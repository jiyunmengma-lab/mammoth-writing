# 项目工作说明

## 开始工作

处理非平凡任务前，先读 `docs/PROJECT.md` 和 `docs/CURRENT.md`。涉及已有架构、技术选型、产品边界或数据策略的改变，追问既有决定的原因，或拟议方案明显背离现状时，再读 `docs/DECISIONS.md`。

`README.md` 是使用入口；`CHANGELOG.md` 记录发布变更。写作行为以 `human-writing/SKILL.md` 和其按任务指定的参考文件为准，修改这些规则须在任务授权范围内。

## 目录与验证

- `human-writing/` 是可安装的 Skill；`references/` 保存按任务读取的规则，`scripts/check_prose.py` 检查稿件，`agents/` 保存界面元数据，`VERSION` 保存版本。
- `human-writing/dist/human-writing-lite.md` 是已跟踪的交付文件，不是可随意清理的临时构建产物。`assets/` 保存 README 使用的资源。
- 当前没有独立测试目录或已声明的构建、测试、lint 流程。新增测试源码和必要夹具应纳入版本控制，并与运行时生成物分开；临时测试或预览产物应集中放在项目专属目录，不要散放仓库根目录。
- 用 `python3 human-writing/scripts/check_prose.py --help` 查看检查器用法；用 `python3 human-writing/scripts/check_prose.py <稿件路径>` 检查稿件，也可用 `-` 从标准输入读取。检查器不能代替人工判断文体和事实。

## 协作与文档维护

`main` 是稳定分支，当前开发和测试在 `dev-writing` 上进行。不要将普通开发请求理解为提交、推送或合并授权。

稳定能力或使用方式实质变化时更新 README；项目工作约束或导航变化时更新本文件；目标或范围变化时更新 `docs/PROJECT.md`；当前状态实质变化时更新 `docs/CURRENT.md`；出现重要长期决策或方向性转向时更新 `docs/DECISIONS.md`。发布变更按实际情况维护 `CHANGELOG.md`。避免重复保存同一类事实。
