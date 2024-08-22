vim.o.termguicolors = true

vim.opt.background = "dark"

vim.g.terminal_color_foreground = "#efedf1"
vim.g.terminal_color_background = "#efedf1"

vim.g.mellow_highlight_overrides = {
    ["markdownRule"] = { fg = "#efedf1" },
    ["markdownBlockquote"] = { fg = "#efedf1" },
    ["markdownCodeDelimiter"] = { fg = "#efedf1" }
}

vim.cmd [[colorscheme mellow]]
