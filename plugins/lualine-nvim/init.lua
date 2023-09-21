return {
	-- statusbar
	'nvim-lualine/lualine.nvim',
	enabled = true,
    cond = not vim.g.vscode,
	dependencies = { { 'nvim-tree/nvim-web-devicons' } },
	opts = {
		theme = 'tokyonight',
	},
}
