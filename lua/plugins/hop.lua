vim.pack.add({
    {
        src = "https://github.com/smoka7/hop.nvim",
        name = "hop.nvim",
    },
},
{
    load = function () end
})

-- hop config
local ops = {
    hint_position = 3,
}

-- keymap
vim.keymap.set("n", "<leader>hp",function ()
    vim.cmd.packadd("hop")
    require("hop.nvim").setup(ops)
    -- key remap
    vim.keymap.set("n", "<leader>hp", ":HopWord<CR>",{silent = true})
    -- first cmd
    vim.cmd("HopWord")

end, {silent = true})
