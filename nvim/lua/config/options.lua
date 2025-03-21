-- make line numbers default, and also set relative numbers
vim.opt.number = true
--vim.opt.relativenumber = true

-- better line number columns formatting
-- this column is for LSP to display symbols, and information
--vim.opt.signcolumn = "auto:2-9"

-- tabs and spaces
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 4 -- one tab-indent is 4 spaces
vim.opt.tabstop = 4 -- one tab is 4 spaces
vim.opt.softtabstop = 4 -- one tab is 4 spaces
vim.opt.smarttab = true -- useful for deleting spaces and tabs
vim.opt.smartindent = true -- indent automatically on next line
vim.opt.autoindent = true -- keep indentation from prev lines
vim.opt.breakindent = true -- enable breakindent, i.e, wrap-indent

-- enable mouse mode
vim.opt.mouse = 'a'

-- don't show mode, since statusline is already installed
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.opt.confirm = true
