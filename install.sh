#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HERMES_HOME_DIR="${HERMES_HOME:-$HOME/.hermes}"
PLUGIN_DIR="$HERMES_HOME_DIR/desktop-plugins/miku-wallpaper"

if [[ "$(uname -s)" == "Darwin" ]]; then
  DATA_DIR="$HOME/Library/Application Support/Hermes/plugin-files/data/miku-wallpaper"
else
  DATA_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/Hermes/plugin-files/data/miku-wallpaper"
fi

mkdir -p "$PLUGIN_DIR"
mkdir -p "$DATA_DIR"

cp "$SCRIPT_DIR/plugin.js" "$PLUGIN_DIR/plugin.js"

if [[ $# -ge 1 && -f "$1" ]]; then
  cp "$1" "$DATA_DIR/bg.jpg"
  echo "✓ 已安装自定义壁纸: $1 -> $DATA_DIR/bg.jpg"
elif [[ -f "$SCRIPT_DIR/assets/bg.jpg" ]]; then
  cp "$SCRIPT_DIR/assets/bg.jpg" "$DATA_DIR/bg.jpg"
  echo "✓ 已安装默认初音未来壁纸 -> $DATA_DIR/bg.jpg"
fi

echo "✓ 插件已安装到: $PLUGIN_DIR/plugin.js"
echo "提示: 打开 Hermes Desktop 按 ⌘K (或 Ctrl+K) 选择「重载桌面插件」即可生效；按 ⌘+Shift+B 可随时切换纯享背景模式。"
