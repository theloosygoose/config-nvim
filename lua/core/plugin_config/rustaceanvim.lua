vim.g.rustaceanvim = {
    tools = {
        -- ...
    },

    server = {
        default_settings = {
            -- rust-analyzer language server configuration
            ['rust-analyzer'] = {
                cargo = {
                    allFeatures = true,
                    loadOutDirsFromCheck = true,
                    runBuildScripts = true,
                },
            },
        },
        -- ...
    },
    dap = {
        -- ...
    },
}
