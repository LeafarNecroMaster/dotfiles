vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap

--vim
map('n', '<leader><leader>w', ':w<cr>', {noremap = true, silent = true})
map('n', '<leader><leader>x', ':x<cr>', {noremap = true, silent = true})
map('n', '<leader><leader>q<leader>', ':q<cr>', {noremap = true, silent = true})

--Fzf.vim
map('n','<leader><leader>l', ':Lines<cr>', {noremap = true, silent = true})
map('n','<leader><leader>fl', ':Files<cr>', {noremap = true, silent = true})
map('n','<leader><leader>bf', ':BFiles<cr>', {noremap = true, silent = true})

--easymotion
map('n','<leader><leader>s', '<Plug>(easymotion-s2)', {noremap = true, silent = true})
map('n','<leader><leader>sl', '<Plug>(easymotion-sl2)', {noremap = true, silent = true})
map('n','<leader><leader>swl', '<Plug>(easymotion-wl-bd)', {noremap = true, silent = true})
