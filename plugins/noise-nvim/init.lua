return {
	-- better UI
	'folke/noice.nvim',
	enabled = true,
    cond = not vim.g.vscode,
	event = 'VeryLazy',
	opts = {},
	dependencies = {
		'MunifTanjim/nui.nvim',
		{
            'rcarriga/nvim-notify',
            config = function ()
                local notify = require('notify')
                notify.setup({
                    timeout = 2500,
                    max_width = 400,
                    max_height = 1000,
                    minimum_width = 40,
                    stages = "fade",
                    render = "compact",
                    fps = 40,
                })
            end,
        },
	},
}
