require('hop').setup {
    keys = 'etovxqpdygfblzhckisuran',
}

-- Keybindings
local directions = require('hop.hint').HintDirection
local hop = require('hop')
vim.keymap.set('', '<leader><leader>a', function()
    hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = false })
end, { remap = true })

vim.keymap.set('', '<leader><leader>b', function()
    hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = false })
end, { remap = true })

vim.keymap.set('', '<leader><leader>p', function()
    hop.hint_patterns({ current_line_only = false })
end, { remap = true })
