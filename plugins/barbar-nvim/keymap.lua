local keyset = vim.keymap.set
local opts = { noremap = true, silent = true }
local modes = { '', 'i', 't' }

-- Move to previous/next
keyset(modes, '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
keyset(modes, '<A-.>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
keyset(modes, '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
keyset(modes, '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
keyset(modes, '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
keyset(modes, '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
keyset(modes, '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
keyset(modes, '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
keyset(modes, '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
keyset(modes, '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
keyset(modes, '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
keyset(modes, '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
keyset(modes, '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
keyset(modes, '<A-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
keyset(modes, '<A-P>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
keyset(modes, '<A-u>', '<Cmd>BufferClose<CR>', opts)
-- Magic buffer-picking mode
-- keyset(modes, '<A-P>', '<Cmd>BufferPick<CR>', opts)

-- Sort automatically by...
-- keyset(modes, '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
-- keyset(modes, '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
-- keyset(modes, '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
-- keyset(modes, '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)
