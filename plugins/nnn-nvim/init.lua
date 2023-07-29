return {
	-- file explorer
	'luukvbaal/nnn.nvim',
	enabled = true,
	init = function()
	end,
	config = function()
		local nnn = require('nnn')
		local builtin = nnn.builtin
		nnn.setup({
			explorer = {
				cmd = "nnn -Ho",
				width = 24, -- width of the vertical split
				side = "botright", -- or "botright", location of the explorer window
				tabs = true, -- separate nnn instance per tab
				fullscreen = false, -- whether to fullscreen explorer window when current tab is empty
			},
			picker = {
				cmd = "tmux new-session nnn -Hoi", -- command override (-p flag is implied)
				style = {
					width = 0.5,       -- percentage relative to terminal size when < 1, absolute otherwise
					height = 0.6,      -- ^
					xoffset = 0.5,     -- ^
					yoffset = 0.5,     -- ^
					border =
					"rounded"          -- border decoration for example "rounded"(:h nvim_open_win)
				}
			},
			auto_close = true,
			auto_open = {
				setup = nil, -- or "explorer" / "picker", auto open on setup function
				tabpage = nil, -- or "explorer" / "picker", auto open when opening new tabpage
				empty = false, -- only auto open on empty buffer
				ft_ignore = { -- dont auto open for these filetypes
					"gitcommit",
				},
			},
			mappings = {
				{ "<C-t>", builtin.open_in_tab }, -- open file(s) in tab
				{ "<C-s>", builtin.open_in_split }, -- open file(s) in split
				{ "<C-v>", builtin.open_in_vsplit }, -- open file(s) in vertical split
				{ "<C-p>", builtin.open_in_preview }, -- open file in preview split keeping nnn focused
				{ "<C-y>", builtin.copy_to_clipboard }, -- copy file(s) to clipboard
				{ "<C-w>", builtin.cd_to_path }, -- cd to file directory
				{ "<C-e>", builtin.populate_cmdline }, -- populate cmdline (:) with file(s)
			},
			windownav = {                   -- window movement mappings to navigate out of nnn
				left = "<C-h>",
				right = "<C-l>",
				next = "<C-j>",
				prev = "<C-k>",
			},
			buflisted = false,
			offset = true,
		})
	end,
    init = function ()
        -- disable netrw
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- keymap setup
        require("plugins.nnn-nvim.keymap")
    end,
}
