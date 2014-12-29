set nocompatible        " don't use old settings that vi used.  
						" Use the newer features that vim offers


" Make the leader key be space
let mapleader = "\<Space>"


set backspace=2       	" make backspace able to go over end of lines
set number 		        " show the line number on the side
set laststatus=2    	"always show the status line
set t_Co=256        	"set colors to 256

set number          	"show line number on side
set nornu           	"do not make the line numbers relative to cursor
set mousehide       	"hide mouse cursor while typing
set showmode        	"display the current mode
set cursorline      	"highlight the current line
set backspace=2			"make backspace able to go over end of lines
set backspace=indent,eol,start	"Set regular backspace during insert mode

syntax enable			"use syntax highlighting


" Tab stops
	set tabstop=4    	" when you press tab, it will move forward 
						" by 4 spaces
" ----------------------------------------------------------------------
	set shiftwidth=4 	" the number of spaces the >>, <<, >, and < 
						" commands will move by will be 4
" ----------------------------------------------------------------------
	set smarttab 		" pressing backspace on a blank indented line 
						" will delete the amount of spaces equal to 
						" shiftwidth

" Neo bundle stuff
	set runtimepath+=~/.vim/bundle/neobundle.vim/
	call neobundle#begin(expand('~/.vim/bundle/'))
		" Let NeoBundle manage NeoBundle (Required!)
			NeoBundleFetch 'Shougo/neobundle.vim'

		" Fuzzy finding for files
			NeoBundle 'kien/ctrlp.vim'

		"Move around easier
			NeoBundle 'Lokaltog/vim-easymotion'

		"File navigation
			NeoBundle 'scrooloose/nerdtree'


		"Coffeescript integration and syntax highlighting
			NeoBundle 'kchmck/vim-coffee-script'

	call neobundle#end()

  filetype plugin indent on 			" Required:

	 " If there are uninstalled bundles found on startup,
	 " this will conveniently prompt you to install them.
	 NeoBundleCheck


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

	" space-shift-s to save as
		nnoremap <leader><s-s> :w 

	" space-q to quit (doesn't save, watch out!)
		nnoremap <leader>q :q!<cr>



" Key mappings that might be new
	" space-rv to reload vimrc
		nnoremap <leader>rv :source<Space>$MYVIMRC<cr>

	" space-ev to edit the vimrc file (think: edit-vim)
		nnoremap <leader>ev :tabnew $MYVIMRC<cr>
