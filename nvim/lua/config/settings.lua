local g = vim.g
local b = vim.b
local o = vim.opt

g.mapleader = " "
g.maplocalleader = " "

-- general
b.autoformat = false -- auto format buffer
g.autoformat = false -- auto format global
o.encoding = "UTF-8"
o.ignorecase = true -- Ignore case while find
g.have_nerd_font = true
o.smartcase = true
o.splitbelow = true -- Put new windows below current
o.splitright = true -- Put new windows right of current
o.termguicolors = true -- True color support

-- tabs
o.expandtab = true -- Use spaces instead of tabs
o.tabstop = 2 -- Number of spaces tabs count for
o.shiftwidth = 2 -- < > tab moves
o.softtabstop = 2

o.number = true -- Print line number
o.relativenumber = true -- Relative line numbers
o.autoindent = true
o.cursorline = true -- Enable highlighting of the current line
o.ruler = true

-- clipboard
o.clipboard = "unnamedplus" -- Sync clipboard between OS and Neovim

-- whitespaces
--o.list = true
--o.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
