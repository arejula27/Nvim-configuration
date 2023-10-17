-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.
-- DOCS: https://github.com/nvim-lualine/lualine.nvim
-- stylua: ignore


require('lualine').setup {
  options = {
    --    theme = "", -- check: https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md
    component_separators = '|',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { left = '' }, right_padding = 2 },
    },
    lualine_b = { 'filename', 'branch' },
    lualine_c = { 'fileformat'},
    lualine_x = {'diagnostics'},
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {
    --lualine_c={'buffers'},
    lualine_z={{'tabs',separator = {right = '',left = ''} ,left_padding = 2}},
  }
}
