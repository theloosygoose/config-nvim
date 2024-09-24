require("mason-lspconfig").setup({
    ensure_installed = {
        lsp = {
            "lua_ls",
            "clangd",
            "gopls",
            "svelte",
            "pyright",
            "omnisharp_mono",
        },

        tools = {
            "gdtoolkit",
            "csharpier",
        }
    }
})

local lspconfig = require('lspconfig')
local lsp_defaults = lspconfig.util.default_config

lsp_defaults.capabilities = vim.tbl_deep_extend(
    'force',
    lsp_defaults.capabilities,
    require('cmp_nvim_lsp').default_capabilities()
)


require("lspconfig").lua_ls.setup {
    settings = {
        Lua = {
            hint = { enable = true },
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

-- LANGUAGE CONFIG START --

lspconfig.omnisharp_mono.setup {

    enable_ms_build_load_projects_on_demand = false,
    enable_import_completion = true,
}

lspconfig.glsl_analyzer.setup { filetypes = { "frag", "glsl", "vert" } }

lspconfig.gdscript.setup {
    single_file_support = false,
    inlay_hints = true,

    cmd = { "ncat", "127.0.0.1", "6005" },

    root_dir = lspconfig.util.root_pattern('project.godot', '.git'),
    filetypes = { 'gd', 'gdscript', 'gdscript3' },

}

lspconfig.clangd.setup {}

lspconfig.gopls.setup {
    settings = {
        gopls = {
            hints = {
                assignVariableTypes = true,
                compositeLiteralFields = true,
                compositeLiteralTypes = true,
                constantValues = true,
                functionTypeParameters = true,
                parameterNames = true,
                rangeVariableTypes = true,
            }
        }
    }
}

lspconfig.jsonls.setup {
    settings = {
        hint = { enable = true },
    }
}

-- WebDev Stuff
lspconfig.emmet_language_server.setup {
    filetypes = { "templ", "css", "eruby", "html", "javascriptreact", "less", "sass", "scss"},
    init_options = {
        ---@type table<string, string>
        includeLanguages = {},
        --- @type string[]
        excludeLanguages = {},
        --- @type string[]
        extensionsPath = {},
        --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/preferences/)
        preferences = {},
        --- @type boolean Defaults to `true`
        showAbbreviationSuggestions = true,
        --- @type "always" | "never" Defaults to `"always"`
        showExpandedAbbreviation = "always",
        --- @type boolean Defaults to `false`
        showSuggestionsAsSnippets = false,
        --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/syntax-profiles/)
        syntaxProfiles = {},
        --- @type table<string, string> [Emmet Docs](https://docs.emmet.io/customization/snippets/#variables)
        variables = {},
    },

}
lspconfig.htmx.setup {
    filetypes = {"html", "templ"}
}
lspconfig.cssls.setup {}
lspconfig.templ.setup {}
lspconfig.html.setup {
    filetypes = {"html", "templ"}
}
lspconfig.tailwindcss.setup{
    filetypes = {"html", "templ", "markdown", "svelte", "css"}
}
lspconfig.ts_ls.setup{}

lspconfig.svelte.setup{}

-- SQL
lspconfig.sqlls.setup{}

-- Python
lspconfig.pyright.setup{}

-- LANGUAGE CONFIG END --

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        local opts = { buffer = ev.buf }

        -- WIP - Show inlay hints
        vim.keymap.set('n', '<space>h', function ()
            vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
            end
        )

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        vim.keymap.set('n', 'gl', vim.diagnostic.open_float, opts)
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', '<space>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts)

        vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
        vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        vim.keymap.set('n', '<space>f', function()
            vim.lsp.buf.format { async = true }
        end, opts)
    end,
})
