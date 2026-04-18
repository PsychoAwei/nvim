vim.pack.add({
    -- 底部状态栏
    "https://github.com/nvim-lualine/lualine.nvim",
})
require("lualine").setup({
    options = {
        icons_enabled = true,          -- 显示图标（需要 nvim-web-devicons）
        theme = 'auto',                -- 自动匹配当前 colorscheme（推荐）
        globalstatus = true,           -- 整个 Neovim 只显示一个全局状态栏（推荐）
        always_divide_middle = true,
    },
})