-- init for lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)


-- plugins setup
require("lazy").setup(
    {
        require("plugins.coc-nvim"),
        require("plugins.fzf-lua"),
        require("plugins.nnn-nvim"),
        require("plugins.noise-nvim"),
        require("plugins.dashboard-nvim"),
        require("plugins.Comment-nvim"),
        require("plugins.nvim-surround"),
        require("plugins.lualine-nvim"),
        require("plugins.barbar-nvim"),
        require("plugins.indent-blankline-nvim"),
        require("plugins.nvim-autopairs"),
        require("plugins.toggleterm-nvim"),
        require("plugins.vim-fugitive"),
        require("plugins.SmoothCursor-nvim"),
        require("plugins.asynctasks-vim"),
        require("plugins.flash-nvim"),
        require("plugins.goto-preview"),
        require("plugins.nvim-cmp"),
        require("plugins.nvim-lspconfig"),
        {
            -- yuck filetype support
            "elkowar/yuck.vim"
        },
        {
            -- automatically highlighting other uses of the word
            'RRethy/vim-illuminate',
            config = function()
                require('illuminate').configure({
                    delay = 100,
                    under_cursor = true,
                })
            end,
        },
        {
            -- title bar
            "utilyre/barbecue.nvim",
            enabled = true,
            name = "barbecue",
            version = "*",
            dependencies = {
                "SmiteshP/nvim-navic",
                "nvim-tree/nvim-web-devicons", -- optional dependency
            },
            opts = {
                theme = 'tokyonight',
            },
        },
        {
            -- code parsing system and better highlighting
            'nvim-treesitter/nvim-treesitter',
            enabled = true,
        },

        -- colorscheme
        {
            'marko-cerovac/material.nvim',
            enabled = true,
            lazy = true,
            --[[ init = function()
			vim.cmd 'colorscheme material-deep-ocean'
		end ]]
        },
        {
            'rafamadriz/neon',
            enabled = true,
            lazy = true,
        },
        {
            "folke/tokyonight.nvim",
            enabled = true,
            lazy = false,
            priority = 1000,
            opts = {
                style = "storm",
                transparent = true,
            },
            init = function()
                vim.cmd [[colorscheme tokyonight]]
            end
        },

    },
    {
        install = {
            -- install missing plugins on startup. This doesn't increase startup time.
            missing = true,
            -- colorscheme = { 'habamax' },
        },
    }
)
