local M = {}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
    ["<leader>h"] = { ':lua require("nvterm.terminal").toggle "horizontal" <cr>', "Toggle horizontal Terminal" },
    ["<leader>v"] = { ':lua require("nvterm.terminal").toggle "vertical" <cr>', "Toggle vertical Terminal" },
    ["<leader>pf"] = { ':lua vim.lsp.buf.format() <CR>', "Format Buffer" },
    ["<leader>up"] = { ':PackerSync <CR>', "Run PackerSync" },
    -- ["oo"] = {'o<Esc>k', "Add blank line below without going to insert mode" },
    -- ["OO"] = {'O<Esc>j', "Add blank line above without going to insert mode" },
  },
  v = {
    -- Stay in indent mode
    ["<"] = { "<gv", "unindent line" },
    [">"] = { ">gv", "indent line" },
  },
}

M.disabled = {
  n = {
    ["<leader>cc"] = "",
    ["<leader>ca"] = "",
    ["<leader>cm"] = "",
    ["<leader>ls"] = "",
    ["<leader>rh"] = "",
    ["<leader>rn"] = "",
  },
}

M.git = {
  n = {
    ["<leader>gc"] = { "<cmd> Telescope git_commits <CR>", "git commits" },
    ["<leader>gt"] = { "<cmd> Telescope git_status <CR>", "git status" },
  }
}

M.debug = {
  n = {
    ["<F5>"] = { ":lua require'dap'.continue() <CR>", "Debug continue" },
    -- ["<F5>"] = { ":RustDebugabbles <CR>", "Start Rust debug session" },
    ["<F8>"] = { ":lua require'dap'.toggle_breakpoint() <CR>", "Toggle Breakpoint" },
    ["<F9>"] = { ":lua require'dap'.repl.open() <CR>", "Debug inspect state" },
    ["<F10>"] = { ":lua require'dap'.step_over() <CR>", "Debug step over" },
    ["<F11>"] = { ":lua require'dap'.step_into() <CR>", "Debug step into" },
    ["<F12>"] = { ":lua require'dap'.step_out() <CR>", "Debug step out" },
    ["<F4>"] = { ":lua require'dap'.terminate() <CR>", "Terminate debug session" },
  }
}

M.smart_splits = {
  n = {
  	["<C-h>"] = { function() require("smart-splits").move_cursor_left() end, desc = "Move to left split" },
  	["<C-j>"] = { function() require("smart-splits").move_cursor_down() end, desc = "Move to below split" },
  	["<C-k>"] = { function() require("smart-splits").move_cursor_up() end, desc = "Move to above split" },
  	["<C-l>"] = { function() require("smart-splits").move_cursor_right() end, desc = "Move to right split" },

  -- Resize with arrows
  	["<C-Up>"] = { function() require("smart-splits").resize_up() end, desc = "Resize split up" },
  	["<C-Down>"] = { function() require("smart-splits").resize_down() end, desc = "Resize split down" },
  	["<C-Left>"] = { function() require("smart-splits").resize_left() end, desc = "Resize split left" },
  	["<C-Right>"] = { function() require("smart-splits").resize_right() end, desc = "Resize split right" },
  }
}

M.rust = {
  n = {
    ["<leader>rr"] = { ":RustRun <CR>", "Rust run" },
    ["<leader>ra"] = { ":RustRunnables <CR>", "Rust runnables" },
    ["<leader>rd"] = { ":RustDebuggables <CR>", "Rust debugabbles" },
    ["<leader>rk"] = { ":RustMoveItemUp <CR>", "Rust move item up" },
    ["<leader>rj"] = { ":RustMoveItemDown <CR>", "Rust move item down" },
    ["<leader>rh"] = { ":RustHoverActions <CR>", "Rust Hover Actions (help)" },
  }
}

M.session_manager = {
  n = {
    ["<leader>Sl"] = { ":SessionManager load_last_session<CR>", "Load last session" },
    ["<leader>Ss"] = { ":SessionManager save_current_session<CR>", "Save this session" },
    ["<leader>Sd"] = { ":SessionManager delete_session<CR>", "Delete session" },
    ["<leader>Sf"] = { ":SessionManager load_session<CR>", "Search sessions" },
    ["<leader>S."] = { ":SessionManager load_current_dir_session<CR>", "Load current directory session" },
  }
}

-- more keybinds!

return M
