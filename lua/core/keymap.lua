-- vim.keymap.set({"n", "i"}, "<C-z>", "<Cmd>undo<CR>", {silent = true})

vim.g.mapleader = " "

--- tab config
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", {silent = true})
vim.keymap.set("n", "<leader>tt", ":tab split<CR>", {silent = true})
vim.keymap.set("n", "<leader>td", ":tabclose<CR>", {silent = true})
