require("lazy").setup({

    { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
    {'windwp/nvim-autopairs', event = "InsertEnter", config = true },

    'nvim-treesitter/nvim-treesitter',

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

-- NVIM BUILT IN LSP
    'neovim/nvim-lspconfig',

    {
        "nvim-telescope/telescope.nvim", tag = "0.1.4",
        dependencies = { "nvim-lua/plenary.nvim" }
    }

})
