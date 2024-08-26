require("markview").setup({
    -- VISUAL SETTINGS
    headings = {
        enable = true,
        heading_1 = {
            style = "label",
            padding_left = " ",
            padding_right = " ",
            h1 = "MarkviewHeading1"
        }
    },
    --  CALLBACK AND SETTINGS
    modes = { "n", "no", "c" }, -- Change these modes
                                -- to what you need

    hybrid_modes = { "n" },     -- Uses this feature on
                                -- normal mode

    -- This is nice to have
    callbacks = {
        on_enable = function (_, win)
            vim.wo[win].conceallevel = 2;
            vim.wo[win].conecalcursor = "c";
        end
    }
})
