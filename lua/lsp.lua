local servers = {
    "lua_ls",      -- Lua
    "pyright",     -- Python
    "rust_analyzer",   -- ← 新增这一行（Rust）
    -- "clangd",   -- C/C++ 等，根据需要添加
}

-- 启用服务器（Neovim 0.12 推荐方式）
vim.lsp.enable(servers)

-- 可选：对 rust-analyzer 做额外配置（推荐加上）
vim.lsp.config("rust_analyzer", {
    settings = {
        ["rust-analyzer"] = {
            cargo = {
                allFeatures = true,      -- 启用所有 cargo features
                loadOutDirsFromCheck = true,
            },
            checkOnSave = {
                command = "clippy",      -- 使用 clippy 检查（更严格）
            },
            procMacro = {
                enable = true,
            },
            inlayHints = {
                bindingModeHints = { enabled = true },
                closureCaptureHints = { enabled = true },
                closureReturnTypeHints = { enable = "always" },
                typeHints = { enabled = true },
            },
        },
    },
})

-- LSP 附加快捷键（已有的保持）
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client and client.supports_method("textDocument/completion") then
            vim.bo[args.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
        end
    end,
})