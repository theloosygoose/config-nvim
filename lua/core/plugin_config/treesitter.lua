require 'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "cpp",
        "lua",
        "gdscript",
        "godot_resource",
        "toml",
        "json",
        "markdown",
    },

    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },

    indent = {
        enable = true,
        disable = {
            "gdscript",
        }
    },
}
