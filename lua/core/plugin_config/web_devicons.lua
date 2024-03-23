require('nvim-web-devicons').setup{
    override = {
        godot = {
            icon = "",
            name = "Godot",
        }
    },

    override_by_extension = {
        ["gd"] = {
            icon = "",
            color = "#478cbf",
            name = "Godot",
        },
        ["godot"] = {
            icon = "",
            color = "#b54645",
            name = "Godot",
        },
        ["tscn"] ={
            icon = "",
            color = "#aa47c1",
        },

        ["tres"] = {
            icon = "󰪷",
            color = "#beba3c",
        }
    }
}
