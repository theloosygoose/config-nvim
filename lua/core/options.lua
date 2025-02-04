vim.opt.relativenumber = true
vim.opt.nu = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.scrolloff = 8
vim.opt.showtabline = 1

vim.opt.showmode = false
vim.opt.numberwidth = 1

vim.opt.foldmethod = "indent"
vim.opt.foldexpr ="nvim_treesitter#foldexpr()"
vim.opt.foldlevelstart = 99

vim.opt.smartindent = true

vim.opt.wrap = true
vim.opt.textwidth = 100

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.g.netrw_banner = 0

vim.opt.signcolumn = "yes"

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.clipboard = 'unnamedplus'
vim.opt.scrolloff = 10

vim.opt.cursorline = true

vim.opt.fillchars:append({
	eob = " ",
	horiz = " ",
	horizup = " ",
	horizdown = " ",
	vert = " ",
	vertleft = " ",
	vertright = " ",
	verthoriz = " ",
})
