local keyset = vim.keymap.set

--keybindings--
keyset('n', 'e', 'b', { desc = 'move cursor to tail of the previous word' })
keyset('n', 'b', 'e', { desc = 'move cursor to start of the next word' })
keyset('n', 'H', '^', { desc = 'move cursor to start of the current line (ignore "void" character)' })
keyset('n', 'L', '$', { desc = 'move cursor to tail of the current line' })

keyset({ 'n', 'x' }, 'x', '"_x', { desc = 'delete one char(without effecting registers)' })

keyset('n', 'gj', '<PageDown>', { desc = 'see vim.opt.scroll(set by 4)' })
keyset('n', 'gk', '<PageUp>', { desc = 'see vim.opt.scroll(set by 4)' })
keyset('n', 'gb', 'a<space><esc>', { desc = 'insert one space to the tail of word' })
keyset('n', 'gb', 'A<space><esc>', { desc = 'insect one space to the start of word' })
keyset('n', 'gl', 'o<esc>', { desc = 'proceed to a new line' })
keyset('n', 'gL', 'O<esc>', { desc = 'add a new line to the previous of current line' })
-- keyset('n', 'gt', 'i<tab><esc>', { desc = 'insert a <tab> to the tail of word' })

keyset('n', 'df', ':nohls<CR>', { desc = 'clean all highlights', silent = true })

keyset('v', '<', '<gv', { desc = 'add indents to the current line' })
keyset('v', '>', '>gv', { desc = 'unindent to the current line' })

keyset({'n', 'x'}, '<a-f>', '/', { desc='searching pattern from the current buffer' })
keyset({'n', 'x'}, '<a-F>', '?', { desc='searching pattern from the current buffer' })
-- may cause conflicts in insert mode
-- keyset('', '<C-j>', '<C-W>j', { desc = 'focus on the next split vertically', remap = true })
-- keyset('', '<C-k>', '<C-W>k', { desc = 'focus on the previous split vertically', remap = true })
-- keyset('', '<C-h>', '<C-W>h', { desc = 'focus on the next split horizonally', remap = true })
-- keyset('', '<C-l>', '<C-W>l', { desc = 'focus on the previous split horizonally', remap = true })
--
keyset('c', 'w!!', 'w !sudo tee >/dev/null %', { desc = 'save with the root permission', remap = true })
