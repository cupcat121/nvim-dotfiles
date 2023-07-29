return {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = require("plugins.flash-nvim.options"),
    -- stylua: ignore
    keys = require("plugins.flash-nvim.keymap"),
}
