--user defined--

-- user defined runtime paths
local user_def_runtime = {
    plugins_setting = vim.fn.stdpath("config") .. "/?/init.lua",
    config = vim.fn.stdpath("config") .. "/?.lua"
}

for _, p in pairs(user_def_runtime) do
    package.path = string.format("%s;", p) .. package.path
end

--plugins setup--
require("plugins")

--options setup--
if not vim.g.vscode then
    require("options")
end

--keymap setup--
require("keymap")

--neovide setup--
if vim.g.neovide then
    require("neovide")
end
