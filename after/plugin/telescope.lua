local builtin = require('telescope.builtin')

-- local new_maker = function(filepath, bufnr, opts)
--   opts = opts or {}
--   opts.define_preview = function (self, entry)
--       if not self.state.bufname then
--         local output = vim.split(vim.fn.execute "highlight", "\n")
--         local hl_groups = {}
--         for _, v in ipairs(output) do
--           if v ~= "" then
--             if v:sub(1, 1) == " " then
--               local part_of_old = v:match "%s+(.*)"
--               hl_groups[#hl_groups] = hl_groups[#hl_groups] .. part_of_old
--             else
--               table.insert(hl_groups, v)
--             end
--           end
--         end
--
--         _, tc = pcall(require, "treesitter-context")
--         tc.
--
--         vim.api.nvim_buf_set_lines(self.state.bufnr, 0, -1, false, hl_groups)
--         for k, v in ipairs(hl_groups) do
--           local startPos = string.find(v, "xxx", 1, true) - 1
--           local endPos = startPos + 3
--           local hlgroup = string.match(v, "([^ ]*)%s+.*")
--           pcall(vim.api.nvim_buf_add_highlight, self.state.bufnr, 0, hlgroup, k - 1, startPos, endPos)
--         end
--     end
--   end
--   previewers.buffer_previewer_maker(filepath, bufnr, opts)

require('telescope').setup({
  defaults = {
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        preview_width = 0.55,
        results_width = 0.8,
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.80,
    },
    mappings = {
      n = { ["q"] = require("telescope.actions").close },
    },
  },
})

vim.keymap.set('n', 'gr', function()
  builtin.lsp_references({ noremap = true, silent = true })
end)
vim.keymap.set('n', 'gd', function()
  builtin.lsp_definitions({ noremap = true, silent = true })
end)
vim.keymap.set('n', 'gi', function()
  builtin.lsp_implementations({ noremap = true, silent = true })
end)
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
