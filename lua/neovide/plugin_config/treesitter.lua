require 'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "markdown",
    },

    sync_install = true,
    auto_install = true,
    highlight = {
        additional_vim_regex_highlighting = true,
        enable = true,
    },

    indent = {
        enable = true,
    },
}
