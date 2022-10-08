local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

-- Telescope
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')
map('n', '<leader>fe', '<cmd>Telescope emoji<cr>')
map('n', '<leader>fr', '<cmd>Telescope oldfiles<cr>')

--- Clipboard
map('n', 'Y', '"+y')
map('v', 'Y', '"+y')

-- jk to esc
map('i', 'jk', '<Esc>')
