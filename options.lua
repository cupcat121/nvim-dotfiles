local setopt = vim.opt

--options--
-- see :h options for more info

setopt.compatible = false
setopt.showmode = false
setopt.exrc = true
setopt.updatetime = 100 setopt.termguicolors = true
setopt.ignorecase = true
setopt.number = true
setopt.relativenumber = true
setopt.hlsearch = false
setopt.startofline = false
setopt.wrap = false
setopt.autoindent = true
setopt.smartindent = true
setopt.tabstop = 4
setopt.shiftwidth = 4
setopt.expandtab = true
setopt.cursorline = true
setopt.magic = true
setopt.foldenable = false
setopt.clipboard = 'unnamedplus'
setopt.errorbells = false
setopt.softtabstop = 4
setopt.history = 1000
setopt.incsearch = true
setopt.enc = 'utf-8'
setopt.fencs = { 'utf-8', 'ucs-bom', 'shift-jis', 'gb18030', 'gbk', 'gb2312', 'cp936' }
setopt.helplang = { 'cn' }
setopt.langmenu = 'zh_CN.UTF-8'
setopt.completeopt = { "menu", "noselect", "preview" }

setopt.undofile = true
setopt.undodir =  vim.fn.expand("$HOME/.nvim_cache/undofiles")
setopt.viewdir = vim.fn.expand("HOME/.nvim_cache/views")
setopt.viewoptions = { "options", "cursor", "folds", "curdir" }

setopt.swapfile = false
setopt.backup = false
setopt.writebackup = false
setopt.autoread = true

setopt.splitright = true
setopt.splitbelow = true
setopt.cursorbind = true

-- see :h guicursor
setopt.guicursor = 'n-c-sm:hor5-blinkwait0,i-ci:ver5-blinkwait500,r-cr-o:hor30-blinkwait0,v-ve:block-blinkwait0'
