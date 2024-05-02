-- https://github.com/nvim-telescope/telescope.nvim/wiki/Configuration-Recipes
local builtin = require('telescope.builtin')

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
	      builtin.grep_string({ search = vim.fn.input("Grep > ") });
    end
end, { desc = 'Grep a using inner word or enter'})

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
--vim.keymap.set('n', '<leader>fg', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {})

-- vim.keymap.set('n', '<leader>fn', put file name in copy buffer. TODO

vim.keymap.set('n', '<leader>fs', function()
	-- builtin.grep_string({ search = vim.fn.input("Grep > ") }, desc = 'Grep' );
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end, 
{ desc = 'grep search'})



