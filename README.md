# auto-ls

zsh plugin to automatically ls by firstly trying to use [exa](https://the.exa.website/) or [colorls](https://github.com/athityakumar/colorls) commands on `cd`. If both of them are not found, the default `ls` command would be used.

## Installation

- colorls

```sh
gem install colorls
```

- exa
```sh
brew install exa
```

- Plugin

```sh
### antigen
antigen bundle gretzky/auto-ls

### zplugin
zplugin load gretzky/auto-ls

### zgen
zgen load gretzky/auto-ls

### ohmyzsh
git clone https://github.com/vqcuong/auto-ls $ZSH_CUSTOM/plugins/auto-ls

# Finally, add `auto-ls` to `plugins=()` in your `.zshrc`
```

## Environment
- By default, the plugin will not list hidden files and folders. To expose all objects, you must set this enviroment variable to your .zshrc file
```sh
echo 'export ZSH_AUTO_LS_LIST_ALL=true' >> ~/.zshrc
```
