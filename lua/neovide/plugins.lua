require("lazy").setup({
    -- Colorscheme
    'yorickpeterse/vim-paper',
    'mellow-theme/mellow.nvim',


    -- Writing PLUGINS
    'folke/zen-mode.nvim',

    'Ron89/thesaurus_query.vim',

    -- TREE SITTER AND MISC
    {
        'nvim-treesitter/nvim-treesitter',
        dependencies = { 'vrischmann/tree-sitter-templ' },
        build = ':TSUpdate',
    },

    'nvim-lua/plenary.nvim',

    { "nvim-telescope/telescope.nvim",
        tag = "0.1.4",
        dependencies = { "nvim-lua/plenary.nvim" }
    },

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

    { 'ibhagwan/fzf-lua' },

    -- COMPLETION
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",

    -- LSP
    'neovim/nvim-lspconfig',

    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',

    -- LTEX LSP
    {
        "jhofscheier/ltex-utils.nvim",
        dependencies = {
            "neovim/nvim-lspconfig",
            "nvim-telescope/telescope.nvim",
            -- "nvim-telescope/telescope-fzf-native.nvim", -- optional
        },
    },

})
