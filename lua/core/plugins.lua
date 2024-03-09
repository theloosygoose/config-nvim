
require("lazy").setup({

    { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
    {'windwp/nvim-autopairs', event = "InsertEnter", config = true },

    'nvim-treesitter/nvim-treesitter',

-- COMPLETION

-- LSP SHIT
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',

-- NVIM BUILT IN LSP
    'neovim/nvim-lspconfig'

})
