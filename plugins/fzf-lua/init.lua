return {
    -- fuzzy finder
    'ibhagwan/fzf-lua',
    enabled = true,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = require("plugins.fzf-lua.options"),
    init = function()
        -- keymap setup
        require("plugins.fzf-lua.keymap")
    end,
}
