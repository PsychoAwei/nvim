require("lualine").setup({
    options = {
        icons_enabled = true,          -- 显示图标（需要 nvim-web-devicons）
        theme = 'auto',                -- 自动匹配当前 colorscheme（推荐）
        -- 或者指定主题：'catppuccin', 'tokyonight', 'gruvbox', 'onedark' 等
        -- component_separators = { left = '', right = '' },
        -- section_separators = { left = '', right = '' },
        globalstatus = true,           -- 整个 Neovim 只显示一个全局状态栏（推荐）
        always_divide_middle = true,
        refresh = {
            statusline = 500,         -- 刷新频率（毫秒）
        },
    },
})