require'nvim-treesitter.configs'.setup {
    ensure_installed = {"c", "cpp", "c_sharp" , "lua", "gdscript", "godot_resource", "gdshader", "rust", "json"},

    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },

    indent = {
        enable = true,
    },
}
