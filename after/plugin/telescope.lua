local builtin = require('telescope.builtin')


-- keymaps
vim.keymap.set('n', '<leader>fa', builtin.find_files, {})
vim.keymap.set('n','<leader>ff', builtin.git_files, {})
vim.keymap.set('n','<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fg', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)


require("telescope").setup({
  defaults = {
    path_display = { "smart" },
  },
  extensions = {
    project = {
      base_dirs = {
        '~/workspaces/',
      },
      theme = "dropdown",
    },
  },

})
-- Project extension
require'telescope'.load_extension('project')
