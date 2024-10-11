vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true


-- Line Thinkgs
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.linespace = 20
vim.opt.textwidth = 80

-- navigating wrapped lines
vim.keymap.set('n', "j", "gj")
vim.keymap.set('n', "k", "gk")

vim.keymap.set('v', "j", "gj")
vim.keymap.set('v', "k", "gk")

