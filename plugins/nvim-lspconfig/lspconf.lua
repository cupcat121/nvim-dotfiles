-- DO NOT introduce any side effect in this file

M = {}

-- find methods to make it more readable and consistent
M.lspconf = {
    lua_ls = {
        Lua = {
            completion = {
                callSnippet = "Both",
                displayContext = 1,
                postfix = "#",
            },
            hint = {
                enable = true
            },
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                path = {
                    "?.lua",
                    "?/init.lua",
                    vim.fn.expand('~/.luarocks/share/lua/?/?.lua'),
                    vim.fn.expand('~/.luarocks/share/lua/?/?/init.lua'),
                    '/usr/share/?/?.lua',
                    '/usr/share/lua/5.4/?/init.lua'
                }
            },
            misc = {
                parameters = {
                    "--logpath=~.cache/sumneko-lua/logs",
                    "--locale=zh-cn"
                    -- "--locale=en-us"
                }
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {},
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = {
                    -- vim.api.nvim_get_runtime_file("", true),
                    vim.fn.expand('~/.luarocks/share/lua/5.4'),
                },
                checkThirdParty = false,
                ignoreDir = {
                    "!~/.config/nvim",
                }
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        },
    },
    bashls = {

    },
    jsonls = {

    },
    html = {

    },
    pyright = {

    },
    yamlls = {

    },
    taplo = {

    },
}

return M
