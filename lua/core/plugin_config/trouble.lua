local trouble = require('trouble')

vim.keymap.set("n", "<leader><leader>t", function() trouble.toggle() end)
