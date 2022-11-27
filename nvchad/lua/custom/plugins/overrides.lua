local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "c",
    "python",
    "rust",
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",
    -- Various stuff
    "bash-debug-adapter",
    "bash-language-server",
    "black",
    "clang-format",
    "clangd",
    "cpplint",
    "cpptools",
    "debugpy",
    "json-lsp",
    "jsonlint",
    "markdownlint",
    "pylint",
    "vim-language-server",
    "asm-lsp",
    "html-lsp",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
  view = {
    adaptive_size = false,
    mappings = {
      list = {
        { key = ".", action = "cd" },
        { key = "<BS>", action = "dir_up" },
      }
    }
  }
}

return M
