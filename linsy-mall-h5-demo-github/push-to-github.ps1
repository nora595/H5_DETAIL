# 推送 H5 Demo 到 GitHub（PowerShell）

$GH = "$env:TEMP\gh-cli\bin\gh.exe"
if (-not (Test-Path $GH)) {
  $ghCmd = Get-Command gh -ErrorAction SilentlyContinue
  if ($ghCmd) { $GH = $ghCmd.Source } else {
    Write-Host "请先安装 GitHub CLI: winget install GitHub.cli"
    exit 1
  }
}

if (-not (& $GH auth status 2>$null)) {
  Write-Host "登录 GitHub..."
  & $GH auth login -h github.com -p https -w
}

$RepoName = "linsy-mall-h5-demo"
& $GH repo create $RepoName --public --source=. --remote=origin --push --description "LINSY mall H5 product detail demo"

Write-Host ""
Write-Host "完成！H5 详情页在线地址:"
Write-Host "  https://<你的用户名>.github.io/$RepoName/"
Write-Host ""
Write-Host "请在仓库 Settings -> Pages 中将 Source 设为 GitHub Actions"
