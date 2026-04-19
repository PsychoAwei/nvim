vim.pack.add({
    "https://github.com/nvim-treesitter/nvim-treesitter",
})


require("nvim-treesitter.config").setup({
    -- 确保安装你需要的语言解析器（根据你常用语言添加）
    ensure_installed = { "rust", "lua", "python", "c", "cpp" },

    -- 必须开启 highlight！这是彩虹括号工作的前提
    highlight = {
        enable = true,                    -- ← 关键！必须为 true
        additional_vim_regex_highlighting = false,  -- 通常关闭，避免冲突
    },

    -- 可选：智能缩进
    indent = {
        enable = true,
    },
})