require("nvim-tree").setup({
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 25,           -- 侧边栏宽度（可改成 30 或 40）
        side = "left",        -- 左侧（像 VS Code）
    },
    renderer = {
        group_empty = true,   -- 把空文件夹分组
        highlight_git = true,
        icons = {
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
        },
    },
    filters = {
        dotfiles = false,     -- 是否显示隐藏文件（.开头的），false = 显示
    },
    actions = {
        open_file = {
            quit_on_open = false,   -- 打开文件后不自动关闭文件树
            resize_window = true,
        },
    },
    on_attach = function(bufnr)
        local api = require("nvim-tree.api")
        local function opts(desc)
            return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        -- 默认映射保持
        api.config.mappings.default_on_attach(bufnr)

        -- 自定义快捷键（在文件树里按这些键）
        vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
    end,
})