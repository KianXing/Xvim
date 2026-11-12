vim.pack.add({
    {
        src = "https://github.com/neovim/nvim-lspconfig",
        name = "nvim-lspconfig",
    },
    {
        src = "http://github.com/mason-org/mason-lspconfig.nvim",
        name = "mason-lspconfig.nvim",
    },
    {
        src = "https://github.com/mason-org/mason.nvim",
        name = "mason.nvim",
    },
}
)

require("mason").setup({
})

-- install lsp
local registry = require("mason-registry")
local function setup(name)
    local success, package = pcall(registry.get_pakage,name)
    if success and not package:is_installed() then
        package:install()
    end
    require("mason-lspconfig").setup({
        automatic_enable = false,
    })
    local nvim_lsp = require("mason-lspconfig").get_mappings().package_to_lspconfig[name]
    vim.lsp.enable(nvim_lsp)
end

-- setup lsp
local servers = {
"lua-language-server",
"pyright",
"clangd",
"html-lsp",
"typescript-language-server",
"emmet-ls",
}
for _, server in ipairs(servers) do
    setup(server)
end

-- nvim lsp config
vim.diagnostic.config({
    underline = true,
    virtual_text = true,
    update_in_insert = true,
})
