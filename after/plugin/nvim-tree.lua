--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1
--
--require('nvim-tree').setup {
--    sort_by = "case_sensitive",
--    view = {
--        adaptive_size = false,
--        mappings = {
--            list = {
--                { key = "u", action = "dir_up" },
--            },
--        },
--    },
--    update_focused_file = { enable = true },
--    renderer = {
--        group_empty = true,
--        icons = {
--            git_placement = "before",
--            glyphs = {
--                git = {
--                    unstaged = "-",
--                    staged = "s",
--                    untracked = "u",
--                    renamed = "r",
--                    deleted = "d",
--                    ignored = "i",
--                },
--            },
--            show = {
--                folder_arrow = true,
--            },
--        },
--    },
--    filters = {
--        dotfiles = false,
--    },
--    git = {
--        ignore = false,
--    },
--}
--
