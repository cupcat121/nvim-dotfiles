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
        require("plugins.lushwal-nvim"),
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
            cond = not vim.g.vscode,
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
            build = ":TSUpdate",
            init = function()
                local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
                parser_config.hypr = {
                    install_info = {
                        url = "https://github.com/luckasRanarison/tree-sitter-hypr",
                        files = { "src/parser.c" },
                        branch = "master",
                    },
                    filetype = "hypr",
                }
            end
        },


        {
            -- treesitter hyprland conf plugin
            "luckasRanarison/tree-sitter-hypr"
        },

        -- colorscheme
        {
            'marko-cerovac/material.nvim',
            enabled = true,
            cond = not vim.g.vscode,
            lazy = true,
            --[[ init = function()
			vim.cmd 'colorscheme material-deep-ocean'
		end ]]
        },
        {
            'rafamadriz/neon',
            enabled = true,
            cond = not vim.g.vscode,
            lazy = true,
        },
        {
            "folke/tokyonight.nvim",
            enabled = true,
            cond = not vim.g.vscode,
            lazy = true,
            priority = 1000,
            opts = {
                style = "storm",
                transparent = true,
            },
        },
        {
            "lunarvim/horizon.nvim",
            enabled = true,
            cond = not vim.g.vscode,
            lazy = false,
            init = function()
                vim.cmd [[colorscheme horizon]]
            end
        },
        {
            "xiyaowong/transparent.nvim",
            enable = false,
            cond = not vim.g.vscode,
            config = function()
                require("transparent").setup({ -- Optional, you don't have to run setup.
                    groups = {                -- table: default groups
                        'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
                        'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
                        'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
                        'SignColumn', 'StatusLine', 'StatusLineNC',
                        'EndOfBuffer',
                    },
                    extra_groups = {}, -- table: additional groups that should be cleared
                    exclude_groups = {}, -- table: groups you don't want to clear
                })
                require('transparent').clear_prefix('BufferLine')
            end
        },
        install = {
            -- install missing plugins on startup. This doesn't increase startup time.
            missing = true,
            -- colorscheme = { 'habamax' },
        },
    }
)
