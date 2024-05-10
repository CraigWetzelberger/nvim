

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- use 'navarasu/onedark.nvim'

  use {
    'nvim-telescope/telescope.nvim', -- tag = '0.1.6',
    -- or                            , branch = '0.1.x',
    requires = { 
      {'nvim-lua/plenary.nvim'} ,
      { "nvim-telescope/telescope-live-grep-args.nvim" },
      { 'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' },
    },
    config = function()
      require("telescope").load_extension("live_grep_args")
    end
  }


 --  use {
 --    "folke/which-key.nvim",
 --    config = function()
 --      vim.o.timeout = true
 --      vim.o.timeoutlen = 300
 --      require("which-key").setup {
 --        -- your configuration comes here
 --        -- or leave it empty to use the default settings
 --        -- refer to the configuration section below
 --      }
 --    }
 --
    -- use('nvim-pack/nvim-spectre') --intreseting
    use('https://github.com/adelarsq/vim-matchit')
    use('rking/ag.vim') 
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v3.x',
      requires = {
        --- Uncomment the two plugins below if you want to manage the language servers from neovim
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},
        --
        {'neovim/nvim-lspconfig'},
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'L3MON4D3/LuaSnip'},
      }
    }

  end)


 --  -- Simple plugins can be specified as strings
 --  use 'rstacruz/vim-closer'
 --
 --  -- Lazy loading:
 --  -- Load on specific commands
 --  use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}
 --
 --  -- Load on an autocommand event
 --  use {'andymass/vim-matchup', event = 'VimEnter'}
 --
 --  -- Load on a combination of conditions: specific filetypes or commands
 --  -- Also run code after load (see the "config" key)
 --  use {
 --    'w0rp/ale',
 --    ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
 --    cmd = 'ALEEnable',
 --    config = 'vim.cmd[[ALEEnable]]'
 --  }
 --
 --  -- Plugins can have dependencies on other plugins
 --  use {
 --    'haorenW1025/completion-nvim',
 --    opt = true,
 --    requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
 --  }
 --
 --  -- Plugins can also depend on rocks from luarocks.org:
 --  use {
 --    'my/supercoolplugin',
 --    rocks = {'lpeg', {'lua-cjson', version = '2.1.0'}}
 --  }
 --
 --  -- You can specify rocks in isolation
 --  use_rocks 'penlight'
 --  use_rocks {'lua-resty-http', 'lpeg'}
 --
 --  -- Local plugins can be included
 --  use '~/projects/personal/hover.nvim'
 --
 --  -- Plugins can have post-install/update hooks
 --  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
 --
 --  -- Post-install/update hook with neovim command
 --  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
 --
 --  -- Post-install/update hook with call of vimscript function with argument
 --  use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }
 --
 --  -- Use specific branch, dependency and run lua file after load
 --  use {
 --    'glepnir/galaxyline.nvim', branch = 'main', config = function() require'statusline' end,
 --    requires = {'kyazdani42/nvim-web-devicons'}
 --  }
 --
 --  -- Use dependency and run lua function after load
 --  use {
 --    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
 --    config = function() require('gitsigns').setup() end
 --  }
 --
 --  -- You can specify multiple plugins in a single call
 --  use {'tjdevries/colorbuddy.vim', {'nvim-treesitter/nvim-treesitter', opt = true}}
 --
 --  -- You can alias plugin names
 --  use {'dracula/vim', as = 'dracula'}
 --end)
