vim.pack.add({
    {
        src = "https://github.com/nvim-mini/mini.files",
        name = "mini.files",
        version = vim.version.range("*"),
        load = function () end
    },
})

-- keymap config
vim.keymap.set("n","<leader>e",function ()
    vim.cmd.packadd("mini.files")
    require("mini.files").setup()
    -- key remap   
    vim.keymap.set("n","<leader>e", function ()
        local path = vim.api.nvim_buf_get_name(0)
        if vim.bo.buftype ~= "" or path == "" then
            path = vim.fn.getcwd()
        end
        require("mini.files").open(path)
    end, {silent = true})
    -- continue execute
    local path = vim.api.nvim_buf_get_name(0)
    if vim.bo.buftype ~= "" or path == "" then
        path = vim.fn.getcwd()
    end
    require("mini.files").open(path)
end, {silent = true})
