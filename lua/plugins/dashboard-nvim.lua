if vim.fn.argc()>0 then
    return
end
vim.pack.add({
    {
        src = "https://github.com/nvim-tree/nvim-web-devicons",
        name = "nvim-web-devicons",
    },
    {
        src = "https://github.com/nvimdev/dashboard-nvim",
        name = "dashboard-nvim",
    }
}
-- {load = function () end}
)
local logo_path = vim.fn.stdpath("config")
  .. "/assets/asuka.txt"

local header = vim.fn.readfile(logo_path)

vim.list_extend(header, {
  "",
  "██╗  ██╗██╗   ██╗██╗███╗   ███╗",
  "╚██╗██╔╝██║   ██║██║████╗ ████║",
  " ╚███╔╝ ██║   ██║██║██╔████╔██║",
  " ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║",
  "██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║",
  "╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
  "",
})
-- dashboard-nvim config
require("dashboard").setup({
  theme = "doom",
  config = {
    header = header,
    center = {
      {
        icon = "󰈞 ",
        desc = "Find File",
        key = "f",
        action = "FzfLua files",
      },
      {
        icon = "󰋚 ",
        desc = "Recent Files",
        key = "r",
        action = "FzfLua oldfiles",
      },
      {
        icon = "󰒲 ",
        desc = "Quit",
        key = "q",
        action = "qa",
      },
    },
    footer = {
      "XVim - My personal Neovim configuration",
    },
    vertical_center = true,
  },
})

