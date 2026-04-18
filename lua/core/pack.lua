vim.pack.add({
  -- 颜色主题
  "https://github.com/catppuccin/nvim",
  -- 图标支持（必须）
  "https://github.com/nvim-tree/nvim-web-devicons",
  -- 文件树（侧边栏，像 VS Code Explorer）
  "https://github.com/nvim-tree/nvim-tree.lua",
  -- 底边状态栏
  "https://github.com/nvim-lualine/lualine.nvim",
})
-- 加载插件配置
require("plugins.colorscheme")
require("plugins.nvimtree")
require("plugins.lualine")