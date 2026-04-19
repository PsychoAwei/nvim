-- lsp.lua
-- 全局诊断显示设置（对所有 LSP 生效）
vim.diagnostic.config({
  virtual_text = {
    source = "if_many",      -- 只在同一行有多个诊断时显示来源
    prefix = "●",            -- 或者 "■" / "▎"
  },
  float = {
    source = true,           -- 显示 "basedpyright" 或 "rust_analyzer"
    border = "rounded",
    header = "Diagnostics",
    prefix = function(diagnostic)
      local severity = vim.diagnostic.severity[diagnostic.severity]
      return string.format("%s ", severity:sub(1,1))  -- 显示 E/W/H/I
    end,
  },
  signs = true,
  underline = true,
  severity_sort = true,      -- 按严重程度排序（Error > Warning）
})

local function on_attach(client, bufnr)
  local opts = { buffer = bufnr, silent = true, noremap = true }

  -- 通用快捷键（对所有 LSP 生效）
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
end

-- 启用所有服务器，并传入统一的 on_attach
local servers = {
  "rust_analyzer",
  "basedpyright",
}
for _, server in ipairs(servers) do
  vim.lsp.config(server, {
    on_attach = on_attach,
  })
end

vim.lsp.enable(servers)