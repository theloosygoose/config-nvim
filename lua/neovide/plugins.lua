require("lazy").setup({
    -- Writing PLUGINS
    'junegunn/goyo.vim',

    'Ron89/thesaurus_query.vim',

    -- TREE SITTER AND MISC
    {
        'nvim-treesitter/nvim-treesitter',
        dependencies = { 'vrischmann/tree-sitter-templ' },
        build = ':TSUpdate',
    },

    'nvim-lua/plenary.nvim',
    -- NICE MARKDOWN
    { "OXY2DEV/markview.nvim", lazy = false,
        dependencies = {
            -- You will not need this if you installed the
            -- parsers manually
            -- Or if the parsers are in your $RUNTIMEPATH
            "nvim-treesitter/nvim-treesitter",

            "nvim-tree/nvim-web-devicons"
        }
    },

    -- FILE MANAGER
    {
        'stevearc/oil.nvim',
        opts = {},
        -- Optional dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },

})
