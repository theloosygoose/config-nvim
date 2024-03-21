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
    },

    sync_install = true,
    auto_install = true,
    highlight = {
        additional_vim_regex_highlighting = true,
        enable = true,
    },

    indent = {
        enable = true,
        disable = {
            "gdscript",
        }
    },
}
