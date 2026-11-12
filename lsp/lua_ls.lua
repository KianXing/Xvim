return{
    capabilities = require("blink.cmp").get_lsp_capabilities(),
    on_attach = function(client)
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
    end,
    settings = {
        Lua = {
            diagnostics = {
                globals = {"vim",}
            },
        },
    }
}
