vim.pack.add({
  {
    src = "https://github.com/nvimdev/lspsaga.nvim",
    name = "lspsaga.nvim",
  },
}, {
  load = function() end,
})

-- command Lspsaga
vim.api.nvim_create_user_command("Lspsaga", function(opts)
  vim.api.nvim_del_user_command("Lspsaga")

  vim.cmd.packadd("lspsaga.nvim")
  require("lspsaga").setup({})

  -- 加载完成后执行原来的命令
  vim.api.nvim_cmd({
    cmd = "Lspsaga",
    args = opts.fargs,
  }, {})
end, {
  nargs = "+",
})

-- keymap
vim.keymap.set("n", "<leader>lr", ":Lspsaga rename<CR>", {silent = true})
vim.keymap.set("n", "<leader>lc", ":Lspsaga code_action<CR>", {silent = true})
vim.keymap.set("n", "<leader>ld", ":Lspsaga goto_definition vsplit<CR>", {silent = true})
vim.keymap.set("n", "<leader>lD", ":Lspsaga goto_definition split<CR>", {silent = true})
vim.keymap.set("n", "<leader>lh", ":Lspsaga hover_doc<CR>", {silent = true})
vim.keymap.set("n", "<leader>lR", ":Lspsaga finder<CR>", {silent = true})
vim.keymap.set("n", "<leader>ln", ":Lspsaga dignostic_jump_next<CR>", {silent = true})
vim.keymap.set("n", "<leader>lp", ":Lspsaga dignostic_jump_prev<CR>", {silent = true})
