return {
    "skywind3000/asynctasks.vim",
    cond = not vim.g.vscode,
    dependencies = {
        {
            "skywind3000/asyncrun.vim",
            config = function()
                vim.g.asyncrun_open = 6
            end
        } 
    },
    init = function ()
        local toggleterm_runner = require("plugins.asynctasks-vim.toggleterm-runner")

        toggleterm_runner.setup {
            mapping = "<S-f10>",
            start_in_insert = true
        }

        -- options
        vim.g.asynctasks_config_name = "tasks.conf"
        vim.g.asynctasks_extra_config = {
            -- global task definitions
            vim.fn.stdpath("config") .. "/tasks/.tasks"
        }
        vim.g.asynctasks_term_pos = "bottom"
        vim.g.asynctasks_term_rows = 7
        vim.g.asynctasks_term_cols = 50
        vim.g.asynctasks_term_focus = 0
    end
}
