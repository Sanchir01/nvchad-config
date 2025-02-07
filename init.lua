vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"
vim.opt.shell = "pwsh"

vim.filetype.add {
  extension = {
        tsx = "typescriptreact",
       prisma = "prisma",
  },
}
-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

--NvChad tree options
require("nvim-tree").setup {
  view = {
    adaptive_size = true, -- Включает адаптивную ширину
    side = "left", -- Укажите сторону (left или right)
    width = 30, -- Минимальная ширина
  },
  renderer = {
    highlight_git = true, -- Подсветка git-изменений
    icons = {
      show = {
        git = true,
        folder = true,
        file = true,
        folder_arrow = true,
      },
    },
  },
  git = {
    enable = true, -- Включение интеграции с git
  },
  filters = {
    dotfiles = false, -- Скрытие/показ скрытых файлов
  },
}

vim.schedule(function()
  require "mappings"
end)
