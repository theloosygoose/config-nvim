local lualine = require('lualine')
local default_theme = { fg = "#54de60", bg = "None" }

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

vim.opt.fillchars = {
    stl = "-",
    stlnc = "-",
}

lualine.setup {
    options = {
        icons_enabled = true,
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
        theme = {
            normal = {
                c = default_theme,
                x = default_theme,
            },
            inactive = {
                c = default_theme,
                x = default_theme,
            }
        }
    },
    sections = {
        lualine_a = { 'branch' },
        lualine_b = {
            { 'diff', source = diff_source },
            'diagnostics',
        },

        lualine_c = { 'filename', 'harpoon2' },
        lualine_x = { 'filetype' },
        lualine_z = {}
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
