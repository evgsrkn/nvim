vim.g.mapleader = " "
vim.keymap.set("n", "<Leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<Leader>e", ":Explore<CR>")

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Fill struct
map("n", "<leader>fs", "<cmd>GoFillStruct<CR>", { noremap = true })

-- Rename variable
map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true })

-- Restart lsp
map("n", "<leader>lr", "<cmd>LspRestart<CR>", { noremap = true })

map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- INSERT
map('i', '<C-b>', '<ESC>^i', opts) -- beginning of line

map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

-- copy and yanks to clipboard
map("v", "<leader>y", '"+y', opts)
map("n", "<leader>Y", '"+yg_', opts)
map("n", "<leader>y", '"+y', opts)
map("n", "<leader>yy", '"+yy', opts)

map("n", "<leader>p", '"+p', opts)
map("n", "<leader>P", '"+P', opts)
map("v", "<leader>p", '"+p', opts)
map("v", "<leader>P", '"+P', opts)

map("n", "<leader>gb", ":GitBlameToggle<CR>", opts)
