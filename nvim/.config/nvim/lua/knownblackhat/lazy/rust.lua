return {
    "mrcjkb/rustaceanvim",
    -- enabled = false,
    version = "^9",
    lazy = false,
    init = function()
        vim.g.rustaceanvim = {
            server = {
                capabilities = require("cmp_nvim_lsp").default_capabilities(),
                settings = {
                    ["rust-analyzer"] = {
                        cargo = {
                            allFeatures = true,
                        },
                        procMacro = {
                            enable = true,
                        },
                    },
                },
            },
        }
    end,
}
