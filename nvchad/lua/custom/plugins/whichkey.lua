-- local wk = require("which-key")
local M = {}

M.mappings = {
  ["<leader>"] = {
    g = {
      name = "+git",
    },
    r = {
      name = "+rust-tools",
    },
  }
}

return M
