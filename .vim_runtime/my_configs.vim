
" Enable mouse wheel for scrolling
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" Set transparent background:
highlight Normal ctermbg=none
highlight NonText ctermbg=none

" Set colour of the column limit
highlight ColorColumn ctermbg=24
highlight ColorColumn guibg=Black

" Turn on line numbers:
set nu

" Turn off linewrap:
set nowrap

" Configure some extra syntastic CPP include directories
let g:syntastic_cpp_config_file = '/home/mconway/.vim_runtime/ninox_includes.syntastic'
let g:syntastic_c_config_file='/home/mconway/.vim_runtime/ninox_includes.syntastic'
let g:syntastic_quiet_messages = {'regex': 'test_.*'}

" Turn on the columcount:
set cc=81

" Use the CLIPBOARD buffer in X:
set clipboard=unnamedplus




