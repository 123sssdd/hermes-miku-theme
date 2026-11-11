param(
  [string]$WallpaperPath = ""
)

$ErrorActionPreference = "Stop"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$HermesHome = if ($env:HERMES_HOME) { $env:HERMES_HOME } else { Join-Path $HOME ".hermes" }
$PluginDir = Join-Path $HermesHome "desktop-plugins\miku-wallpaper"
$DataDir = Join-Path $env:APPDATA "Hermes\plugin-files\data\miku-wallpaper"

New-Item -ItemType Directory -Force -Path $PluginDir | Out-Null
New-Item -ItemType Directory -Force -Path $DataDir | Out-Null

Copy-Item (Join-Path $ScriptDir "plugin.js") (Join-Path $PluginDir "plugin.js") -Force

if ($WallpaperPath -and (Test-Path $WallpaperPath)) {
  Copy-Item $WallpaperPath (Join-Path $DataDir "bg.jpg") -Force
  Write-Host "✓ 已安装自定义壁纸: $WallpaperPath"
} elseif (Test-Path (Join-Path $ScriptDir "assets\bg.jpg")) {
  Copy-Item (Join-Path $ScriptDir "assets\bg.jpg") (Join-Path $DataDir "bg.jpg") -Force
  Write-Host "✓ 已安装默认初音未来壁纸 -> $DataDir\bg.jpg"
}

Write-Host "✓ 插件已安装到: $PluginDir\plugin.js"
Write-Host "提示: 在 Hermes Desktop 按 Ctrl+K 选择「重载桌面插件」即可生效；按 Ctrl+Shift+B 可切换纯享背景模式。"
