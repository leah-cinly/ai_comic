# AI 视频工具指南

## 目标

AI 视频工具负责把关键帧、图像、提示词转成运动镜头。学习重点不是哪个工具“最强”，而是哪个工具适合哪类镜头。

## Runway

入口：https://runwayml.com/

学习入口：https://academy.runwayml.com/

适合：图生视频、镜头运动、商业化视频工作流、可控视频实验。

练习：

- 同一张角色关键帧做 3 个镜头运动：dolly in、tracking、static shot。
- 比较 motion strength、camera movement、prompt 细节对结果的影响。
- 记录哪些提示词会造成角色变形。

提示词模板：

```text
medium shot, the same character slowly turns toward the warm light, subtle camera dolly in, emotional realization, consistent face and outfit, smooth animated film motion
```

## Pika

入口：https://pika.art/

适合：快速视频创意、风格化片段、短镜头测试。

练习：

- 用同一张关键帧生成 5 个 3-5 秒镜头。
- 只改变动作词，观察稳定性。

## Luma Dream Machine

入口：https://lumalabs.ai/dream-machine

适合：真实感运动、空间感、镜头运动和氛围镜头。

练习：

- 生成建立镜头、环境镜头、角色走动镜头。
- 检查空间是否稳定、角色是否漂移。

## Kling / 可灵

入口：https://klingai.com/

适合：图生视频、人物动作、中文用户常用工作流。

练习：

- 做角色动作测试：转身、跑步停下、伸手。
- 比较中文提示词和英文提示词输出差异。

## 即梦

入口：https://jimeng.jianying.com/

适合：中文图像/视频生成、和剪映生态衔接。

练习：

- 用中文分镜提示词生成短镜头。
- 进入剪映做快速声音和字幕整合。

## Haiper / Hailuo / 其他工具

用途：作为备选工具池。每个工具只做同题测试，不要陷入工具切换。

## 视频镜头提示词公式

```text
[shot size], [camera movement], [subject action], [emotion], [motion quality], [lighting], [style], [continuity constraints]
```

例子：

```text
close-up, slow dolly in, the girl notices the lantern glowing, eyes widen with cautious wonder, subtle breathing motion, warm light from below, animated short film style, same face and outfit as reference
```

## 工具对比字段

| 工具 | 最适合 | 不适合 | 角色稳定 | 镜头运动 | 成本 | 备注 |
| --- | --- | --- | --- | --- | --- | --- |
| Runway | 可控镜头 | 长复杂动作 | 中高 | 高 | 中高 | 官方课程多 |
| Pika | 快速创意 | 精确连续性 | 中 | 中 | 中 | 适合试错 |
| Luma | 空间与真实运动 | 强风格角色 | 中 | 高 | 中 | 适合环境镜头 |
| Kling/可灵 | 人物动作 | 多角色复杂场景 | 中高 | 中高 | 中 | 中文生态友好 |
| 即梦 | 中文工作流 | 严格工业流程 | 中 | 中 | 中 | 和剪映衔接方便 |