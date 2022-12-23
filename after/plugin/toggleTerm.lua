require("toggleterm").setup{}
vim.keymap.set('n','<leader>th',"<cmd>ToggleTerm size=10 direction=horizontal<cr>",{})
vim.keymap.set('n','<leader>tv',"<cmd>ToggleTerm size=80 direction=vertical<cr>",{})
vim.keymap.set('n','<leader>tf',"<cmd>ToggleTerm direction=float<cr>",{})
