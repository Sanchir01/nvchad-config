return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require "configs.conform"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
  "folke/persistence.nvim",
  event = "BufReadPre", -- this will only start session saving when an actual file was opened
  opts = {
    dir = vim.fn.stdpath("state") .. "/sessions/", -- directory where session files are saved
    need = 1,
    branch = true,
    }
  },
  {
    "williamboman/mason.nvim",
    opts = {
    ensure_installed = {
        "graphql-language-service-cli",
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "eslint-lsp",
        "gopls",
        "js-debug-adapter",
        "typescript-language-server",
        "vue-language-server",
        "emmet-ls",
      },
    },
  },
  {
    "simrat39/rust-tools.nvim",
    config = function()
      require("rust-tools").setup({})
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
            ensure_installed = {
        "graphql",
        "rust",
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "go",
        "vue",
      },
      highlight = {
      enable = true, 
    },
    },
  },
 {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function()
      require "configs.lint"
    end,
  },
   {
    "windwp/nvim-ts-autotag",
    event = "VeryLazy",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "ggandor/leap.nvim",
    lazy = false,
    config = function()
      require("leap").add_default_mappings(true)
    end,
  },
  {
    "folke/trouble.nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "folke/todo-comments.nvim",
    dependencies={"nvim-lua/plenary.nvim"},
    lazy = false,
    config = function()
      require("todo-comments").setup()
      require("configs.todo")
    end
  },
  { "nvzone/volt" , lazy = true },
  { "nvzone/menu" , lazy = true },
  {
    "rcarriga/nvim-dap-ui",
    config = function()
      require("dapui").setup()

      local dap, dapui = require "dap", require "dapui"

      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open {}
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close {}
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close {}
      end
    end,
    dependencies = {
      "mfussenegger/nvim-dap",
    },
  },
}

