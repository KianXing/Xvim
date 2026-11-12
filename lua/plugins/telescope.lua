-- build telescope-fzf-native.nvim
vim.api.nvim_create_autocmd("PackChanged", {
  group = vim.api.nvim_create_augroup("BuildTelescopeFzf", {
    clear = true,
  }),
  callback = function(ev)
    local data = ev.data

    if data.spec.name ~= "telescope-fzf-native.nvim" then
      return
    end

    if data.kind == "install" or data.kind == "update" then
      local result = vim.system({ "make" }, {
        cwd = data.path,
        text = true,
      }):wait()

      if result.code ~= 0 then
        error(result.stderr or "fzf-native 构建失败")
      end
    end
  end,
})
-- packadd
vim.pack.add({
  {
    src = "https://github.com/nvim-lua/plenary.nvim",
  },
  {
    src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim",
  },
  {
    src = "https://github.com/nvim-telescope/telescope.nvim",
    version = vim.version.range("*"),
  },
})

require("telescope").setup({})
require("telescope").load_extension("fzf")

local builtin = require("telescope.builtin")

        vim.keymap.set("n", "<leader>ff", builtin.find_files, {
            desc = "搜索文件",
        })
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, {
            desc = "搜索文件内容",
        })
        vim.keymap.set("n", "<leader>fb", builtin.buffers, {
            desc = "搜索缓冲区",
        })
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, {
            desc = "搜索帮助",
        })
