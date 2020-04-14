# Dotfile

## 效果预览:
#若图像无法显示请点击表头链接

|[Info](https://s1.ax1x.com/2020/04/11/G7BaFO.png)|[Preview](https://s1.ax1x.com/2020/04/11/G7BdYD.gif)|
|-------|----|
|![pic](https://s1.ax1x.com/2020/04/11/G7BaFO.png)| ![gif](https://s1.ax1x.com/2020/04/11/G7BdYD.gif)

---

## 介绍

- 自用dotfiles, 从接触i3开始完善到现在
- 对纯键盘操作进行优化
- 其他的发行版未测试, 理论上也适用
- 具体的系统环境参考图1(Info)

---

## 安装方法:

### 执行部署脚本
```bash
$ git clone https://github.com/npchitman/dot_files

$ cd dot_files

$ sh put.sh
```

### 安装字体

* [Fantasque](https://github.com/belluzj/fantasque-sans): 非常好看的编程用字体
* [Font-Awesome](https://fontawesome.com/download): 图标, 可在[这里](https://fontawesome.com/cheatsheet?from=io)查找

---

## 使用方法

### 快捷键
* 全部快捷键在[i3config](https://github.com/npchitman/dotfiles/blob/master/config/i3/config)配置里, 举出一些例子

#### 快捷菜单

|按键|说明|
|------|----|
|Super + d | 快捷启动应用
|Super + Shift + d | 应用菜单
|Super + Shift + w | 快捷启动站点
|Super + shift + e | 电源选项


#### 音频控制

* 需要[playerctl](https://github.com/altdesktop/playerctl)支持,
[spotify](https://www.spotify.com/)下完美使用, 其他自行测试

|按键|说明|
|------|----|
|Super + Shift + n/m|播放上一首/下一首曲子|
|Super + Alt + p|暂停/继续播放|
|Super + Alt + k/j|音量增加/减少|
|Super + Alt + m|静音/取消静音|

#### 其他

|按键|说明|
|------|----|
|Super + Alt + w|随机壁纸与相应配色, 需要[pywal](https://github.com/dylanaraps/pywal)支持
|Super + a| 快速截图, 需要[scort](https://github.com/dreamer/scrot)支持

---

## 配置文件包含的应用
### - config

|应用名|说明|
|------|----|
|[compton](https://github.com/tryone144/compton)| 独立合成管理器, 为i3提供`淡入淡出`, `阴影`等效果|
|[dunst](https://github.com/dunst-project/dunst)| 通知窗口
|[i3](https://github.com/Airblader/i3)| i3桌面配置
|[polybar](https://github.com/polybar/polybar)| 系统状态栏, 若要使用请参考[wiki](https://github.com/polybar/polybar/wiki)
|[ranger](https://github.com/ranger/ranger)| tui文件浏览器, 支持图片预览等功能
|[rofi](https://github.com/davatorium/rofi)| 包含程序启动器, 电源菜单, 网站快捷打开菜单
|[termite](https://github.com/thestinger/termite)| 模拟终端
|[tilda](https://github.com/lanoxx/tilda)| 下拉式模拟终端
|[vimiv](https://github.com/karlch/vimiv)| 类vim操作的图片浏览工具

---

### - emacs

* 基于 [redguardtoo/emacs.d](https://github.com/redguardtoo/emacs.d)
的配置, 若要使用, 请参考[文档](https://github.com/redguardtoo/emacs.d/blob/master/README.org)

* custom.el: 请参考 [overide default setup](https://github.com/redguardtoo/emacs.d#override-default-setup)

---

### - nvim

* 使用 [thinkvim](https://github.com/npchitman/ThinkVim) 的配置
* thinkvim.d: 参考[User Custom](https://github.com/hardcoreplayers/ThinkVim/wiki/Quickstart#user-custom)

#### 快捷键绑定
下面是个人自定义快捷键, 关于 [thinkvim](https://github.com/npchitman/ThinkVim) 默认的快捷键参考 [leaderkey.vim](https://github.com/npchitman/ThinkVim/blob/master/keybinds/leaderkey.vim) 和 [motion.vim](https://github.com/npchitman/ThinkVim/blob/master/keybinds/motion.vim)

|快捷键|说明|
|---|---|
|H/L|移动到改行句首/尾
|Ctrl g|映射为Esc键
|;cc/cu|注释/取消注释
|;;k/j |向上/下快速跳转光标
|;q    |退出vim

---

### - xorg

X系统相关配置, 下面给出相关wiki
* [Xresources](https://wiki.archlinux.org/index.php/X_resources)
* [Xinitrc](https://wiki.archlinux.org/index.php/Xinit#xinitrc)
* [Xprofile](https://wiki.archlinux.org/index.php/Xprofile)

---

### - zsh

zsh相关配置, 参考[ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
* zprofile
* zshrc

---

