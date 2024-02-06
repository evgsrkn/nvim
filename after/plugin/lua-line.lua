require('lualine').setup {
  options = {
    fmt = string.lower,
      component_separators = { left = '\\', right = '/' },
      section_separators = { left = '', right = '' },
  },
}
