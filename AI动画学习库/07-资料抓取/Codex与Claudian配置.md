# Codex 与 Claudian 配置

## 推荐填写的 CLI 路径

在 Claudian 的 CLI Path、Command Path、Executable Path 或类似设置中，优先填写：

```text
D:\191192\我的项目\动画制作\动画短片制作\codex-cli.cmd
```

这个文件是中转命令，内容很简单：

```bat
@echo off
codex %*
```

好处是 Codex 桌面版升级后，真实安装目录可能变化，但这个中转路径不变。

## 直接路径备选

当前机器上检测到的 Codex 可执行文件路径是：

```text
C:\Program Files\WindowsApps\OpenAI.Codex_26.616.6631.0_x64__2p2nqsd0c76g0\app\resources\codex.exe
```

这个路径带版本号，而且 WindowsApps 权限特殊，不建议作为首选。

## 兼容性提醒

当前 Real Claudian 插件主要围绕 Claude Code 设计。即使能填写 Codex 命令路径，也可能因为参数、输出格式或会话协议不同而无法完整工作。若插件支持自定义命令，优先用中转命令测试；若只支持 Claude Code，需要后续做适配层。
