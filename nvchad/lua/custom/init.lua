local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

vim.g.luasnippets_path = "custom.snippets"
vim.g.vimtex_view_method = 'zathura'
vim.g.latex_view_general_viewer = 'zathura'
vim.g.vimtex_compiler_progname = 'nvr'
vim.g.vimtex_quickfix_open_on_waring = 0

-- Default vim options
vim.opt.relativenumber = true
vim.opt.scrolloff = 13
