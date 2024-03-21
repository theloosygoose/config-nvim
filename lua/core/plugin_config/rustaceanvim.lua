vim.g.rustaceanvim = {
    tools = {
        -- ...
    },
    server = {
        on_attach = function(_, bufnr)
            -- Set keybindings, etc. here.
            vim.keymap.set("n", "<leader>cR", function()
                vim.cmd.RustLsp("codeAction")
            end, { desc = "Code Action", buffer = bufnr })
            vim.keymap.set("n", "<leader>dr", function()
                vim.cmd.RustLsp("debuggables")
            end, { desc = "Rust debuggables", buffer = bufnr })
        end,
        default_settings = {
            -- rust-analyzer language server configuration
            ['rust-analyzer'] = {
                cargo = {
                    allFeatures = true,
                    loadOutDirsFromCheck = true,
                    runBuildScripts = true,
                },
                checkOnSave = {
                    allFeatures = true,
                    command = "clippy",
                    extraArgs = {"--no-deps"},
                }
            },
        },
        -- ...
    },
    dap = {
        -- ...
    },
}
