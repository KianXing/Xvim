vim.pack.add({
    {
        src = "https://github.com/karb94/neoscroll.nvim",
        name = "neoscroll.nvim",
    }
})

-- neoscroll config
require("neoscroll").setup({
    mappings = {
        '<C-u>', '<C-d>',
        '<C-b>', '<C-f>',
        '<C-y>', '<C-e>',
        'zt', 'zz', 'zb',
    },
    stop_eof = true,
    respect_scrolloff = false,
    cursor_scrolls_alone = true,
})
