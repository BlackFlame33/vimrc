![vimrc](https://socialify.git.ci/BlackFlame33/vimrc/image?description=1&descriptionEditable=My%20vimrc&font=Source%20Code%20Pro&forks=1&issues=1&language=1&logo=http%3A%2F%2Fblackflame33.cn%2Fimg%2Favatar.png&owner=1&pattern=Plus&pulls=1&stargazers=1&theme=Light)


<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [我的个人 vimrc](#%E6%88%91%E7%9A%84%E4%B8%AA%E4%BA%BA-vimrc)
  - [如何安装](#%E5%A6%82%E4%BD%95%E5%AE%89%E8%A3%85)
  - [字体](#%E5%AD%97%E4%BD%93)
  - [其他](#%E5%85%B6%E4%BB%96)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


# 我的个人 vimrc

在断断续续使用 vim 半年后，我终于决定将 vim 作为我今后的主力编辑器。感谢[amix/vimrc](https://github.com/amix/vimrc)让我在习惯 vim 的过程中不断发出"Wow, awesome!"的感叹。但在我想添加或更改配置时，总是感觉力不从心，并很容易出错。这是因为我仅仅只是使用了这套配置，而从没有真正深入了解过。

所以我决定建立一个真正属于自己的 vimrc 体系。在花了一两个星期阅读所有<code>amix/vimrc/vimrcs</code>文件夹下的文件,以及满足我个人需求的一些插件的仓库主页 wiki 后，最终生成了一份我个人的<code>.vimrc</code>。这套配置能让我很轻易的在 Windows 和 Mac OS 上同步我的 vim 配置，并享受使用 vim 的快乐。

我还在持续不断地学习 vim。这个仓库的目的除了托管外，还是想写一些配置的说明，方便自己不明白的时候不用花重复的时间翻阅 wiki 和 Google。

如果你对我的配置感兴趣，或有任何问题，欢迎讨论。期待和各位大佬的交流！

那么详细的配置说明在目录[其他](#其他)中。Have fun and Enjoy :)!

## 配置目录结构

配置的结构是这样的:

```shell
├── install.sh			    // 安装脚本
├── my_configs.vim			// 个性化设置 
└── vimrcs				    // 拆开的各部分设定
    ├── basic.vim			// 通用的基础设置
    ├── extended.vim		// 通用的高级设置
    ├── filetypes.vim		// 打开对应文件时调用的设置
    └── plugins_config.vim	// 插件的相关设置,随登录的插件变化而变化
```

## 字体

因为[vim-airline](https://github.com/vim-airline/vim-airline)和其他有关界面的一些配置需要使用[powerline-fonts](https://github.com/powerline/fonts)，如果字体不兼容的话显示效果会大打折扣。我推荐的是[FiraCode Nerd Fonts](https://github.com/tonsky/FiraCode)，除了有 Nerd Font 带来的字型图形效果外，还有 Fira Code 系列的连字效果，可读性大大提高。(注意需要下载的是带 nerd-font 的 fira code，否则是没有字型图形效果的)

![Fira Code](https://cdn.jsdelivr.net/gh/BlackFlame33/ImgHosting@master/img/20201129144406.svg)

## 如何安装

```bash
git clone --depth=1 git@github.com:BlackFlame33/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install.sh
```

我的 vimrc 有设定启动 vim 自动下载[vim-plug](https://github.com/junegunn/vim-plug)，所以只需要输入 vim 就能愉快地享用啦:)不过第一次进入 vim 时强烈建议使用科学上网，否则从 Github 克隆数个仓库真的太难受了



## 其他

未完待续～

> TO-DO: myconfigs.vim
