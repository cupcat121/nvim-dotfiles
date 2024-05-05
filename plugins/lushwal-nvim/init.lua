return {
    "oncomouse/lushwal.nvim",
    enabled = false,
    cmd = { "LushwalCompile" },
    dependencies = {
        { "rktjmp/lush.nvim" },
        { "rktjmp/shipwright.nvim" },
    },
    init = function()
        vim.cmd [[colorscheme lushwal]]
        vim.g.lushwal_configuration = {
            compile_to_vimscript = true,
            color_overrides = function(colors)
                local lush = require("lush")
                local overrides = {
                    -- this causes a warning for invaild background color value
                    background = "NONE",
                }
                return vim.tbl_extend("force", colors, overrides)
            end,
            addons = {
                ale = false,
                barbar = true,
                bufferline_nvim = true,
                coc_nvim = true,
                dashboard_nvim = true,
                fern_vim = false,
                gina = false,
                gitsigns_nvim = false,
                hop_nvim = true,
                hydra_nvim = false,
                indent_blankline_nvim = true,
                lightspeed_nvim = false,
                lspsaga_nvim = false,
                lsp_trouble_nvim = false,
                lualine = true,
                markdown = false,
                mini_nvim = false,
                native_lsp = true,
                neogit = false,
                neomake = false,
                nerdtree = true,
                nvim_cmp = false,
                nvim_tree_lua = false,
                nvim_ts_rainbow = true,
                semshi = false,
                telescope_nvim = false,
                treesitter = true,
                vim_dirvish = false,
                vim_gitgutter = false,
                vim_signify = false,
                vim_sneak = false,
                which_key_nvim = false,
            },
        }
        vim.cmd [[LushwalCompile]]
    end
}
