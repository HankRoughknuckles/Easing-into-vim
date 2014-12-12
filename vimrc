" Make the leader key be space
let mapleader = "\<Space>"

set backspace=2       	" make backspace able to go over end of lines
set number 		          " show the line number on the side


" Neo bundle stuff
    set runtimepath+=~/.vim/bundle/neobundle.vim/
    call neobundle#rc(expand('~/.vim/bundle/')) "required!
    
    " Let NeoBundle manage NeoBundle (Required!)
    NeoBundleFetch 'Shougo/neobundle.vim'
    
    " Fuzzy finding for files
    NeoBundle 'kien/ctrlp.vim'
    
    "Move around easier
    NeoBundle 'Lokaltog/vim-easymotion'
    
    "File navigation
    NeoBundle 'scrooloose/nerdtree'
    
    "Status line
    NeoBundle 'bling/vim-airline'

" Key mappings
    " space-n to open a new file (in a new tab)
    nnoremap <leader>n :tabnew<cr>

    " space-t to open a new tab
    nnoremap <leader>t :tabnew<cr>
    
    " <c-tab> to go to next tab
    nnoremap <c-tab> :tabnext<cr>
    inoremap <c-tab> <esc>:tabnext<cr>
    
    " <c-shift-tab> to go to previous tab
    nnoremap <c-s-tab> :tabprev<cr>
    inoremap <c-s-tab> <esc>:tabprev<cr>

    " space-f to open fuzzy file finder
    nnoremap <leader>f :CtrlPClearCache<cr>:CtrlP .<cr>

    " space-o to open the file browser
    nnoremap <leader>o :NERDTreeToggle<cr>

    " space-s to save
    nnoremap <leader>s :w<cr>

   " space-q to quit (doesn't save, watch out!)
    nnoremap <leader>q :q!<cr>
