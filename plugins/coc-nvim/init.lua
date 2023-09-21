require("plugins.coc-nvim.pre_init")

return {
    -- LSP hosts
    'neoclide/coc.nvim',
    dependencies = {
        {
            -- fzf compat for coc
            'NoSimpleApple/coc-fzf',
            branch = "custom",
            dependencies = {
                'junegunn/fzf.vim',
                'junegunn/fzf'
            },
            config = function()
                vim.g.coc_fzf_preview_togggle_key = "<F4>"
            end,
        },
        {
            'tjdevries/coc-zsh',
        }
    },
    enabled = true,
    cond = not vim.g.vscode,
    branch = 'release',
    init = function()
        require("plugins.coc-nvim.keymap")
        require("plugins.coc-nvim.post_init")
    end,
}
