local vimp = require 'vimp'
local wk = require 'whichkey'

vim.g.mapleader = ' '

-- escape
vimp.inoremap('jk', '<ESC>')
vimp.tnoremap('jk', '<C-\\><C-n>')

-- indent better
vimp.vnoremap('>', '>gv')
vimp.vnoremap('<', '<gv')

-- Change word
vimp.nnoremap('c*', '*``cgn')
vimp.nnoremap('c#', '#``cgN')

-- Delete word
vimp.nnoremap('d*', '*``dgn')
vimp.nnoremap('d#', '#``dgN')

-- noh
vimp.nnoremap('<Esc>', ':nohlsearch<cr>')
