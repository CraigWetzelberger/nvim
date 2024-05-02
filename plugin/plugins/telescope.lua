

require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    -- ..
    file_ignore_patterns = { '^node_modules/', },
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
      --   picker_config_key = value,
      --   ...
      -- }
      -- Now the picker_config_key will be applied every time you call this
      -- builtin picker
    },
    extensions = {
      -- Your extension configuration goes here:
      -- extension_name = {
        --   extension_config_key = value,
        -- }
        -- please take a look at the readme of the extension you want to configure
      }
    }



    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc='Find Grep'})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc='Buffers'})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc='Help Tags'})
    vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc='find Old files'})
    vim.keymap.set('n', '<leader>fu', builtin.oldfiles, { desc='find Usages'})
