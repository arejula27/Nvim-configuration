# Nvim-configuration

## Getting started
1. Dowload the content of the repo on the `~/.config/nvim` folder
```bash
git clone --depth 1 git@github.com:arejula27/Nvim-configuration.git ~/.config/nvim
```
2. Run the following command:
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
 ``` 
3. Enter neovim and open  `.config/nvim/lua/arejula27/packer.lua`. On the file run `:so`
4. On neo vim run `PackerSync`


## Requirements
 - NeoVim 
 - Tree-sitter CLI 
 - gcc 
 - [BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep) is required for live_grep and grep_string and is the first priority for find_files.
 - [Lua lsp sever](https://luals.github.io/wiki/build/)

## Default keys
A command is composed by `<Operator> <number> <motion>`

<table>
<tr><th>Operator</th><th>Motion</th></tr>
<tr><td>

|Action| Mapping | 
|--|--|
|Delete| `d`|
|Undo |`u`|
|Undo the whole line | `U`|
|Paste under the cursor| `p`|
|Paste above the cursor | `P`|
|Replace and go inside *Insert mode* | `c`|

</td><td>

|Action|Mapping|
|--|--|
|Go up|`j`|
|Go down|`k`|
|Go left|`h`|
|Go right|`l`|
|Next word|`w`|
|Word  back|`b`|
|From cursor to end of the word|`e`|
|Begining of the line|`0`|
|From cursor to end of the line|`$`|

</td></tr> </table>


## General Mappings

| Action       | Mapping     |
|--------------|-------------|
| Leader key   | `space`     |
| Escape key   | `jk` or `jj`|
| Close buffer | `Space + c` |
| Quit         | `Space + q` |
| Force quit   | `Ctrl + q`  |
| Save file    | `Space + w` |
| Explore dir  | `Space + pv`|
| Toggle diagnostics list | `Space + xx`|
| Toggle workspace diagnostics list | `Space + xw`|
| Toggle document diagnostics list | `Space + xd`|

## Fuzzy finder Mappings

| Action       | Mapping     |
|--------------|-------------|
| Git files    | `space + ff`   |
| Project files    | `space + pf`   |
| Text inside files  (live grep)   | `space + pg`   |

## Document

| Action       | Mapping     |
|--------------|-------------|
| Show line diagnostics   | `g + l`   |
| hover (show descriptions)    | `Shift + k`   |


## Terminal

| Action       | Mapping     |
|--------------|-------------|
| Show vertical terminal   | `t + v`   |
| Show horizontal terminal   | `t + h`   |
| Show floating terminal   | `t + f`   |

## Buffers

| Action       | Mapping     |
|--------------|-------------|
| Split horizontal  | `Ctrl + w  + s`   |
| Split vertical  | `Ctrl + w  + v`   |
| Change buffer  | `Ctrl + w  + <Motion>`  |

## Tabs 

| Action       | Mapping     |
|--------------|-------------|
| Go next  | `g + t `   |
| Go  previous  | `g + T`   |



## Todo
- Add [which key](https://github.com/folke/which-key.nvim)
- Add [Smart Splits](https://github.com/mrjones2014/smart-splits.nvim)
