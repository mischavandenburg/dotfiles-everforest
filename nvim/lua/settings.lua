local g = vim.g
local o = vim.o


-- o.nohlsearch = true
o.hidden = true
o.ignorecase = true
o.incsearch = true
o.scrolloff = 8
o.mouse = a
-- o.undodir=~/.vim/undodir
-- o.undofile
o.linebreak = true

-- colorscheme gruvbox-material config
-- o.termguicolors = true
-- require('gruvbox-material').setup()
-- g.gruvbox_material_enable_italic_comment = 1

-- colorscheme everforest config
o.termguicolors = true
g.background = dark

-- can use hard, medium, soft
g.everforest_background = medium
g.everforest_better_performance = 1

-- o.colorscheme = everforest
vim.cmd [[ colorscheme everforest ]]
-- Map <leader> to space
g.mapleader = ' '
g.maplocalleader = ' '
