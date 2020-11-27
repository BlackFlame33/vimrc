![vimrc](https://socialify.git.ci/BlackFlame33/vimrc/image?description=1&descriptionEditable=My%20vimrc&font=Source%20Code%20Pro&forks=1&issues=1&language=1&logo=http%3A%2F%2Fblackflame33.cn%2Fimg%2Favatar.png&owner=1&pattern=Plus&pulls=1&stargazers=1&theme=Light)

# 我的个人vimrc

在断断续续使用vim半年后,我终于决定将vim作为我今后的主力编辑器.感谢[amix/vimrc](https://github.com/amix/vimrc)让我在习惯vim的过程中不断发出"Wow, awesome!"的感叹.但在我想更改或添加配置时,总是感觉力不从心.这是因为我仅仅只是使用了这套配置,而从没有真正深入了解过这套配置.

所以我在花了一两个星期阅读所有<code>vimrcs</code>文件夹下的文件,以及配套的插件仓库主页wiki,最终生成了一份我个人的<code>.vimrc</code>.这套配置能让我很轻易的在Windows和Mac OS上同步我的vim配置.

我还在持续不断地学习vim,这个README.md的目的主要还是来写一些配置的说明,方便自己不明白的时候不用花重复的时间翻阅wiki和google

## 如何安装?

```shell
git clone --depth=1 git@github.com:BlackFlame33/vimrc.git ~/.vim_runtime
```

配置主体的格式是类似这样的:

```shell
├── my_configs.vim			// 个性化设置 
├── .vimrc				    // 配置主体
└── vimrcs				    // 拆开的各部分设定
    ├── basic.vim			// 通用的基础设置
    ├── extended.vim		// 通用的高级设置
    ├── filetypes.vim		// 打开对应文件时调用的设置
    └── plugins_config.vim	// 插件的相关设置,随登录的插件变化而变化
```

## 字体

因为[vim-airline](https://github.com/vim-airline/vim-airline)的一些配置需要使用[powerline-fonts](https://github.com/powerline/fonts),如果字体不兼容的话显示效果会大打折扣.我推荐的是FiraCode Nerd Font