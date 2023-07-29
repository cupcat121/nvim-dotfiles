local keyset = vim.keymap.set   -- external mappings
keyset({ '', 'i', 't' }, '<A-`>1', '<cmd>NnnExplorer %:p:h<CR>',
	{ desc = 'open side bar with nnn' })
keyset({ '', 'i', 't' }, '<A-`>!', '<cmd>NnnPicker %:p:h<CR>',
	{ desc = 'open float win with nnn' })

