require("lazy").setup({

    --colors
    { "rose-pine/neovim",         name = "rose-pine",    priority = 1000, lazy = false },

    { "ellisonleao/gruvbox.nvim", priority = 1000,       config = true,   opts = ... },
    { "catppuccin/nvim",          name = "catppuccin",   priority = 1000 },
    { "AlexvZyl/nordic.nvim",     name = "nordic",       priority = 1000, lazy = false },
    { "ribru17/bamboo.nvim",      name = "bamboo",       priority = 1000, lazy = false },
    { "rebelot/kanagawa.nvim",    name = "kanagawa",     priority = 1000, lazy = false },
    { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
    { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },

    { 'windwp/nvim-autopairs',    event = "InsertEnter", config = true },
    { 'kylechui/nvim-surround',   event = "VeryLazy" },

    {'nvim-treesitter/nvim-treesitter', dependencies = { 'vrischmann/tree-sitter-templ'}, build = ':TSUpdate',},
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

    {"folke/trouble.nvim", dependencies = { "nvim-tree/nvim-web-devicons" }, },

    {
      'stevearc/oil.nvim',
      opts = {},
      -- Optional dependencies
      dependencies = { "nvim-tree/nvim-web-devicons" },
    },

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


    --Git Integrations
    'lewis6991/gitsigns.nvim',

    {
      "iamcco/markdown-preview.nvim",
      cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
      build = "cd app && yarn install",
      init = function()
        vim.g.mkdp_filetypes = { "markdown" }
      end,
      ft = { "markdown" },
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
    { "nvim-telescope/telescope.nvim", tag = "0.1.4", dependencies = { "nvim-lua/plenary.nvim" } },

    -- Quarto
    'quarto-dev/quarto-nvim',
    'jmbuhr/otter.nvim',
})
