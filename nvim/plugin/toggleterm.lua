require("toggleterm").setup {

    open_mapping = [[<c-\>]],
    hide_numbers = true,      -- hide the number column in toggleterm buffers
    start_in_insert = true,
    insert_mappings = true,   -- whether or not the open mapping applies in insert mode
    terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
    persist_size = true,
    persist_mode = true,      -- if set to true (default) the previous terminal mode will be remembered
    direction = 'float',
    close_on_exit = false,    -- close the terminal window when the process exits
    float_opts = {
        border = 'curved',
        width = 100,
    },
}
