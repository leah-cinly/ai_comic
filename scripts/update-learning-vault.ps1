param(
  [string]$VaultRoot = (Resolve-Path "$PSScriptRoot\..").Path
)

$date = Get-Date -Format "yyyy-MM-dd"
$outDir = Join-Path $VaultRoot "AI动画学习库\07-资料抓取\每日更新"
New-Item -ItemType Directory -Force $outDir | Out-Null

$outFile = Join-Path $outDir "$date.md"

$sources = @(
  @{ Name = "PixAI"; Url = "https://pixai.art/"; Use = "二次元与插画风格、角色设定、提示词参考" },
  @{ Name = "Lexica"; Url = "https://lexica.art/"; Use = "图像提示词检索、风格词积累" },
  @{ Name = "OpenArt"; Url = "https://openart.ai/"; Use = "AI 图像工作流、风格与模型参考" },
  @{ Name = "Runway Academy"; Url = "https://academy.runwayml.com/"; Use = "AI 视频工具教程与镜头实验" },
  @{ Name = "Pixar in a Box"; Url = "https://www.khanacademy.org/computing/pixar"; Use = "动画、故事、视觉理论基础" },
  @{ Name = "Animation Mentor Blog"; Url = "https://www.animationmentor.com/blog/"; Use = "动画表演与行业经验" },
  @{ Name = "StudioBinder Screenwriting"; Url = "https://www.studiobinder.com/blog/category/screenwriting/"; Use = "剧本结构、场景、角色写作" }
)

$lines = @()
$lines += "# $date AI动画学习更新"
$lines += ""
$lines += "## 今日学习策略"
$lines += ""
$lines += "1. 选一个理论概念，写成 200 字以内的理论卡。"
$lines += "2. 选一个工具或提示词方向，做 3 次输出实验。"
$lines += "3. 把最好的结果沉淀到 [[提示词素材库]]。"
$lines += "4. 用 5-10 分钟复盘：它能不能服务一个真实镜头？"
$lines += ""
$lines += "## 今日资料源"
$lines += ""

foreach ($source in $sources) {
  $lines += "- [$($source.Name)]($($source.Url))：$($source.Use)"
}

$lines += ""
$lines += "## 抓取与阅读记录"
$lines += ""
$lines += "| 来源 | 读到的概念 | 可迁移到短片的做法 | 后续动作 |"
$lines += "|---|---|---|---|"
foreach ($source in $sources) {
  $lines += "| $($source.Name) |  |  |  |"
}

$lines += ""
$lines += "## 今日提示词沉淀"
$lines += ""
$lines += "```text"
$lines += "cinematic animated short film still, expressive character acting, clear staging, consistent character design, emotionally readable lighting"
$lines += "```"
$lines += ""
$lines += "## 今日小练习"
$lines += ""
$lines += "- 写 3 个 1 分钟动画短片 logline。"
$lines += "- 选其中一个，拆成 5 个镜头。"
$lines += "- 为第 1 个镜头生成 3 个风格版本。"

Set-Content -LiteralPath $outFile -Value ($lines -join [Environment]::NewLine) -Encoding UTF8
Write-Host "已更新：$outFile"
