require 'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "c",
        "glsl",
        "cpp",
        "c_sharp",
        "lua",
        "gdscript",
        "godot_resource",
        "gdshader",
        "rust",
        "toml",
        "json",
        "markdown",
    },

    sync_install = true,
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
