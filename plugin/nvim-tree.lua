local Log = require 'lvim.core.log'
Log:info('overriding default configuration')
local config = require 'nvim-tree.config'
local tree_cb = config.nvim_tree_callback
local opts = {}
opts.view= {
  mappings = {
    -- custom only false will merge the list with the default mappings
    -- if true, it will only use your list to set the mappings
    custom_only = true,
    -- these are default mappings
    list = {
      { key = {'<CR>', 'o', '<2-LeftMouse>'}, cb = tree_cb('edit') },
      { key = '<',                            cb = tree_cb('prev_sibling') },
      { key = '>',                            cb = tree_cb('next_sibling') },
      { key = 'P',                            cb = tree_cb('parent_node') },
      { key = '<BS>',                         cb = tree_cb('close_node') },
      { key = '<S-CR>',                       cb = tree_cb('close_node') },
      { key = '<Tab>',                        cb = tree_cb('preview') },
      { key = 'K',                            cb = tree_cb('first_sibling') },
      { key = 'J',                            cb = tree_cb('last_sibling') },
      { key = 'I',                            cb = tree_cb('toggle_ignored') },
      { key = 'R',                            cb = tree_cb('refresh') },
      { key = 'a',                            cb = tree_cb('create') },
      { key = 'd',                            cb = tree_cb('remove') },
      { key = 'r',                            cb = tree_cb('rename') },
      { key = '<C-r>',                        cb = tree_cb('full_rename') },
      { key = 'x',                            cb = tree_cb('cut') },
      { key = 'c',                            cb = tree_cb('copy') },
      { key = 'p',                            cb = tree_cb('paste') },
      { key = 'y',                            cb = tree_cb('copy_name') },
      { key = 'Y',                            cb = tree_cb('copy_path') },
      { key = '[c',                           cb = tree_cb('prev_git_item') },
      { key = ']c',                           cb = tree_cb('next_git_item') },
      { key = 's',                            cb = tree_cb('system_open') },
      { key = 'q',                            cb = tree_cb('close') },
    }
  }
}

Log:info('setting custom keymappings')
table.insert(opts.view.mappings.list,{ key = {'b'}, cb = tree_cb('cd') })
table.insert(opts.view.mappings.list,{ key = 'w',   cb = tree_cb('vsplit') })
table.insert(opts.view.mappings.list,{ key = 'W',   cb = tree_cb('split') })
table.insert(opts.view.mappings.list,{ key = 't',   cb = tree_cb('tabnew') })
table.insert(opts.view.mappings.list,{ key = '.',   cb = tree_cb('toggle_dotfiles') })
table.insert(opts.view.mappings.list,{ key = 'yy',  cb = tree_cb('copy_absolute_path') })
table.insert(opts.view.mappings.list,{ key = 'C',   cb = tree_cb('dir_up') })
table.insert(opts.view.mappings.list,{ key = '?',   cb = tree_cb('toggle_help') })
require'nvim-tree'.setup(opts)
