vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
-- Set the CursorLine highlight color (background color)
--vim.cmd('highlight CursorLine cterm=NONE ctermbg=darkgray guibg=#2C2C2C')

-- Set the color of the current line number to yellow
vim.cmd('highlight CursorLineNr ctermfg=yellow guifg=yellow')

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "
