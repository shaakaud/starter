-- Basic vim configs -  uday's preferences
vim.cmd('set hlsearch')
vim.cmd('set number')
vim.cmd('set autoindent')
vim.cmd('set smartindent')
vim.cmd('set cindent')
vim.cmd('set nocompatible')
vim.cmd('set tabstop=4')
vim.cmd('set shiftwidth=4')
vim.cmd('set backspace=2')
vim.cmd('set ruler')
vim.cmd('set incsearch')
vim.cmd('set ttyfast')
vim.cmd('set expandtab')
vim.cmd('set colorcolumn=80')     -- to draw a vertical line at column 80 and highlight all red after that
vim.cmd('set nowrap')
vim.cmd('set tw=0')
-- vim.cmd('colorscheme solarized')  --To set solaraized color scheme
vim.cmd('filetype plugin on')
vim.cmd('syntax on')

-- key mappings
vim.cmd([[
    autocmd FileType * nnoremap <buffer> <C-Up> :cope 15<CR>
    autocmd FileType * nnoremap <buffer> <C-Down> :ccl <CR>
    autocmd FileType * nnoremap <buffer> <C-Right> :cn<CR>
    autocmd FileType * nnoremap <buffer> <C-Left> :cp<CR>
]])
-- key mappings for vim-fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git); --git status
vim.keymap.set("n", "<leader>gd", ':Gdiff<CR>', {});
vim.keymap.set("n", "<leader>gb", ':Git blame<CR>', {});

-- vim globals
--vim.g.solarized_termcolors=16  -- To set solaraized color scheme
--vim.g.solarized_termtrans=1    -- To set solaraized color scheme
vim.g.cscopequickfix = "s-,c-,d-,i-,t-,f-,e-" -- cscope-macros.vim quickfix settings

-- vim options
vim.opt.number = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.wrap = false
vim.opt.diffopt = "vertical"
-- views can only be fully collapsed with the global statusline
vim.opt.laststatus = 3
-- Below line is to delete the sign column ie the first column in the vim file which is used for signing the diagnostic errors in that file (E for errors, W for warnings etc)
vim.opt.signcolumn = "no"
-- vim.opt.background = 'dark'
--vim.opt.termguicolors = false

-- Check if tags file exists one level up and add it to tags
if vim.fn.filereadable("tags") == 1 then
    vim.o.tags = vim.o.tags .. ";../tags"
end

