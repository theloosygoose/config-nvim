require("lazy").setup({

    --colors
    { "rose-pine/neovim",         name = "rose-pine",    priority = 1000, lazy = false },

    { "ellisonleao/gruvbox.nvim", priority = 1000,       config = true,   opts = ... },
    { "catppuccin/nvim",          name = "catppuccin",   priority = 1000 },
    { "xero/miasma.nvim",         name = "miasma",       priority = 1000, lazy = false },
    { "AlexvZyl/nordic.nvim",     name = "nordic",       priority = 1000, lazy = false },
    { "ribru17/bamboo.nvim",      name = "bamboo",       priority = 1000, lazy = false },
    { "rebelot/kanagawa.nvim",    name = "kanagawa",     priority = 1000, lazy = false },


    { 'windwp/nvim-autopairs',    event = "InsertEnter", config = true },
    { 'kylechui/nvim-surround',   event = "VeryLazy" },
    { 'phaazon/hop.nvim',         branch = 'v2' },

    'nvim-treesitter/nvim-treesitter',
    'nvim-lua/plenary.nvim',


    --lualine struff
    { 'nvim-lualine/lualine.nvim',  dependencies = { 'nvim-tree/nvim-web-devicons' } },
    {
        "letieu/harpoon-lualine",
        dependencies = { {
            "ThePrimeagen/harpoon",
            branch = "harpoon2",
        } }
    },

    { 'ThePrimeagen/harpoon',       branch = "harpoon2",                             dependencies = { "nvim-lua/plenary.nvim" } },
    { 'nvim-tree/nvim-web-devicons' },

    { 'ibhagwan/fzf-lua' },

    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {}
    },

    -- Language Specific Things
    'p00f/clangd_extensions.nvim',

    { 'mrcjkb/rustaceanvim',  version = '^4', ft = { 'rust' } },

    { 'timtro/glslView-nvim', ft = 'glsl' },

    'Hoffs/omnisharp-extended-lsp.nvim',


    --Git Integrations
    'lewis6991/gitsigns.nvim',

    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "sindrets/diffview.nvim",
            "nvim-telescope/telescope.nvim"
        },
        config = true
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

    -- NVIM BUILT IN LSP
    { 'neovim/nvim-lspconfig' },

    { "nvim-telescope/telescope.nvim", tag = "0.1.4", dependencies = { "nvim-lua/plenary.nvim" } },
})
