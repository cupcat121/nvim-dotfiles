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
    config = function()
        local highlight = {
            "RainbowRed",
            "RainbowYellow",
            "RainbowBlue",
            "RainbowOrange",
            "RainbowGreen",
            "RainbowViolet",
            "RainbowCyan",
        }

        local hooks = require "ibl.hooks"
        -- create the highlight groups in the highlight setup hook, so they are reset
        -- every time the colorscheme changes
        hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
            vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
            vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
            vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
            vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
            vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
            vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
        end)

        require("ibl").setup { indent = { highlight = highlight } }
    end,

    opts = {
        space_char_blankline = " ",
        show_current_context = true,
        show_current_context_start = true,
    },
}
