local telescope = require('telescope')
local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

local layout_strategies = require("telescope.pickers.layout_strategies")

layout_strategies.vertical_fused = function(picker, max_columns, max_lines, layout_config)
    local layout = layout_strategies.vertical(picker, max_columns, max_lines, layout_config)

    layout.prompt.title = ""
    layout.results.title = ""

    if layout.preview then
        layout.preview.title = ""
        layout.preview.height = layout.preview.height + 1
        layout.preview.borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }

        layout.results.borderchars = { "─", "│", "─", "│", "├", "┤", "┤", "├" }
    else
        layout.results.borderchars = { "─", "│", "─", "│", "╭", "╮", "┤", "├" }
    end

    layout.results.height = layout.results.height + 1

    layout.prompt.borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }

    return layout
end

telescope.setup({
    file_ignore_patterns = { "node%_modules/.*", ".godot/.", "torch-venv/."},

    defaults = {
        initial_mode = "insert",
        layout_strategy = "vertical_fused",
        layout_config = {
            preview_cutoff = 1,
            width = 0.45,
            height = 0.9,
        },
        prompt_prefix = " ❯ ",
        selection_caret = "❯ ",
        path_display = { "truncate" },
        winblend = 0,
        color_devicons = false,
        sorting_strategy = "descending",

        mappings = {
            n = {
                ["<leader>q"] = actions.close,
            }
        }
    },
	pickers = {
        git_status = {
                initial_mode = "normal",
            },
        },
        extensions = {
            file_browser = {
                previewer = true,
                grouped = true,
                hijack_netrw = false,
                hidden = true,
                initial_mode = "normal",
                use_fd = true,
                respect_gitignore = true,
        },
    },
})

telescope.load_extension("file_browser")

vim.keymap.set('n', '<leader>t', builtin.find_files, {})
vim.keymap.set('n', '<leader><leader>o', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})
