require("lazy").setup({

    -- ColorSchemes
    { "rebelot/kanagawa.nvim", name = "kanagawa", priority = 1000, lazy = false },





    -- Basics -- 
    ------------


    -- Misc Nice things to have 
    { 'windwp/nvim-autopairs', event = "InsertEnter", config = true },
    { 'kylechui/nvim-surround', event = "VeryLazy" },


    -- Treesitter
    -- syntax highlighting
    { 
        'nvim-treesitter/nvim-treesitter', 
        dependencies = { 'vrischmann/tree-sitter-templ' }, 
        build = ':TSUpdate', 
    },

    -- Which Key
    -- check keybindings
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {}
    },


    -- Trouble Nvim
    -- toggle between file errors (delete?)
    { 
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" }, 
    },

    'ibhagwan/fzf-lua',
    'nvim-lua/plenary.nvim',


    -- Lualine Struff 
    { 'nvim-lualine/lualine.nvim',  dependencies = { 'nvim-tree/nvim-web-devicons' } },
    {
        "letieu/harpoon-lualine",
        dependencies = { {
            "ThePrimeagen/harpoon",
            branch = "harpoon2",
        } }
    },


    { 'nvim-tree/nvim-web-devicons' },

    -- File Exploring and Navigation
    ------

    -- Oil
    -- better navigation and file creation using vim language
    {
        'stevearc/oil.nvim',
        opts = {},
        -- Optional dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },

    -- Telescope 
    -- fuzzy find files in project
    { 
        "nvim-telescope/telescope.nvim", 
        tag = "0.1.4",  
        dependencies = { "nvim-lua/plenary.nvim" } 
    },

    -- Harpoon
    -- toggle between files
    { 
        'ThePrimeagen/harpoon', 
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" } 
    },

    -- Git Signs
    -- see git diff and things on right bar
    'lewis6991/gitsigns.nvim',

    -- Language Specific Things

    -- C++ and other C lang stuff
    'p00f/clangd_extensions.nvim',

    -- Markdown Fancy View
    {
        "OXY2DEV/markview.nvim",
        lazy = false, -- Recommended
        -- ft = "markdown" -- If you decide to lazy-load anyway

        dependencies = {
            -- You will not need this if you installed the
            -- parsers manually
            -- Or if the parsers are in your $RUNTIMEPATH
            "nvim-treesitter/nvim-treesitter",

            "nvim-tree/nvim-web-devicons"
        }
    },

    -- COMPLETION
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",

    -- Snippets
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",

    -- LSP SHIT
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'nvimtools/none-ls.nvim',

    -- NVIM BUILT IN LSP
    { 'neovim/nvim-lspconfig' },

})
