local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        if opts.desc then
            opts.desc = "keymaps.lua: " .. opts.desc
        end
        options = vim.tbl_extend('force', options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

map("o", "<F1>", "<Esc>", { desc ="Remap F1 to Escape" })
map("x", "<F1>", "<Esc>", { desc ="Remap F1 to Escape" })
map("n", "<F1>", "<Esc>", { desc ="Remap F1 to Escape" })
map("i", "<F1>", "<Esc>", { desc ="Remap F1 to Escape" })

-- here some of my mappings:
-- jump to the last changed spot
-- map("n", "gl", "`.", { desc = "Jump to the last change in the file"})
-- map("i", "<LeftMouse>", '<C-o>:normal "*gp<CR>', { desc = "Use left mouse to paste primary selection in insert mode"})
-- map("i", "<RightMouse>", '<C-o>:normal "+gp<CR>', { desc = "Use right mouse to paste clipboard + in insert mode"})

---- line text-objects (inner and whole line text-objects)
---- I am trying now to create some "inner next object", "around last object" and
---- these mappings conflict with the mappings bellow, so, I am disabling those for a while
-- map("x", "al", ":<C-u>norm! 0v$<cr>", { desc = "Line text object" })
-- map("x", "il", ":<C-u>norm! _vg_<cr>", { desc = "Line text object" })
-- map("o", "al", ":<C-u>norm! 0v$<cr>", { desc = "Line text object" })
-- map("o", "il", ":<C-u>norm! _vg_<cr>", { desc = "Line text object" })
