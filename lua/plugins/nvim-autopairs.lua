vim.pack.add({
  {
    src = "https://github.com/windwp/nvim-autopairs",
    name = "nvim-autopairs",
  },
},
{
load = function () end
})

-- event InsertEnter
vim.api.nvim_create_autocmd("InsertEnter",{
    group = vim.api.nvim_create_augroup("LoadAutoPairs",{clear = true}),
    once = true,
    callback = function ()
        vim.cmd.packadd("nvim-autopairs")
        require("nvim-autopairs").setup()
    end
})
