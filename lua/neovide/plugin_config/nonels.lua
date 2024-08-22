local null_ls = require("null-ls")


null_ls.setup({
    sources = {
        debug = false,
        null_ls.builtins.diagnostics.spell,
    },

})
