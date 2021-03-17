function! myspacevim#before() abort

    " Modificamos el funcionamiento de la tecla ESC
    inoremap <esc> <NOP>
    inoremap jk <esc>

    " Modifica la tecla leader de VIM
    let g:mapleader = "-"

    " Guarda el archivo actual
    nnoremap <leader>w :w<cr> 
   
    " Silencia la busqueda para evitar que se quede pintada la cadena buscada
    noremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

    "Configuraion de split de ventanas
    set splitbelow
    set splitright

endf

function! myspacevim#after() abort
endf

