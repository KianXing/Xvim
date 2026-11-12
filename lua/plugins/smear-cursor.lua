vim.pack.add({
    {
        src = "https://github.com/sphamba/smear-cursor.nvim",
        name = "smear_cursor.nvim"
    }
})

require("smear_cursor").setup({
    -- Your options
    smear_between_buffers = true,
    smear_between_neighbor_lines = true,
    scroll_buffer_space = true,
    legacy_computing_symbols_support = false,
    smear_insert_mode = true,
})
