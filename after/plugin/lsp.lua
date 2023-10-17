local lsp = require('lsp-zero')

lsp.preset('recommended')





-- Fix Undefined global 'vim'
lsp.configure('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({buffer = bufnr})
    if client.name == "eslint" then
        vim.cmd.LspStop('eslint')
        return
    end
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
  vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
  vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
  vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
  vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
end)

 -- LSP servers
lsp.setup_servers({'lua_ls', 'gopls'})
lsp.setup()

 -- diagnostics inline (errors, warning,etc.)
vim.diagnostic.config({
    virtual_text = true,
})



local cmp = require('cmp')

cmp.setup({
  window = {
       completion = cmp.config.window.bordered(),
       documentation = cmp.config.window.bordered(),
    },
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  }
})
