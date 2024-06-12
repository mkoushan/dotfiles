filetype indent on
filetype plugin on

syntax on

set nocompatible
set mouse=a
set number
set splitright
set spelllang=en
let g:indent_guides_enable_on_vim_startup = 1 
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
set ts=3 sw=3 et
set tabstop=3
set tws=0*60
colorscheme jellybeans

"ensure zig is a recognized filetype
autocmd BufNewFile,BufRead *.zig set filetype=zig
let g:ycm_language_server =
    \ [
    \{
    \     'name': 'zls',
    \     'filetypes': [ 'zig' ],
    \     'cmdline': [ '/path/to/zls_executable' ]
    \    }
    \ ]

command Cpt :silent execute '!wl-copy < ' . expand('%') | redraw!
command -range CP :<line1>,<line2>w !wl-copy
command Ter :vertical ter

vnoremap <C-c> :CP<CR>
