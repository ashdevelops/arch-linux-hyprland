local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "
require("lazy").setup("plugins")

vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.termguicolors = true

vim.cmd("syntax on")
vim.cmd("highlight Normal guibg=#0d0d0d")
vim.cmd("highlight NormalNC guibg=#0d0d0d")

vim.keymap.set('n', '<C-h>', function()
  vim.cmd("wincmd l")
end)

vim.keymap.set("n", "<leader>ff", "<cmd>Files<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<Tab>", "<C-w>l", { desc = "Focus right" })
vim.keymap.set("n", "<S-Tab>", "<C-w>h", { desc = "Focus left" })

vim.cmd("filetype plugin indent on")
vim.cmd("colorscheme catppuccin")
