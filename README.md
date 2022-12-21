# Nvim-configuration

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

## Fuzzy finder Mappings

| Action       | Mapping     |
|--------------|-------------|
| Git files    | `space + ff`   |
| Project files    | `space + pf`   |



## Todo
- Add [which key](https://github.com/folke/which-key.nvim)
- Add [Smart Splits](https://github.com/mrjones2014/smart-splits.nvim)
