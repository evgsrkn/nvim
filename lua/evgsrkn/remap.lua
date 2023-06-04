vim.g.mapleader = " "
vim.keymap.set("n", "<Leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<Leader>e", ":Explore<CR>")

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Rename variable
map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true })

map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)
-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used

-- INSERT
map('i', '<C-b>', '<ESC>^i', opts) -- beginning of line
map('i', '<C-e>', '<End>', opts) -- end of line

-- navigate within insert mode
map('i', '<C-h>', '<Left>', opts)
map('i', '<C-l>', '<Right>', opts)
map('i', '<C-k>', '<Up>', opts)
map('i', '<C-j>', '<Down>', opts)

map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

-- отключение стрелочек (только hjkl)
map('', '<up>', '', opts)
map('', '<down>', '', opts)
map('', '<left>', '', opts)
map('', '<right>', '', opts)
