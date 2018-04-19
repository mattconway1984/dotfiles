
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
let g:syntastic_cpp_config_file = '~/.vim_runtime/ninox_includes.syntastic'

" Turn on the columcount:
set cc=80




