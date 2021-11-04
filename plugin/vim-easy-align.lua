local Log = require "lvim.core.log"
Log:info("setting custom keymappings")
vim.api.nvim_set_keymap('n', 'ga', '<Plug>(EasyAlign)',{})
vim.api.nvim_set_keymap('x', 'ga', '<Plug>(EasyAlign)',{})
