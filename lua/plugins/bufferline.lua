vim.pack.add({
    {   src = "https://github.com/nvim-tree/nvim-web-devicons",
        name = "nvim-web-devicons",
    },
    {
        src = "https://github.com/akinsho/bufferline.nvim",
        name = "bufferline.nvim",
    },
},
{
    load = true,
})
-- opts
require("bufferline").setup({
    options = { mode = "buffers",
    show_tab_indicators = true
    },
})

--- keymap
vim.keymap.set("n", "<leader>bh", ":BufferLineCyclePrev<CR>", {silent = true})
vim.keymap.set("n", "<leader>bl", ":BufferLineCycleNext<CR>", {silent = true})
vim.keymap.set("n", "<leader>bp", ":BufferLinePick<CR>", {silent = true})
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", {silent = true})


