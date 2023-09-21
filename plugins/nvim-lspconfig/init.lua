return {
    "neovim/nvim-lspconfig",
    enabled = false,
    cond = not vim.g.vscode,
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig",
        "folke/neodev.nvim",
        {
            'nvimdev/lspsaga.nvim',
            config = function()
                require('lspsaga').setup({})
            end,
            dependencies = {
                'nvim-treesitter/nvim-treesitter', -- optional
                'nvim-tree/nvim-web-devicons'      -- optional
            },
        },
        {
            "j-hui/fidget.nvim",
            enabled = false,
            tag = "legacy",
            init = function()
                require("fidget").setup {}
            end,
        },
    },

    config = function()
        local lspconf = require("plugins.nvim-lspconfig.lspconf").lspconf

        -- api for nvim-cmp to lsp
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        require("neodev").setup()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = vim.tbl_keys(lspconf),
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup {
                        -- root_dir = function()
                        --     -- choose dir path which contains current buffer file path
                        --     -- TODO: elaborate it to accommodate more conditions
                        --     vim.fn.expand("%:p:h")
                        -- end,

                        settings = lspconf[server_name],
                        on_attach = function()
                            -- keymap setup
                            require("plugins.nvim-lspconfig.keymap")
                        end,
                        single_file_support = false,

                        capabilities = capabilities,
                    }
                end,
            }
        })
    end,
    init = function()
        -- keymap setup
        require("plugins.nvim-lspconfig.keymap")
    end,
}
