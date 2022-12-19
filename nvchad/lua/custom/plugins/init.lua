local overrides = require "custom.plugins.overrides"

return {

  -- ["goolord/alpha-nvim"] = { disable = false } -- enables dashboard

  -- Override plugin definition options
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- overrde plugin configs
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  ["folke/which-key.nvim"] = {
    disable = false,
    -- config = function()
    --   require("which-key").register(require("custom.plugins.whichkey").mappings)
    -- end,
  },

  ["goolord/alpha-nvim"] = {
    disable = false,
  },

  -- Install a plugin
  ["max397574/better-escape.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  ["lervag/vimtex"] = {},

  -- ["nvim-telescope/telescope.nvim"] = {
  --   requires = { { "nvim-lua/plenary.nvim" } },
  --   config = function()
  --     require('telescope').load_extension('dap')
  --   end,
  -- },

  ["mfussenegger/nvim-dap"] = {
    config = function()
      require "custom.plugins.dap-config"
    end,
  },

  ["jedrzejboczar/nvim-dap-cortex-debug"] = {
    requires = "mfussenegger/nvim-dap",
    config = function()
      require("dap-cortex-debug").setup {
        debug = false,
        extension_path = "~/git/cortex-debug/",
        lib_extension = nil,
      }
    end,
  },

  -- ["puremourning/vimspector"] = {},

  ["rcarriga/nvim-dap-ui"] = {
    requires = { "mfussenegger/nvim-dap" },
    config = function()
      require("dapui").setup {
        icons = { expanded = "", collapsed = "", current_frame = "" },
        mappings = {
          -- Use a table to apply multiple mappings
          expand = { "<CR>", "<2-LeftMouse>" },
          open = "o",
          remove = "d",
          edit = "e",
          repl = "r",
          toggle = "t",
        },
        -- Use this to override mappings for specific elements
        element_mappings = {
          -- Example:
          -- stacks = {
          --   open = "<CR>",
          --   expand = "o",
          -- }
        },
        -- Expand lines larger than the window
        -- Requires >= 0.7
        expand_lines = vim.fn.has "nvim-0.7" == 1,
        -- Layouts define sections of the screen to place windows.
        -- The position can be "left", "right", "top" or "bottom".
        -- The size specifies the height/width depending on position. It can be an Int
        -- or a Float. Integer specifies height/width directly (i.e. 20 lines/columns) while
        -- Float value specifies percentage (i.e. 0.3 - 30% of available lines/columns)
        -- Elements are the elements shown in the layout (in order).
        -- Layouts are opened in order so that earlier layouts take priority in window sizing.
        layouts = {
          {
            elements = {
              -- Elements can be strings or table with id and size keys.
              { id = "scopes", size = 0.25 },
              "breakpoints",
              "stacks",
              "watches",
            },
            size = 40, -- 40 columns
            position = "left",
          },
          {
            elements = {
              "repl",
              "console",
            },
            size = 0.25, -- 25% of total lines
            position = "bottom",
          },
        },
        controls = {
          -- Requires Neovim nightly (or 0.8 when released)
          enabled = true,
          -- Display controls in this element
          element = "repl",
          icons = {
            pause = "",
            play = "",
            step_into = "",
            step_over = "",
            step_out = "",
            step_back = "",
            run_last = "",
            terminate = "",
          },
        },
        floating = {
          max_height = nil, -- These can be integers or a float between 0 and 1.
          max_width = nil, -- Floats will be treated as percentage of your screen.
          border = "single", -- Border style. Can be "single", "double" or "rounded"
          mappings = {
            close = { "q", "<Esc>" },
          },
        },
        windows = { indent = 1 },
        render = {
          max_type_length = nil, -- Can be integer or nil.
          max_value_lines = 100, -- Can be integer or nil.
        },
      }
      -- subscribe to dap events
      require("dap").listeners.after.event_initialized["dapui_config"] = function()
        require("dapui").open()
      end
      require("dap").listeners.before.event_terminated["dapui_config"] = function()
        require("dapui").close()
      end
      require("dap").listeners.before.event_exited["dapui_config"] = function()
        require("dapui").close()
      end
    end,
  },

  ["simrat39/rust-tools.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require("rust-tools").setup {
        dap = {
          adapter = require("rust-tools.dap").get_codelldb_adapter(
            vim.env.HOME .. "/.vscode-oss/extensions/vadimcn.vscode-lldb-1.8.1-universal/adapter/codelldb",
            vim.env.HOME .. "/.vscode-oss/extensions/vadimcn.vscode-lldb-1.8.1-universal/lldb/lib/liblldb.so"
          ),
        },
      }
    end,
  },

  ["saecki/crates.nvim"] = {
    event = { "BufRead Cargo.toml" },
    requires = { { "nvim-lua/plenary.nvim" } },
    config = function()
      require("crates").setup()
    end,
  },

  ["mrjones2014/smart-splits.nvim"] = {
    config = function()
      require("smart-splits").setup {
        ignored_filetypes = {
          "nofile",
          "quickfix",
          "qf",
          "prompt",
        },
        ignored_buftypes = { "nofile" },
      }
    end,
  },

  ["Darazaki/indent-o-matic"] = {},

  -- code formatting, linting etc
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  ["NvChad/ui"] = {
    override_options = {
      tabufline = {
        lazyload = false,
      },
    },
  },

  ["Shatur/neovim-session-manager"] = {
    cmd = "SessionManager",
    event = "BufWritePost",
    lazy_load = false,
    config = function()
      require("session_manager").setup {
        sessions_dir = require("plenary.path"):new(vim.fn.stdpath "data", "sessions"), -- The directory where the session files will be saved.
        path_replacer = "__", -- The character to which the path separator will be replaced for session files.
        colon_replacer = "++", -- The character to which the colon symbol will be replaced for session files.
        autoload_mode = require("session_manager.config").AutoloadMode.LastSession, -- Define what to do when Neovim is started without arguments. Possible values: Disabled, CurrentDir, LastSession
        autosave_last_session = true, -- Automatically save last session on exit and on session switch.
        autosave_ignore_not_normal = true, -- Plugin will not save a session when no buffers are opened, or all of them aren't writable or listed.
        autosave_ignore_dirs = {}, -- A list of directories where the session will not be autosaved.
        autosave_ignore_filetypes = { -- All buffers of these file types will be closed before the session is saved.
          "gitcommit",
        },
        autosave_ignore_buftypes = {}, -- All buffers of these bufer types will be closed before the session is saved.
        autosave_only_in_session = false, -- Always autosaves session. If true, only autosaves after a session is active.
        max_path_length = 80, -- Shorten the display path if length exceeds this threshold. Use 0 if don't want to shorten the path at all.
      }
    end,
  },

  ["eandrju/cellular-automaton.nvim"] = {},

  -- ["stevearc/dressing.nvim"] = {
  --   config = function()
  --     require("dressing").setup {
  --       input = {
  --         default_prompt = "➤ ",
  --         win_options = { winhighlight = "Normal:Normal,NormalNC:Normal" },
  --       },
  --       select = {
  --         backend = { "telescope", "builtin" },
  --         builtin = { win_options = { winhighlight = "Normal:Normal,NormalNC:Normal" } },
  --       },
  --     }
  --   end,
  -- },

  -- remove plugin
  -- ["hrsh7th/cmp-path"] = false,
}
