vim.pack.add({
    -- 顶部文件栏
    "https://github.com/akinsho/bufferline.nvim",
})

require("bufferline").setup({
    options = {
        mode = "buffers",                    -- 显示 buffers（也可以改成 "tabs"）
        themable = false,
        numbers = "none",                    -- 可以改成 "ordinal" 显示编号
        close_command = "bdelete! %d",       -- 关闭 buffer 的命令
        right_mouse_command = "bdelete! %d",
        left_mouse_command = "buffer %d",    -- 左键点击切换
        middle_mouse_command = nil,

        -- 图标设置
        indicator = {
            icon = '▎',                      -- 活跃 buffer 的指示器
            style = 'icon',
        },
        buffer_close_icon = '󰅖',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',

        -- 与 nvim-tree 自动偏移（重要！防止重叠）
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",      -- 或者 "Explorer"
                text_align = "left",
                separator = true,
            },
        },

        color_icons = true,                  -- 是否给不同文件类型不同颜色图标
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        show_duplicate_prefix = true,        -- 显示重复文件名时的前缀
        persist_buffer_sort = true,          -- 记住排序

        separator_style = "thin",            -- 样式： "slant" | "padded_slant" | "thick" | "thin"
        enforce_regular_tabs = false,
        always_show_bufferline = true,       -- 即使只有一个 buffer 也显示
        hover = {
            enabled = true,
            delay = 200,
            reveal = { 'close' }
        },
    },
})


