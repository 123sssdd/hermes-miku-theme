# Hermes 初音未来全透动态主题插件 (hermes-miku-theme)

专为 Hermes Desktop 打造的初音未来全窗口动态壁纸桌面插件。

## 核心特性

1. 全窗口 100% 原图画质零灰雾：壁纸铺满整个应用窗口（含左侧边栏、顶部标题栏、对话区与底部输入框），彻底移除灰蒙蒙的半透明遮罩与毛玻璃层，自带 28 秒缓慢镜头呼吸平移微动效。
2. 鲜亮纯黑字配双倍高亮度白色光晕：全局正文、侧边栏、代码块、思考推理过程、工具执行状态与图标统一采用鲜亮纯黑（`#000000`）配紧实双倍白光晕描边，无论壁纸局部是深色夜空还是浅色高光都清晰锐利。
3. 纯享背景模式快捷键：随时按 `⌘ + Shift + B`（Windows/Linux 为 `Ctrl + Shift + B`，或按 `Option + B`）一键隐去所有对话窗口与侧边栏，100% 纯净欣赏动态壁纸；再按一次或按 `Esc` 立即丝滑恢复。
4. 细致交互与防遮挡：
   - 用户发出的消息气泡常驻显示蓝紫色边框，方便快速定位；左侧边栏菜单与会话行仅在鼠标悬停时显示单个蓝框。
   - 聊天滚动视口底部根据输入框实时高度动态裁切，防止文字滚入透明输入框内产生重叠。
   - 设置页、管理档案页及搜索弹窗（Command Palette）保持不透明纯白底板，互不穿透干扰。

---

## 安装方法

### 方法一：一行命令极速安装（直接生效）

将本仓库直接克隆到 Hermes 的 `desktop-plugins` 目录即可（插件内置了 GitHub Raw 壁纸自动回退，克隆后 2 秒内自动热加载生效）：

```bash
git clone https://github.com/123sssdd/hermes-miku-theme.git ~/.hermes/desktop-plugins/miku-wallpaper
```

如果你想把壁纸缓存到本地离线使用（推荐），运行仓库自带的一键脚本：

```bash
cd ~/.hermes/desktop-plugins/miku-wallpaper
chmod +x install.sh
./install.sh
```

Windows PowerShell 用户可运行：

```powershell
git clone https://github.com/123sssdd/hermes-miku-theme.git "$HOME\.hermes\desktop-plugins\miku-wallpaper"
powershell -ExecutionPolicy Bypass -File "$HOME\.hermes\desktop-plugins\miku-wallpaper\install.ps1"
```

---

## 替换为你自己的壁纸

插件会优先读取本地插件数据目录中的 `bg.jpg`（支持 `.jpg` / `.png` / `.webp` / 动态 `.gif`）。你只需要把自己的图片传给安装脚本即可一键替换：

```bash
./install.sh /path/to/your-wallpaper.jpg
```

或者手动将图片复制覆盖到以下路径（建议宽度控制在 2560px 以内以保证流畅度），然后在 Hermes Desktop 中按 `⌘K` 选择「重载桌面插件」：

- macOS：`~/Library/Application Support/Hermes/plugin-files/data/miku-wallpaper/bg.jpg`
- Linux：`~/.config/Hermes/plugin-files/data/miku-wallpaper/bg.jpg`
- Windows：`%APPDATA%\Hermes\plugin-files\data\miku-wallpaper\bg.jpg`

---

## 快捷键说明

- `⌘ + Shift + B`（或 `Option + B`）：一键切换「纯享背景模式」（隐藏/恢复所有对话窗口与侧边栏）。
- `Esc`：在纯享背景模式下按 `Esc` 可直接恢复界面。
- `⌘ + K` 搜索「纯享背景模式」也可随时触发。

## 推荐搭配字体

插件默认优先调用霞鹜文楷繁体（`LXGW WenKai TC` / `LXGW WenKai`），若系统未安装则自动回退至系统原生苹果苹方 / 微软雅黑字体。
