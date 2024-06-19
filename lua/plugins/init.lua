return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre',
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
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "rust-analyzer",
        "pyright",
        "json-lsp",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "rust",
        "python",
        "typescript",
        "json",
        "yaml",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<leader>=",
          node_decremental = "<leader>-",
          node_incremental = "<leader>=",
          scope_incremental = "<leader>+",
        },
        module_path = "nvim-treesitter.incremental_selection",
      },
    },
  },
}
