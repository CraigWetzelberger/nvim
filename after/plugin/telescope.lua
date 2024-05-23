-- https://github.com/nvim-telescope/telescope.nvim/wiki/Configuration-Recipes
local builtin = require('telescope.builtin')
local extensions = require('telescope').extensions

-- I get teh value of a register.  
local function get_reg(char)
	return vim.api.nvim_exec([[echo getreg(']]..char..[[')]], true):gsub("[\n\r]", "^J")
end

vim.keymap.set('n', '<leader>fg', function()
    vim.cmd("let @a = ''")
    vim.cmd('normal! "oyiw') -- Yank the inner word

    -- Get the content of register "o"
    local content = get_reg('o')

    if content ~= '' then
        -- Use the captured content in telescope (replace with your desired action)
        builtin.grep_string({ search = content })
    else
	      builtin.grep_string({ search = vim.fn.input("rg > ") });
    end
end, { desc = 'Grep a using inner word or enter'})

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- vim.keymap.set('n', '<C-p>', extensions.live_grep_args.live_grep_args, {})
vim.keymap.set('n', '<C-p>', function() 
  vim.cmd('CtrlP')
end, {})

vim.keymap.set('n', '<leader>fb', function()
     builtin.buffers({preview_title = 'List Open Buffers'})
   end, {})

vim.keymap.set('n', '<leader>bs', function() 
  --builtin.live_grep({grep_open_files=true, preview_title='Open Buffer Search'})
  extensions.live_grep_args.live_grep_args({grep_open_files=true, preview_title='Open Buffer Search'})
end, { desc='Buffer Search'})

--vim.keymap.set('n', '<leader>fg', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {})

-- vim.keymap.set('n', '<leader>fn', put file name in copy buffer. TODO

vim.keymap.set('n', '<leader>fs', function()
	--builtin.grep_string({ search = vim.fn.input("rg > ") });
	builtin.live_grep();
  -- extensions.live_grep_args.live_grep_args({ default_text = vim.fn.input("rg > "), grep_open_files=true, preview_title='Live rg w/Args'})
end, 
{ desc = 'ripgrep search'})



