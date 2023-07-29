-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local keyset = vim.keymap.set

keyset('n', '<M-`>3', vim.diagnostic.open_float)
keyset('n', 'g[', vim.diagnostic.goto_prev)
keyset('n', 'g]', vim.diagnostic.goto_next)
keyset('n', '<M-`>#', "<cmd>FzfLua diagnostics_workspace<CR>")

local opts = {}
keyset('n', 'ga', "<cmd>FzfLua lsp_declarations<CR>", opts)
keyset('n', 'gd', "<cmd>FzfLua lsp_definitions<CR>", opts)
keyset('n', 'K', vim.lsp.buf.hover, opts)
keyset('n', 'gi', "<cmd>FzfLua lsp_implementations<CR>", opts)
keyset('n', '<C-q>', vim.lsp.buf.signature_help, opts)
keyset('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
keyset('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
keyset('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end, opts)
keyset('n', 'gD', "<cmd>FzfLua lsp_typedefs<CR>", opts)
keyset('n', '<S-f6>', vim.lsp.buf.rename, opts)
keyset({ 'n', 'v' }, '<M-CR>', "<cmd>FzfLua lsp_code_actions<CR>", opts)
keyset('n', 'gr', "<cmd>FzfLua lsp_references<CR>", opts)
keyset('n', '<C-l>', function()
    vim.lsp.buf.format { async = true }
end, opts)
