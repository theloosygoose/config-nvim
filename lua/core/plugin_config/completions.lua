local cmp = require("cmp")

cmp.setup({
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-o>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),

    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    sources = cmp.config.sources({
        { name = 'nvim_lsp', max_item_count = 10 },
        { name = 'luasnip' },
        { name = 'otter' },
    },{
        { name = 'buffer' },

    }),

    window = {
        documentation = cmp.config.window.bordered(),
    },

    experimental = {
        ghost_text = true,
    }

})

local ls = require('luasnip')

vim.keymap.set({"i", "s"}, "<A-k>", function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, { silent = true })

vim.keymap.set({"i", "s"}, "<A-j>", function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, { silent = true })
