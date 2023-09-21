-- options
local setopt = vim.opt

setopt.list = true
setopt.listchars:append "space:⋅"
setopt.listchars:append "eol:↴"
setopt.signcolumn = "yes"

return {
    -- indent guides for every line
    'lukas-reineke/indent-blankline.nvim',
    enabled = true,
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
    },
    opts = {
        space_char_blankline = " ",
        show_current_context = true,
        show_current_context_start = true,
    },
}
