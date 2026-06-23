# 分镜与 Animatic 工作流

## 为什么先做 Animatic

AI 视频很容易生成漂亮但不连贯的片段。Animatic 的作用是先验证故事、镜头和节奏，再进入图像与视频生成。

## 工作流

1. 写 logline。
2. 拆 5 拍结构。
3. 写镜头清单。
4. 做粗分镜。
5. 剪成 animatic。
6. 加临时音乐和音效。
7. 调整镜头时长。
8. 再进入 AI 图像/视频生成。

## 镜头清单字段

| 镜头 | 景别 | 机位 | 动作 | 情绪 | 时长 | 声音 | 生成方式 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 01 | 远景 | 平视 | 建立环境 | 孤独 | 3s | 风声 | 图生视频 |

## 分镜工具

- Storyboarder：开源分镜和 animatic 工具。https://github.com/wonderunit/storyboarder
- Krita：可画分镜、逐帧动画和洋葱皮。https://docs.krita.org/en/user_manual/animation.html
- Blender Video Sequencer：可剪 animatic，也能做 3D 预演。https://docs.blender.org/manual/en/latest/video_editing/index.html
- DaVinci Resolve：剪辑、调色、声音整合。https://www.blackmagicdesign.com/products/davinciresolve

## 分镜提示词模板

```text
storyboard panel, grayscale, simple background, clear staging, [shot size], [camera angle], [character action], readable silhouette, animation timing notes
```

## Animatic 检查表

- 不看文字也能理解故事吗？
- 每个镜头是否只有一个主要信息？
- 镜头时长是否符合情绪？
- 动作是否能接上下一镜？
- 音效是否提示了重要信息？

## 练习

用同一个故事做两个版本：

- 12 镜头版本：讲清楚完整故事。
- 6 镜头版本：只保留最关键的信息。

比较哪个更清楚，删掉重复镜头。