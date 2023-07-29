-- initialization of neovide

vim.o.guifont = "Hack:h14"
vim.opt.linespace = 0
vim.g.neovide_scale_factor = 1.0

vim.g.neovide_padding_top = 0
vim.g.neovide_padding_bottom = 0
vim.g.neovide_padding_right = 0
vim.g.neovide_padding_left = 0

local alpha = function()
  return string.format("%x", math.floor((255 * vim.g.transparency) or 0.8))
end
-- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
vim.g.neovide_transparency = 0.0
vim.g.transparency = 0.8
vim.g.neovide_background_color = "#0f1117" .. alpha()

vim.g.neovide_floating_blur_amount_x = 2.0
vim.g.neovide_floating_blur_amount_y = 2.0

vim.g.neovide_transparency = 0.8

vim.g.neovide_refresh_rate = 144
vim.g.neovide_refresh_rate_idle = 30
vim.g.neovide_no_idle = true

vim.g.neovide_confirm_quit = true

vim.g.neovide_fullscreen = true

vim.g.neovide_remember_window_size = true

vim.g.neovide_profiler = false


