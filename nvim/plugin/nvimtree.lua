require("nvim-tree").setup({
    sort_by = "case_sensitive",
    renderer = {
        group_empty = true,
        icons = {
            git_placement = "after",
        }
    },
    filters = {
        dotfiles = false,
        git_clean = false,
    },
    reload_on_bufenter = true,
    hijack_cursor = false,
    update_focused_file = {
        enable = true,
    },
    git = {
        ignore = false,
    }
})
