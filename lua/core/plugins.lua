require("lazy").setup({

    --colors
    { "ellisonleao/gruvbox.nvim", priority = 1000, config = true,  opts = ... },
    { "catppuccin/nvim", name = "catppuccin",   priority = 1000 },
    { "xero/miasma.nvim", name = "miasma", priority = 1000, lazy = false},


    { 'windwp/nvim-autopairs', event = "InsertEnter", config = true },

    'nvim-treesitter/nvim-treesitter',
    'nvim-lua/plenary.nvim',


    { 'timtro/glslView-nvim', ft = 'glsl' },

    { 'ThePrimeagen/harpoon', branch = "harpoon2", dependencies = { "nvim-lua/plenary.nvim" } },

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

    { 'mrcjkb/rustaceanvim', version = '^4', ft = { 'rust' }},

    --Git Integrations
    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "sindrets/diffview.nvim",
            "nvim-telescope/telescope.nvim"
        },
        config = true
    },

    'lewis6991/gitsigns.nvim',

    --Godot Things
    { 'habamax/vim-godot', lazy = false },
    -- D A p
    --
    'mfussenegger/nvim-dap',

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

    { "nvim-telescope/telescope.nvim", tag = "0.1.4", dependencies = { "nvim-lua/plenary.nvim" } },

})
