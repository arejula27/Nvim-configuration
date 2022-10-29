local nnoremap = require("arejula27.keymap").nnoremap
local inoremap = require("arejula27.keymap").inoremap

-- Normal mode
--nnoremap("pv","<cmd>Ex<CR>") --Salir al directorio, relantiza el pegado
nnoremap("<leader>w","<cmd>w<CR>") -- Guardar archivo
nnoremap("<leader>q","<cmd>q<CR>") -- Salir del nvim
nnoremap("<C-q>","<cmd>q!<CR>") -- forzar salir de nvim  
nnoremap("<leader>c","<cmd>bdelete<CR>") -- Salir del archivo (cerrar buffer)

-- Insert mode
inoremap("jk","<ESC>")
--Visual mode
