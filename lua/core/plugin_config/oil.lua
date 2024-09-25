local oil = require('oil')

oil.setup {
    default_file_explorer = true,
    columns = {
        "icon",
        "size",
    },
    view_options = {
        show_hidden = true,
    },
    float = {
        padding = 4,
        max_width = 80,
        max_height = 50,

        win_options = {
            winblend = 0,
        },

        preview_split = "above",
        -- This is the config that will be passed to nvim_open_win.
        -- Change values here to customize the layout
        override = function(conf)
        end,
    },
    git = {
        -- Return true to automatically git add/mv/rm files
        add = function(path)
            return false
        end,
        mv = function(src_path, dest_path)
            return false
        end,
        rm = function(path)
            return false
        end,
    },
    preview = {
        max_width = 0.9,
        min_width = { 40, 0.4 },
        width = nil,
        max_height = 0.9,
        min_height = { 5, 0.1 },
        height = nil,

        win_options = {
            winblend = 0,
        },

        update_on_cursor_moved = true,
    },
    progress = {
        max_width = 0.9,
        min_width = { 40, 0.4 },
        width = nil,
        max_height = { 10, 0.9 },
        min_height = { 5, 0.1 },
        height = nil,

        minimized_border = "none",
        win_options = {
            winblend = 0,
        },
    },
}

vim.keymap.set('n', '<leader>pv', function()
        oil.toggle_float(oil.get_current_dir())
    end,
    { desc = "Toggle Oil File Explorer" }
)
