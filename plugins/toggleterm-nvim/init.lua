local options = {
}

return {
    'akinsho/toggleterm.nvim',
    version = "*",
    cond = not vim.g.vscode,
    opts = options
}
