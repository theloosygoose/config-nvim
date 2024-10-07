require("lazy").setup({

    -- non default colorschemes
    {
        'ferdinandrau/lavish.nvim',
        priority = 1000
    },

    {
        'bettervim/yugen.nvim',
        priority = 1000
    },

    -- Basics -- 
    ------------
    --colorizer
    --
    {'norcalli/nvim-colorizer.lua', event = "BufEnter", opts = {"*"} },


    -- Misc Nice things to have 
    { 'windwp/nvim-autopairs', event = "InsertEnter", config = true },
    { 'kylechui/nvim-surround', event = "VeryLazy" },


    -- Treesitter
    -- syntax highlighting
    {
        'nvim-treesitter/nvim-treesitter',
        dependencies = {
            'vrischmann/tree-sitter-templ',
            'nvim-treesitter/playground',
        },
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

    -- IDK use only sometimes
--[[ 
    {
        "dgox16/devicon-colorscheme.nvim",
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
    },
]]--

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
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-file-browser.nvim"
        }
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

    -- Language Specific Things --
    -------

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

    -- Plugins for Writing Prose --

    -- LaTeX
    {
        "lervag/vimtex",
        lazy = false,
    },

    -- Zen Mode 
    -- minimalist and zen mode type thing
    {
        "folke/zen-mode.nvim"
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

    -- Default Colorscheme Setup 
    {
        "jesseleite/nvim-noirbuddy",
        dependencies = {
            "tjdevries/colorbuddy.nvim",
        },

        priority = 1000,
        config = function()
            require("noirbuddy").setup({
                preset = "minimal",
                styles = {
                    italic = true,
                    bold = true,
                    underline = true,
                    undercurl = true,
                },
                colors = {
                    background = "#181818",
                    primary = "#333333",
                    secondary = "#ffffff",
                    noir_0 = "#f1f1f1",
                    noir_1 = "#e2e2e2",
                    noir_2 = "#666666",
                    noir_3 = "#a7a7a7",
                    noir_4 = "#555555",
                    noir_5 = "#444444",
                    noir_6 = "#444444",
                    noir_7 = "#444444",
                    noir_8 = "#333333",
                    noir_9 = "#111111",
                },
            })

        vim.cmd("highlight @variable guifg=#ffffff")
		vim.cmd("highlight @variable.builtin guifg=#ffffff")
		vim.cmd("highlight @variable.member guifg=#666666")

		vim.cmd("highlight @constant guifg=#777777")

		vim.cmd("highlight @keyword guifg=#666666")
		vim.cmd("highlight @keyword.operator guifg=#666666")
		vim.cmd("highlight @keyword.function guifg=#777777")
		vim.cmd("highlight @keyword.return guifg=#777777")

		vim.cmd("highlight @punctuation.bracket guifg=#555555")

		vim.cmd("highlight @constructor guifg=#888888")

		vim.cmd("highlight @operator guifg=#555555")
		vim.cmd("highlight @comment guifg=#333333")
		vim.cmd("highlight @string guifg=#555555")

		vim.cmd("highlight @keyword.coroutine guifg=#555555")

		vim.cmd("highlight @function.builtin guifg=#999999")
		vim.cmd("highlight @function.call guifg=#999999")
		vim.cmd("highlight @function.method.call guifg=#999999")

		vim.cmd("highlight @tag guifg=#888888")
		vim.cmd("highlight @tag.delimiter guifg=#888888")
		vim.cmd("highlight @tag.attribute guifg=#444444")

		vim.cmd("highlight @lsp.type.parameter guifg=#999999 gui=italic")

		vim.cmd("highlight @type guifg=#e2e2e2")
		vim.cmd("highlight @type.qualifier guifg=#444444")

		-- Vim command line error colors
		vim.cmd("highlight ErrorMsg guifg=#444444 guibg=#ff8989")

		-- Diagnostic colors
		vim.cmd("highlight DiagnosticError guifg=#ff8989")
		vim.cmd("highlight DiagnosticWarn guifg=#f0c674")
		vim.cmd("highlight DiagnosticInfo guifg=#89B4FA")
		vim.cmd("highlight DiagnosticHint guifg=#9bcea5")

		-- Diagnostic signs colors
		vim.cmd("highlight DiagnosticSignError guifg=#ff8989")
		vim.cmd("highlight DiagnosticSignWarn guifg=#f0c674")
		vim.cmd("highlight DiagnosticSignInfo guifg=#89B4FA")
		vim.cmd("highlight DiagnosticSignHint guifg=#9bcea5")

		-- Editor transparent colors
		vim.cmd("highlight Normal guibg=none")
		vim.cmd("highlight NonText guibg=none")
		vim.cmd("highlight Normal ctermbg=none")
		vim.cmd("highlight NonText ctermbg=none")

		vim.cmd("highlight clear LineNr")
		vim.cmd("highlight clear SignColumn")

		-- LSP colors
		vim.cmd("highlight FloatBorder guibg=NONE guifg=#222222")
		vim.cmd("highlight FloatShadow guibg=NONE guifg=NONE")
		vim.cmd("highlight FloatShadowThrough guibg=NONE guifg=NONE")

		-- Visual mode colors
		vim.cmd("highlight Visual guibg=#181818 guifg=NONE")

		-- Numbers Gutter
		vim.cmd("highlight LineNr guifg=#2b2b2b")

		vim.cmd("highlight Cursor guibg=NONE")
		vim.cmd("highlight CursorLine guibg=#181818 guifg=NONE")
		vim.cmd("highlight CursorLineNr guibg=NONE guifg=#666666 gui=bold")

		-- Split colors
		vim.cmd("highlight VertSplit guibg=NONE guifg=#101010")
		vim.cmd("highlight WinSeparator guibg=NONE guifg=#101010")

		-- Command line colors
		vim.cmd("highlight Pmenu guibg=#181818 guifg=#666666")
		vim.cmd("highlight PmenuSel guibg=#222222 guifg=#ffffff")
		vim.cmd("highlight PmenuSbar guibg=#181818 guifg=#0f0f0f")
		vim.cmd("highlight PmenuThumb guibg=#222222 guifg=#0f0f0f")

		-- Floating window colors
		vim.cmd("highlight NormalFloat guibg=NONE guifg=#f1f1f1")

		-- Fold colors
		vim.cmd("highlight Folded guibg=NONE guifg=#3b3b3b")

		-- Gitsigns colors
		vim.cmd("highlight GitSignsAdd guifg=#9bcea5")
		vim.cmd("highlight GitSignsChange guifg=#f0c674")
		vim.cmd("highlight GitSignsDelete guifg=#ff8989")

        -- Markview colors
		vim.cmd("highlight MarkviewHeading1 guifg=#9bcea5")
		vim.cmd("highlight MarkviewHeading2 guifg=#f0c674")
		vim.cmd("highlight MarkviewHeading3 guifg=#ff8989")
		vim.cmd("highlight MarkviewHeading4 guifg=#89B4FA")

		-- Telescope colors
		vim.cmd("highlight TelescopeBorder guibg=NONE guifg=#333333")

		-- Devicons colors
		vim.cmd("highlight DevIconDefault guifg=#555555")
        end, }
})
