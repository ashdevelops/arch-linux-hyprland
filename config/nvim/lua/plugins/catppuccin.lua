return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = false,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- Options: latte, frappe, macchiato, mocha
      transparent_background = false,
      integrations = {
        treesitter = true,
        native_lsp = {
          enabled = true,
        },
        cmp = true,
        gitsigns = true,
        telescope = true,
        nvimtree = true,
        notify = false,
        mini = false,
      },
    })
    vim.cmd("colorscheme catppuccin")
  end,
}

