local quarto = require('quarto')

quarto.setup{}

vim.keymap.set('n', '<leader>qp', quarto.quartoPreview, { silent = true, noremap = true })
