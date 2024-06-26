

require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    -- ..
    file_ignore_patterns = { '^node_modules/', },
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-?>"] = "which_key",
        -- ["<C-w>"] = actions.send_selected_to_qflist,
        -- ["<C-q>"] = actions.send_to_qflist,
      },
      -- n = {
      --   ["<C-w>"] = actions.send_selected_to_qflist,
      --   ["<C-q>"] = actions.send_to_qflist,
      -- },
    },
  },
  pickers = {
    pickers = {
      find_files  = {
        theme = "dropdown",
      }
    }
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
        --
        fzf = {
          fuzzy = true,                    -- false will only do exact matching
          override_generic_sorter = true,  -- override the generic sorter
          override_file_sorter = true,     -- override the file sorter
          case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
          -- the default case_mode is "smart_case"
        }
      }
    }

    require('telescope').load_extension('fzf')


    --local builtin = require('telescope.builtin')
    --vim.keymap.set('n', '<leader>ff', builtin.find_files, { })
    --vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc='Find Grep'})
    --vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc='Buffers'})
    --vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc='Help Tags'})
    --vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc='find Old files'})
    --vim.keymap.set('n', '<leader>fu', builtin.oldfiles, { desc='find Usages'})
