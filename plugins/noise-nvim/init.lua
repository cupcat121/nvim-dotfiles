return {
	-- better UI
	'folke/noice.nvim',
	enabled = true,
    cond = not vim.g.vscode,
	event = 'VeryLazy',
	opts = {},
	dependencies = {
		'MunifTanjim/nui.nvim',
		'rcarriga/nvim-notify',
	},
}
