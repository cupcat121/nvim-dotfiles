return {
	-- tabs monitor
	'romgrk/barbar.nvim',
	enabled = true,
	dependencies = {
		'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
		'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
	},
	init = function()
        vim.g.barbar_auto_setup = false
        
        -- keymap setup
        require("plugins.barbar-nvim.keymap")
	end,
	opts = {
		animation = false,
		insert_at_start = true,
		auto_hide = true,
	},
	version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
