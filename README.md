# auto-ls

zsh plugin to automatically `ls` trying to use [exa](https://the.exa.website/) or [colorls](https://github.com/athityakumar/colorls) on `cd`. If both of them not found, the default `ls` would be used.

## installation

- colorls

```sh
gem install colorls
```

- exa
```sh
brew install exa
```

- Plugin

```bash
### antigen
antigen bundle gretzky/auto-color-ls

### zplugin
zplugin load gretzky/auto-color-ls

### zgen
zgen load gretzky/auto-color-ls

### ohmyzsh
git clone https://github.com/vqcuong/auto-ls $ZSH_CUSTOM/plugins/auto-ls

# Finally, add `auto-ls` to `plugins=()` in your `.zshrc`
```
