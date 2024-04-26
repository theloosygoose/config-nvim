require('telescope').setup({ file_ignore_patterns = { "node%_modules/.*", ".godot/."} })

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>t', builtin.find_files, {})
vim.keymap.set('n', '<leader><leader>o', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})
