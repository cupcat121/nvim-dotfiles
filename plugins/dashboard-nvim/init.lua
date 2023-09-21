return {
	-- startup dashboard
	'glepnir/dashboard-nvim',
	enabled = true,
    cond = not vim.g.vscode,
	event = 'VimEnter',
	opts = {},
	dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
