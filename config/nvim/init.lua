vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.termguicolors = true

vim.cmd("highlight Normal guibg=#0d0d0d")
vim.cmd("highlight NormalNC guibg=#0d0d0d")

vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-tree/nvim-tree.lua'
end)

local ok_tree, nvim_tree = pcall(require, "nvim-tree")
if ok_tree then
  nvim_tree.setup()
end

local ok_api, api = pcall(require, "nvim-tree.api")
if ok_api then
  vim.keymap.set('n', '<C-n>', api.tree.toggle)
  vim.keymap.set('n', '<C-f>', api.tree.focus)
end

vim.keymap.set('n', '<C-h>', function()
  vim.cmd("wincmd l")
end)

