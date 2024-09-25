local lualine = require('lualine')

local function diff_source()
    local gitsigns = vim.b.gitsigns_status_dict
    if gitsigns then
        return {
            added = gitsigns.added,
            modified = gitsigns.changed,
            removed = gitsigns.removed
        }
    end
end


lualine.setup {
    options = {
        icons_enabled = true,
        theme = {
            normal = {
                a = {bg = '#101010', gui = 'bold'},
                b = {bg = '#101010'},
                c = {bg = '#101010'},
                x = {bg = '#101010'},
                y = {bg = '#101010'},
                z = {bg = '#101010'},
            },
            insert = {
                a = {bg = '#101010', gui = 'bold'},
                b = {bg = '#101010'},
                c = {bg = '#101010'},
                x = {bg = '#101010'},
                y = {bg = '#101010'},
                z = {bg = '#101010'},
            },
            visual = {
                a = {bg = '#101010', gui = 'bold'},
                b = {bg = '#222222'},
                c = {bg = '#222222'},
                x = {bg = '#222222'},
                y = {bg = '#222222'},
                z = {bg = '#222222'},
            },

        },
        component_separators = { '' },
        section_separators = { '' },
        disabled_filetypes = {
            statusline = {},
            winbar = {},

        },

        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,

        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        },
    },
    sections = {
        lualine_a = {},
        lualine_b = { 'branch' },
        lualine_c = { 'filename', 'harpoon2' },
        lualine_x = { 'filetype' },
        lualine_z = {
            { 'diff', source = diff_source },
            'diagnostics',
        }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}

}
