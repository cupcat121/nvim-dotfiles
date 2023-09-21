-- Use Tab for trigger completion with characters ahead and navigate
-- NOTE: There's always a completion item selected by default, you may want to enable
-- no select by setting `"suggest.noselect": true` in your configuration file
-- NOTE: Use command ':verbose imap <tab>' to make sure Tab is not mapped by
-- other plugins before putting this into your config
local keyset = vim.keymap.set
local opts1 = { silent = true, noremap = true, expr = true, replace_keycodes = false }

keyset("i", "<c-j>",
    'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<C-j>" : coc#refresh()', opts1)
keyset("i", "<c-k>", [[coc#pum#visible() ? coc#pum#prev(1) : "<C-k>"]], opts1)
-- keyset({ "i", "x" }, "<TAB>",
--     "coc#pum#visible() ? coc#_select_confirm() : " ..
--     "coc#expandableOrJumpable() ? '<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])<CR>' : " ..
--     "v:lua.check_back_space() ? '<TAB>' : " ..
--     "coc#refresh()", opts1)
keyset({ "i", "x" }, "<TAB>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts1)
-- keyset("i", "<c-space>", "coc#refresh()", { silent = true, expr = true })
-- keyset("i", "<c-space>", "coc#pum#visible()", opts1)

-- snippets settings

-- jump to next/prev placeholder
vim.g.coc_snippet_next = '<M-f>'
vim.g.coc_snippet_prev = '<M-b>'

-- keyset({"i", "x"}, "<TAB>", "<Plug>(coc-snippets-expand-jump)", {desc = "Expand snippet or jump to next placeholder of current snippet when possible" })
keyset("v", "<C-S-y>", "<Plug>(coc-convert-snippet)", { desc = " Create new snippet with current selected text" })
-- keyset("i", "<C-spcae>", "<Plug>(coc-snippets-expand", { desc = "Expand snippet with current inserted text" })

-- to navigate diagnostics
-- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
keyset("n", "g[", "<Plug>(coc-diagnostic-prev)", { silent = true })
keyset("n", "g]", "<Plug>(coc-diagnostic-next)", { silent = true })

-- GoTo code navigation
keyset("n", "gd", "<Plug>(coc-definition)", { silent = true })
keyset("n", "gt", "<Plug>(coc-type-definition)", { silent = true })
keyset("n", "gi", "<Plug>(coc-implementation)", { silent = true })
keyset("n", "gr", "<Plug>(coc-references)", { silent = true })


-- Use K to show documentation in preview window
function _G.show_docs()
    local cw = vim.fn.expand('<cword>')
    if vim.fn.index({ 'vim', 'help' }, vim.bo.filetype) >= 0 then
        vim.api.nvim_command('h ' .. cw)
    elseif vim.api.nvim_eval('coc#rpc#ready()') then
        vim.fn.CocActionAsync('doHover')
    else
        vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end

keyset({ "n" }, "<c-q>", '<CMD>lua _G.show_docs()<CR>', { silent = true })

-- Symbol renaming
keyset("n", "<M-f6>", "<Plug>(coc-rename)", { silent = true })


-- Formatting code
keyset("x", "<M-C-l>", "<Plug>(coc-format-selected)", { silent = true })
-- keyset("n", "<leader>f", "<Plug>(coc-format-selected)", { silent = true })
keyset("n", "<C-l>", "<CMD>call CocAction('format')<CR>", { desc = "format this file", silent = true })


-- Apply codeAction to the selected region
-- Example: `<leader>aap` for current paragraph
local opts2 = { silent = true, nowait = true }
keyset("x", "<M-S-cr>", "<Plug>(coc-codeaction-selected)", opts2)
-- keyset("n", "<leader>a", "<Plug>(coc-codeaction-selected)", opts2)

-- Remap keys for apply code actions at the cursor position.
keyset("n", "<a-cr>", "<Plug>(coc-codeaction-cursor)", opts2)

-- Remap keys for apply source code actions for current file.
-- keyset("n", "<leader>as", "<Plug>(coc-codeaction-source)", opts2)

-- Apply the most preferred quickfix action on the current line.
keyset("n", "<c-cr>", "<Plug>(coc-fix-current)", opts2)

-- Remap keys for apply refactor code actions.
keyset("n", "<c-x>", "<Plug>(coc-codeaction-refactor)", { silent = true })
keyset({ "x" }, "<c-x>", "<Plug>(coc-codeaction-refactor-selected)", { silent = true })

-- Run the Code Lens actions on the current line
-- keyset("n", "<leader>cl", "<Plug>(coc-codelens-action)", opts2)


-- Map function and class text objects
-- NOTE: Requires 'textDocument.documentSymbol' support from the language server
-- keyset("x", "if", "<Plug>(coc-funcobj-i)", opts2)
-- keyset("o", "if", "<Plug>(coc-funcobj-i)", opts2)
-- keyset("x", "af", "<Plug>(coc-funcobj-a)", opts2)
-- keyset("o", "af", "<Plug>(coc-funcobj-a)", opts2)
-- keyset("x", "ic", "<Plug>(coc-classobj-i)", opts2)
-- keyset("o", "ic", "<Plug>(coc-classobj-i)", opts2)
-- keyset("x", "ac", "<Plug>(coc-classobj-a)", opts2)
-- keyset("o", "ac", "<Plug>(coc-classobj-a)", opts2)


-- Remap <C-f> and <C-b> to scroll float windows/popups
---@diagnostic disable-next-line: redefined-local
local opts3 = { silent = true, nowait = true, expr = true }
keyset("n", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', opts3)
keyset("n", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', opts3)
keyset("i", "<C-f>",
    'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(1)<cr>" : "<Right>"', opts3)
keyset("i", "<C-b>",
    'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(0)<cr>" : "<Left>"', opts3)
keyset("v", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', opts3)
keyset("v", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', opts3)

-- Use CTRL-S for selections ranges
-- Requires 'textDocument/selectionRange' support of language server
keyset("n", "<C-s>", "<Plug>(coc-range-select)", { silent = true })
keyset("x", "<C-s>", "<Plug>(coc-range-select)", { silent = true })


-- Mappings for CoCList
-- code actions and coc stuff
---@diagnostic disable-next-line: redefined-local
local opts4 = { silent = true, nowait = true }

-- Show all diagnostics
keyset("n", "<a-`>d", ":<C-u>CocFzfList diagnostics<cr>", opts4)

-- Manage extensions
keyset("n", "<a-`>e", ":<C-u>CocFzfList extensions<cr>", opts4)

-- Show commands
keyset("n", "<a-`>c", ":<C-u>CocFzfList commands<cr>", opts4)

-- Find symbol of current document
keyset("n", "<a-`>o", ":<C-u>CocFzfList outline<cr>", opts4)

-- Search workspace symbols
keyset("n", "<a-`>s", ":<C-u>CocFzfList -I symbols<cr>", opts4)
-- keyset("n", "<a-`>s", ":<C-u>CocFzf -I symbols<cr>", opts4)

-- Do default action for next item
keyset("n", "<a-`>j", ":<C-u>CocNext<cr>", opts4)

-- Do default action for previous item
keyset("n", "<a-`>k", ":<C-u>CocPrev<cr>", opts4)

-- Resume latest coc list
keyset("n", "<a-`>p", ":<C-u>CocFzfListResume<cr>", opts4)
