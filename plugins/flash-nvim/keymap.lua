local actions = require("plugins.flash-nvim.actions")
local keyset = vim.keymap.set

keyset({ "n", "x", "o" }, "sl", "<CMD>lua require('plugins.flash-nvim.actions').search_line()<CR>" , { desc = "search by line and jump to its head" })
keyset({ "n", "x", "o" }, "ss", "<CMD>lua require('flash').treesitter()<CR>", { desc = "select logical block using treesitter"} )

return {
    { "r", mode = "o",               function() require("flash").remote() end, desc = "Remote Flash" },
    {
        "R",
        mode = { "o", "x" },
        function() require("flash").treesitter_search() end,
        desc = "Treesitter Search"
    },
    -- {
    --     "<c-s>",
    --     mode = { "c" },
    --     function() require("flash").toggle() end,
    --     desc = "Toggle Flash Search"
    -- },
}
