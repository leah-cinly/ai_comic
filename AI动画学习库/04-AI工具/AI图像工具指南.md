# AI 图像工具指南

## 目标

AI 图像工具在动画短片中主要用于：角色设定、场景设定、风格板、关键帧、分镜美术化、海报和缩略图。

## PixAI

入口：https://pixai.art/

适合：anime / illustration 风格、角色图、二次元角色一致性素材积累。

学习任务：

- 搜索 20 张同类角色图，拆解发型、服装、表情、构图关键词。
- 生成一张角色主参考图，再扩展表情和动作。
- 记录哪些词会导致角色变脸。

提示词方向：

```text
anime character design, same character, expressive face, clean line art, character sheet, consistent outfit, front view, side view, back view
```

## Lexica

入口：https://lexica.art/

适合：搜索 Stable Diffusion 风格图、学习关键词组合、建立风格词库。

学习任务：

- 搜索同一主题的 30 张图。
- 把提示词拆成主体、风格、光线、镜头、质量词。
- 建立自己的“可迁移词库”。

## OpenArt

入口：https://openart.ai/

适合：风格探索、参考图实验、提示词迭代、不同模型对比。

学习任务：

- 同一角色生成 3 种风格方案。
- 同一镜头生成 3 种景别方案。
- 对比哪些设置最能保持角色一致。

## Midjourney

入口：https://www.midjourney.com/

适合：高质量概念图、气氛图、风格探索、海报。

局限：角色连续性和精确控制需要额外策略。

建议：用它做视觉方向，不要直接当最终镜头生产线。

## Stable Diffusion / ComfyUI

ComfyUI GitHub：https://github.com/comfyanonymous/ComfyUI

适合：可控工作流、批量生成、ControlNet、IP-Adapter、LoRA、局部重绘。

学习任务：

- 搭建 text-to-image 基础工作流。
- 用 ControlNet 控制姿势。
- 用 IP-Adapter 或参考图保持角色。
- 保存工作流 JSON 和输出参数。

## 统一记录格式

| 工具 | 任务 | 提示词 | 参考图 | 输出问题 | 改法 | 可复用程度 |
| --- | --- | --- | --- | --- | --- | --- |

## 图像生成检查表

- 角色是否一致？
- 姿态是否清楚？
- 背景是否抢戏？
- 光源方向能否接到下一镜？
- 画面是否能作为视频生成关键帧？