local lsp = require('lsp-zero')

lsp.preset("recommended")

lsp.ensure_installed({
  'gopls',
  'rust_analyzer',
})

lsp.nvim_workspace()

lsp.set_preferences({
  suggest_lsp_servers = false,
  sign_icons = {
    error = 'E',
    warn = 'W',
    hint = 'H',
    info = 'I'
  }
})

local ls = require("luasnip")
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ['<C-r>'] = cmp.mapping.scroll_docs(-4),
  ['<C-f>'] = cmp.mapping.scroll_docs(4),
  ["<C-Space>"] = cmp.mapping.complete(),

  ["<C-l>"] = cmp.mapping(function(fallback)
    if cmp.visible() then
      cmp.select_next_item()
    -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable() 
    -- they way you will only jump inside the snippet region
    elseif ls.expand_or_locally_jumpable() then
      ls.expand_or_jump()
    else
      fallback()
    end
  end, { "i", "s" }),
  ["<C-h>"] = cmp.mapping(function(fallback)
    if cmp.visible() then
      cmp.select_prev_item()
    elseif ls.jumpable(-1) then
      ls.jump(-1)
    else
      fallback()
    end
  end, { "i", "s" }),
  -- EXPAND SNIPPET
  ["<C-k>"] = cmp.mapping(function()
    ls.expand()
  end, { "i", "s" }),
  ["<C-e>"] = cmp.mapping(function()
    if ls.choice_active() then
      ls.change_choice(1)
    end
  end, { "i", "s" }),
})

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }
  local bufopts = { noremap=true, silent=true, buffer=bufnr }

  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, opts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementations, opts)
  vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
  vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
  vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
  vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "<leader>rr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
  vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
end)

lsp.setup()

vim.diagnostic.config({
  virtual_text = true,
})

