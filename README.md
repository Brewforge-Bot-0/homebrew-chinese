# Homebrew-Chinese

![Homebrew](https://img.shields.io/badge/-Homebrew-FBB040?labelColor=555555&logoColor=FFFFFF&logo=homebrew) ![CI](https://github.com/Brewforge/homebrew-chinese/actions/workflows/schedule.yml/badge.svg) ![license](https://img.shields.io/github/license/Brewforge/homebrew-chinese) ![code-size](https://img.shields.io/github/languages/code-size/Brewforge/homebrew-chinese) ![repo-size](https://img.shields.io/github/repo-size/Brewforge/homebrew-chinese)

一个致力于为中国用户提供 [🍺 Homebrew](https://github.com/Homebrew/brew) 支持的中文库

本仓库收录：

- [x] 开源软件的中文版镜像
- [x] 面向中国用户的未被官方库收录的软件
- [x] 面向中国用户的国产商业软件

⚠️ [原仓库（ivaquero/homebrew-chinese）](https://github.com/ivaquero/legacy-homebrew-chinese) 的老顾客，请执行如下命令：

```bash
brew tap brewforge/chinese
brew tap brewforge/extras
rm -rf $(brew --repository)/Library/Taps/ivaquero/homebrew-chinese
```

👏 欢迎参与[仓库建设讨论](https://github.com/orgs/Brewforge/discussions) 🎙️

## 📝 太长不看

🙋‍♂️ 为什么会有本仓库

- 💪 国内用户访问 [Homebrew](https://github.com/Homebrew) 官方仓库比较费劲
- 🪜 下载过程流量消耗比较多，本仓库对通过 GitHub 发布内容使用 [GitHub Proxy](https://mirror.ghproxy.com) 进行加速

📦 收录列表

[![面向国人](https://img.shields.io/badge/%E9%9D%A2%E5%90%91%E5%9B%BD%E4%BA%BA-red?logo=homebrew&labelColor=555555)](列表.md) [![面向全球](https://img.shields.io/badge/%E9%9D%A2%E5%90%91%E5%85%A8%E7%90%83-blue?logo=homebrew&labelColor=555555)](https://github.com/Brewforge/homebrew-extras/blob/main/list.md)

## 🏃 准备

- 🪜 流量有限：🍺 HomebrewCN [Homebrew 国内安装脚本 | Gitee](https://gitee.com/cunkai/HomebrewCN) 🚴

> 该脚本自动配置了国内源，源码在 Gitee 开源，🍺 HomebrewCN 作者也写了 [常见错误的解决办法](https://gitee.com/cunkai/HomebrewCN/blob/master/error.md) 。

```sh
/bin/zsh -c "$(curl -fsSL https://gitee.com/cunkai/HomebrewCN/raw/master/Homebrew.sh)"
```

- 🪜 流量无限：[Homebrew 官方安装脚本](https://brew.sh/zh-cn/)

```sh
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

## 🍺 使用

🚰 把本仓库和 [brewforge/extras](https://github.com/Brewforge/homebrew-extras) **拍** 到自己 Mac 上（仅需初次）

- 🪜 流量有限：

```bash
brew tap brewforge/chinese https://mirror.ghproxy.com/https://github.com/Brewforge/homebrew-chinese
brew tap brewforge/extras https://mirror.ghproxy.com/https://github.com/Brewforge/homebrew-extras
```

- 🪜 流量无限：

```bash
brew tap brewforge/chinese
brew tap brewforge/extras
```

🔍 搜索

```sh
brew search <formula 或 cask>
```

🛒 安装

```sh
brew install <formula>
brew install --cask <cask>
```

🗑️ 卸载

```sh
brew rm <formula 或 cask>
```

🧾 列出已安装的软件

```sh
brew ls
```

🙏 更多帮助

```sh
brew help
```

## ✨ 一起维护

请直接发起 [拉取请求](https://github.com/Brewforge/homebrew-chinese/compare) 或 [工单](https://github.com/Brewforge/homebrew-chinese/issues/new/choose) 。

<!-- ## ❤️ 赞助者 -->
