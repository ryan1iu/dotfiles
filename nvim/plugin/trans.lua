-- require('Trans').install()

require 'Trans'.setup {
    ---@type string the directory for database file and password file
    dir      = require 'Trans'.plugin_dir,
    debug    = true,
    ---@type 'default' | 'dracula' | 'tokyonight' global Trans theme [see lua/Trans/style/theme.lua]
    theme    = 'tokyonight', -- default | tokyonight | dracula
    strategy = {
        ---@type { frontend:string, backend:string | string[] } fallback strategy for mode
        default = {
            frontend = 'hover',
            backend = '*',
        },
    },
    ---@type table frontend options
    frontend = {
        ---@class TransFrontendOpts
        ---@field keymaps table<string, string>
        default = {
            query     = 'fallback',
            border    = 'rounded',
            title     = vim.fn.has 'nvim-0.9' == 1 and {
                    { '🌜', 'TransTitleRound' },
                    { '🌛', 'TransTitleRound' },
                } or nil, -- need nvim-0.9+
            auto_play = true,
            ---@type {open: string | boolean, close: string | boolean, interval: integer} Hover Window Animation
            animation = {
                open = 'fold', -- 'fold', 'slid'
                close = false,
                interval = 12,
            },
            timeout   = 2000,
        },
        ---@class TransHoverOpts : TransFrontendOpts
        hover = {
            ---@type integer Max Width of Hover Window
            width             = 37,
            ---@type integer Max Height of Hover Window
            height            = 27,
            ---@type string -- see: /lua/Trans/style/spinner
            spinner           = 'dots',
            ---@type string
            fallback_message  = '{{notfound}} 翻译超时或没有找到相关的翻译',
            auto_resize       = true,
            split_width       = 60,
            padding           = 10, -- padding for hover window width
            keymaps           = {
                -- INFO : No default keymaps anymore, please set it yourself
                -- pageup       = '<C-u>',
                -- pagedown     = '<C-d>',
                -- pin          = '<leader>[',
                -- close        = '<leader>]',
                -- toggle_entry = '<leader>;',

                -- play         = '_', -- Deprecated
            },
            ---@type string[] auto close events
            auto_close_events = {
                'InsertEnter',
                'CursorMoved',
                'BufLeave',
            },
            ---@type table<string, string[]> order to display translate result
            order             = {
                default = {
                    'str',
                    'translation',
                    'definition',
                },
                offline = {
                    -- 'title',
                    -- 'tag',
                    -- 'pos',
                    'translation',
                    'exchange',
                    -- 'definition',
                },
                youdao = {
                    'title',
                    'translation',
                    'definition',
                    'web',
                },
            },
            icon              = {
                -- or use emoji
                list        = '●', -- ● | ○ | ◉ | ◯ | ◇ | ◆ | ▪ | ▫ | ⬤ | 🟢 | 🟡 | 🟣 | 🟤 | 🟠| 🟦 | 🟨 | 🟧 | 🟥 | 🟪 | 🟫 | 🟩 | 🟦
                star        = '', -- ⭐ | ✴ | ✳ | ✲ | ✱ | ✰ | ★ | ☆ | 🌟 | 🌠 | 🌙 | 🌛 | 🌜 | 🌟 | 🌠 | 🌌 | 🌙 |
                notfound    = ' ', --❔ | ❓ | ❗ | ❕|
                yes         = '✔', -- ✅ | ✔️ | ☑
                no          = '', -- ❌ | ❎ | ✖ | ✘ | ✗ |
                cell        = '■', -- ■  | □ | ▇ | ▏ ▎ ▍ ▌ ▋ ▊ ▉
                web         = '󰖟', --🌍 | 🌎 | 🌏 | 🌐 |
                tag         = '',
                pos         = '',
                exchange    = '',
                definition  = '󰗊',
                translation = '󰊿',
            },
        },
    },
}
