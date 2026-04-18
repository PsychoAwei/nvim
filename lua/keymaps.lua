vim.g.mapleader = " "

-- 文件树映射
-- 将光标聚焦到文件树上面
vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>")
-- bufferline
-- 切换 buffer（左右移动）
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = "下一个 buffer" })
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { desc = "上一个 buffer" })
vim.keymap.set("n", "<leader>bc", function()
    require("mini.bufremove").delete(0, false)  -- false = 不强制关闭未保存 buffer
end, { desc = "关闭当前 buffer 保持布局" })