require("catppuccin").setup({
  flavour = "frappe", -- latte / frappe / macchiato / mocha

  transparent_background = true, -- 透明背景（可选）

  term_colors = true,

  styles = {
    comments = { "italic" },
    keywords = { "italic" },
  },

  integrations = {
    treesitter = true,
    native_lsp = {
      enabled = true,
    },
    telescope = true,
  },
})

vim.cmd.colorscheme("catppuccin")