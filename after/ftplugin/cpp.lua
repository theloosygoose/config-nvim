vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

local ls = require('luasnip')
local s = ls.snippet
-- local t = ls.text_node
local i = ls.insert_node
local extras = require("luasnip.extras")
--local rep = extras.rep
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("cpp", {
    s("hdr", fmt(
    [[
    //
    // {}
    // {}
    //
    // Written by Gusti Rama Henry on {}
    // Copyright (c) {} Gusti Rama Henry. All Rights Reserved.
    //
    //
    ]], {
        i(1), i(2), i(3, os.date("%m/%d/%Y")), i(4, os.date("%Y"))
    }))
})
