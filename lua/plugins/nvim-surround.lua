vim.pack.add({
    {
        src = "https://github.com/kylechui/nvim-surround",
        name = "nvim-surround",
    },
},
{
-- load = function () end
load = true
})

require("nvim-surround")

-- event: InsertEnter
vim.api.nvim_create_autocmd("InsertEnter",{
    group = vim.api.nvim_create_augroup("LoadSurround",{clear = true}),
    once = true,
    callback = function ()
        vim.cmd.packadd("nvim-surround")
        require("nvim-surround").setup()
    end
})
