vim.pack.add({
    {src = "https://github.com/folke/tokyonight.nvim",
    name = "tokyonight.nvim"},
})

require("tokyonight").setup({
    style = "moon",
})

vim.cmd.colorscheme("tokyonight")
