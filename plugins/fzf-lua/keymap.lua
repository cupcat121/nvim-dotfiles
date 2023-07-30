local keyset = vim.keymap.set

keyset({ "n" }, "gt", "<cmd>FzfLua buffers<CR>", { desc = "choose buffer" })

keyset({ "n", "i" }, "<C-M-o>", "<cmd>FzfLua files<CR>", { desc = "opened files" })
keyset({ "n", "i" }, "<C-`>", "<cmd>FzfLua oldfiles<CR>", { desc = "opened files history" })
keyset({ "n" }, "<C-f>", "<cmd>FzfLua lgrep_curbuf<CR>", { desc = "search from current buffer" })
keyset({ "n" }, "<C-M-f>", "<cmd>FzfLua grep_project<CR>", { desc = "search all project lines" })
keyset({ "n" }, "#", "<cmd>FzfLua grep_cword<CR>", { desc = "search word under cursor" })

keyset({ "c" }, "<C-space>", "<cmd>FzfLua commands<CR>", { desc = "search neovim commands" })
keyset({ "c" }, "<C-f>", "<cmd>FzfLua command_history<CR>", { desc = "search neovim commands history" })

-- keyset({ "n", "i" }, "<C-f>", "<cmd>FzfLua builtin<CR>", { desc = "open FzfLua command window" })
keyset({ "n", "i" }, "<C-3>", "<cmd>FzfLua registers<CR>", { desc = "list contents of registers" })

keyset({ "n" }, "g\\", "<cmd>FzfLua keymaps<CR>", { desc = "view keymaps list" })
