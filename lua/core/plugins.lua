Palette = {
	rosewater = "#f5e0dc",
	flamingo = "#f2cdcd",
	pink = "#f5c2e7",
	mauve = "#cba6f7",
	red = "#f38ba8",
	maroon = "#eba0ac",
	peach = "#fab387",
	yellow = "#f9e2af",
	green = "#a6e3a1",
	teal = "#94e2d5",
	sky = "#89dceb",
	sapphire = "#74c7ec",
	blue = "#89b4fa",
	lavender = "#b4befe",
	cyan = "#04D7D7",
	purple = "#6B50FF",
	text = "#ffffff",
	overlay2 = "#9399b2",
	overlay1 = "#7f849c",
	overlay0 = "#6c7086",
	surface2 = "#585b70",
	surface1 = "#45475a",
	surface0 = "#313244",
	base = "#1e1e2e",
	mantle = "#181825",
	crust = "#11111b",
	noir_0 = "#f1f1f1",
	noir_1 = "#e2e2e2",
	noir_2 = "#777777",
	noir_3 = "#666666",
	noir_4 = "#555555",
	noir_5 = "#444444",
	noir_6 = "#444444",
	noir_7 = "#333333",
	noir_8 = "#222222",
	noir_9 = "#111111",
	none = "NONE",
}

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
    {
        'slugbyte/lackluster.nvim',
        lazy = false,
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
    { "nvchad/showkeys", cmd = "ShowkeysToggle"},
    {
        "jake-stewart/force-cul.nvim",
        config = function()
            require("force-cul").setup()
        end
    },
    { 'echasnovski/mini.notify', version = '*' },


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

    --
    -- MARKDOWN --
    --

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

    -- Default Colorscheme Setup --
        --
        --
    {
        "tjdevries/colorbuddy.nvim",
        priority = 1000,
        config = function()
            -- highlight groups
            local highlights = {
                Normal = { fg = Palette.noir_3, bg = Palette.none },
                NonText = { fg = Palette.noir_2, bg = Palette.none },
                Comment = { fg = Palette.noir_5 },
                Constant = { fg = Palette.noir_2 },
                Title = { fg = Palette.text },
                String = { fg = Palette.noir_5 },
                Character = { fg = Palette.noir_3 },
                Number = { fg = Palette.noir_5 },
                Boolean = { fg = Palette.noir_5 },
                Float = { fg = Palette.noir_5 },
                Identifier = { fg = Palette.noir_2 },
                Function = { fg = Palette.noir_2 },
                Statement = { fg = Palette.noir_4 },
                Conditional = { fg = Palette.noir_4 },
                Repeat = { fg = Palette.noir_4 },
                Label = { fg = Palette.noir_4 },
                Operator = { fg = Palette.noir_5 },
                Keyword = { fg = Palette.noir_4 },
                Exception = { fg = Palette.red },
                PreProc = { fg = Palette.noir_4 },
                Include = { fg = Palette.red },
                Define = { fg = Palette.noir_4 },
                Macro = { fg = Palette.noir_4 },
                PreCondit = { fg = Palette.noir_4 },
                Type = { fg = Palette.noir_2 },
                StorageClass = { fg = Palette.noir_4 },
                Structure = { fg = Palette.noir_2 },
                Typedef = { fg = Palette.noir_2 },
                Special = { fg = Palette.noir_4 },
                SpecialChar = { fg = Palette.noir_3 },
                Tag = { fg = Palette.noir_4 },
                Delimiter = { fg = Palette.noir_3 },
                SpecialComment = { fg = Palette.noir_3 },
                Debug = { fg = Palette.red },
                Underlined = { style = "underline" },
                Error = { fg = Palette.red },
                Todo = { fg = Palette.teal, style = "bold" },
                StatusLine = { fg = Palette.text, bg = Palette.none },
                StatusLineNC = { fg = Palette.text, bg = Palette.none },
                LineNr = { bg = Palette.none, fg = Palette.noir_6 },
                Visual = { bg = Palette.noir_8 },

                ["@variable"] = { fg = Palette.text },
                ["@variable.builtin"] = { fg = Palette.text },
                ["@variable.member"] = { fg = Palette.noir_3 },

                ["@constructor"] = { fg = Palette.noir_2 },
                ["@lsp.type.parameter"] = { fg = "#999999", style = "italic" },

                ["@type"] = { fg = Palette.noir_1 },
                ["@type.qualifier"] = { fg = Palette.noir_6 },
                ["@keyword.coroutine"] = { fg = Palette.noir_6 },

                Cursor = { bg = Palette.none },
                CursorLine = { bg = Palette.none, fg = Palette.none },
                CursorLineNr = { bg = Palette.none, fg = Palette.noir_2, style = "bold" },

                GitSignsAdd = { fg = Palette.green, bg = Palette.none },
                GitSignsChange = { fg = Palette.yellow, bg = Palette.none },
                GitSignsDelete = { fg = Palette.red, bg = Palette.none },
                GitSignsCurrentLineBlame = { fg = Palette.noir_7 },

                TelescopeNormal = { bg = Palette.none, fg = Palette.noir_4 },
                TelescopeBorder = { bg = Palette.none, fg = Palette.noir_8 },
                TelescopeMatching = { bg = Palette.none, fg = Palette.noir_1 },
                TelescopeSelection = { bg = "#181818" },
                TelescopeResultsLineNr = { bg = "#181818" },
                TelescopeResultsDiffAdd = { bg = Palette.none, fg = Palette.green },
                TelescopeResultsDiffChange = { bg = Palette.none, fg = Palette.yellow },
                TelescopeResultsDiffDelete = { bg = Palette.none, fg = Palette.red },
                TelescopeResultsDiffUntracked = { bg = Palette.none, fg = Palette.yellow },

                IndentBlanklineChar = { fg = Palette.blue },
                IndentBlanklineSpaceChar = { fg = Palette.blue },
                IndentBlanklineSpaceCharBlankline = { fg = Palette.blue },
                IndentBlanklineContextChar = { fg = Palette.pink },

                NvimTreeGitDirty = { fg = Palette.yellow },
                NvimTreeGitNew = { fg = Palette.green },
                NvimTreeGitStaged = { fg = Palette.blue },
                NvimTreeGitUnstaged = { fg = Palette.lavender },
                NvimTreeGitUntracked = { fg = Palette.yellow },
                NvimTreeGitRenamed = { fg = Palette.lavender },
                NvimTreeGitIgnored = { fg = Palette.noir_7 },
                NvimTreeGitMerge = { fg = Palette.mauve },
                NvimTreeGitModified = { fg = Palette.peach },
                NvimTreeGitDeleted = { fg = Palette.red },

                NvimTreeWinSeparator = { bg = Palette.none, fg = Palette.none },
                NvimTreeFolderIcon = { fg = Palette.noir_4 },
                NvimTreeFolderName = { fg = Palette.noir_4 },
                NvimTreeFileIcon = { fg = Palette.noir_4 },
                NvimTreeFileName = { fg = Palette.noir_4 },
                NvimTreeIndentMarker = { fg = Palette.noir_8 },
                NvimTreeNormal = { fg = Palette.noir_4 },
                NvimTreeVertSplit = { bg = Palette.none, fg = Palette.none },
                NvimTreeOpenedFolderIcon = { bg = Palette.none, fg = Palette.noir_4 },
                NvimTreeOpenedFolderName = { bg = Palette.none, fg = Palette.noir_4 },
                NvimTreeCursorLine = { bg = "#181818" },
                NvimTreeEmptyFolderName = { bg = Palette.none, fg = Palette.noir_4 },

                DevIconDefault = { fg = Palette.noir_4 },

                FloatBorder = { bg = Palette.none, fg = Palette.noir_8 },
                FloatShadow = { bg = Palette.none, fg = Palette.none },
                FloatShadowThrough = { bg = Palette.none, fg = Palette.none },

                NormalFloat = { bg = Palette.none, fg = Palette.noir_4 },

                Folded = { bg = Palette.none, fg = Palette.noir_7 },

                Pmenu = { bg = "#181818", fg = Palette.noir_3 },
                PmenuSel = { bg = Palette.noir_8, fg = Palette.text },
                PmenuSbar = { bg = "#181818", fg = Palette.none },
                PmenuThumb = { bg = Palette.noir_8, fg = Palette.none },

                NoiceCmdlineIcon = { bg = Palette.none, fg = Palette.text },
                NoiceCmdlinePopup = { bg = Palette.none, fg = Palette.noir_3 },
                NoiceCmdlinePopupBorderInput = { bg = Palette.none, fg = Palette.noir_5 },
                NoiceCmdlinePopupBorder = { bg = Palette.none, fg = Palette.noir_8 },

                NoiceLspProgressClient = { fg = Palette.noir_0 },
                NoiceLspProgressSpinner = { fg = Palette.noir_0 },

                DiagnosticSignError = { fg = Palette.red },
                DiagnosticSignWarn = { fg = Palette.yellow },
                DiagnosticSignInfo = { fg = Palette.blue },
                DiagnosticSignHint = { fg = Palette.green },
            }

            -- apply highlights
            for group, opts in pairs(highlights) do
                local cmd = "highlight " .. group

                if opts.fg then
                    cmd = cmd .. " guifg=" .. opts.fg
                end

                if opts.bg then
                    cmd = cmd .. " guibg=" .. opts.bg
                end

                if opts.style then
                    cmd = cmd .. " gui=" .. opts.style
                end

                vim.cmd(cmd)
            end
        end,
    }
})
