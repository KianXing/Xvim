-- build = ":TSUpdate"
vim.api.nvim_create_autocmd("PackChanged",{
    callback = function (ev)
        local data = ev.data
        if data.spec.name ~= "nvim-treesitter" then
            return
        end
        if data.kind == "install" or data.kind == "update" then
            vim.cmd.packadd("nvim-treesitter")
            vim.cmd("TSUpdate")
        end
    end
})
vim.pack.add({
    {
        src = "https://github.com/nvim-treesitter/nvim-treesitter",
        name = "nvim-treesitter",
    }
})

-- treesitter config
require("nvim-treesitter").install({
    "c", "python", "lua"
})
vim.api.nvim_create_autocmd("FileType",{
    pattern = {
        "lua",
        "c",
        "python",
    },
    callback = function ()
        vim.treesitter.start()
    end
})
