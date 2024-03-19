require("lazy").setup({

    { "ellisonleao/gruvbox.nvim", priority = 1000, config = true,  opts = ... },
    { "catppuccin/nvim", name = "catppuccin",   priority = 1000 },


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
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },

    --Git Integrations
    {
        'kdheepak/lazygit.nvim',
        cmd = {
            "LazyGit",
    		"LazyGitConfig",
    		"LazyGitCurrentFile",
    		"LazyGitFilter",
    		"LazyGitFilterCurrentFile",
        },
        dependencies = { "nvim-lua/plenary.nvim"}
    },

    'lewis6991/gitsigns.nvim',

    --Godot Things
<<<<<<< HEAD
    
    { 'habamax/vim-godot', lazy = false },
=======
<<<<<<< HEAD
<<<<<<< Updated upstream
    { 'habamax/vim-godot',             lazy = false },
=======
    { 'habamax/vim-godot', lazy = false },
>>>>>>> Stashed changes
=======
    { 'habamax/vim-godot', lazy = false },
    --WSL Godot LspServer middleware
>>>>>>> f967a5d (test?)
>>>>>>> 05eab75 (test?)

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
