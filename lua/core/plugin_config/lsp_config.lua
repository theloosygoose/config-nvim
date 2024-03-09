require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls" }
})


local lspconfig = require('lspconfig')
local lsp_defaults = lspconfig.util.default_config


require("lspconfig").lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.stdpath "config" .. "/lua"] = true,
        },
      },
    },
  }
}


