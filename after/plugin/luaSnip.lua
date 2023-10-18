
local nnoremap = require("arejula27.keymap").nnoremap
local inoremap = require("arejula27.keymap").inoremap

--require("luasnip.loaders.from_vscode").load({ include = { "python","golang","lua" } }) -- Load only python snippets
require("luasnip.loaders.from_vscode").lazy_load({})

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
inoremap("<c-j>","<cmd>lua require'luasnip'.jump(1)<CR>",opts)
inoremap("<c-k>","<cmd>lua require'luasnip'.jump(-1)<CR>",opts)

