param(
  [string]$Message = "Update AI animation learning vault"
)

$ErrorActionPreference = "Stop"
$VaultRoot = (Resolve-Path "$PSScriptRoot\..").Path
Set-Location $VaultRoot

if (-not (Test-Path ".git")) {
  git init
  git branch -M main
}

$remote = & git remote get-url origin 2>$null
if ($LASTEXITCODE -ne 0 -or -not $remote) {
  Write-Host "还没有设置 GitHub 远程仓库。请先运行："
  Write-Host "git remote add origin https://github.com/你的用户名/你的仓库名.git"
  exit 1
}

git add .

$hasChanges = git status --porcelain
if (-not $hasChanges) {
  Write-Host "没有需要同步的新变化。"
  exit 0
}

$date = Get-Date -Format "yyyy-MM-dd HH:mm"
git commit -m "$Message - $date"
git push -u origin main
Write-Host "已同步到 GitHub：$remote"
