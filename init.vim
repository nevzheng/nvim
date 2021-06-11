"Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes for Plug Commands

""" Basics:
Plug 'tpope/vim-sensible'

""" Themes:
Plug 'morhetz/gruvbox'

""" GUI Tweaks:
" NerdTree
Plug 'preservim/nerdtree'

" vim-airline:
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Tagbar
Plug 'majutsushi/tagbar'

" Rainbow Brackets
Plug 'kien/rainbow_parentheses.vim'
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

""" fzf: Fuzzy Finder
Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

""" Markdown Support
Plug 'godlygeek/tabular' " Must come before vim-markdown
Plug 'plasticboy/vim-markdown'  
set nofoldenable " Disable Folding

""" Editing Enhancements:
" Surround.vim
Plug 'tpope/vim-surround'

" Comments: commentary.vim
" Comment stuff out.
" Use gcc to comment out a line (takes a count),
" gc to comment out the target of a motion (for example, gcap to comment out a paragraph),
" gc in visual mode to comment out the selection, and gc in operator pending mode to target a comment.
" gcgc uncomments
Plug 'tpope/vim-commentary'

" Auto Pairs: Insert closing element
Plug 'jiangmiao/auto-pairs'


" Swap between single and multiline versions
"    gS to split a one-liner into multiple lines
"   gJ (with the cursor on the first line of a block) to join a block into a single-line statement.

Plug 'AndrewRadev/splitjoin.vim'


"""Language Server Support:
" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

let g:coc_global_extensions = [
            \'coc-rust-analyzer',
            \'coc-snippets',
            \'coc-yaml',
            \'coc-toml',
            \'coc-json'
            \]

" Syntastic language support:
Plug 'vim-syntastic/syntastic'
syntax enable
filetype plugin indent on

" Override .nvim files
au BufRead,BufNewFile *.nvim set filetype=vim
" rust.vim
Plug 'rust-lang/rust.vim'

" toml and yaml support 
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'elzr/vim-json'

" golang support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" emmet vim 
" <C-y> , Completion trigger
Plug 'mattn/emmet-vim'


" Filetype Support:
" figure out spacing
Plug 'tpope/vim-sleuth'

"example defaults for new projects
set expandtab
set tabstop=2
set shiftwidth=2

" File Syntax
Plug 'sheerun/vim-polyglot'
" let g:polyglot_disabled = ['sensible'] " in case it gets in way
" Exclude polyglot
" let g:polyglot_disabled =['markdown']
" let g:polyglot_disabled = ['autoindent']

" Git Support:
" git extensions
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" vim-devicons: Add Icons
" LOAD AFTER: NERDTree, vim-airline, ctrlp, 
" powerline, Denite, unite,
" liteline, vim-startlify, vimfiler, flagship
Plug 'ryanoasis/vim-devicons'

" Utilities:
" Vim Eunuch: Unix Wrappers for vim
Plug 'tpope/vim-eunuch'
" Session Management
Plug 'tpope/vim-obsession'

" Vim Unimpaired: Extra Shortcuts
Plug 'tpope/vim-unimpaired'

" Snippets:
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Initialize plugin system
call plug#end()

" Start Plugin Config

" coc config
source $HOME/.config/nvim/plug-config/coc.nvim
" nerdtree config
source $HOME/.config/nvim/plug-config/nerd_tree.nvim
" Syntastic Config
source $HOME/.config/nvim/plug-config/syntastic.nvim
" vim-airline-config
source $HOME/.config/nvim/plug-config/vim_airline.nvim
" fzf config
source $HOME/.config/nvim/plug-config/fzf.nvim
" snippets config
source $HOME/.config/nvim/plug-config/snippets.nvim
" vim-go config
source $HOME/.config/nvim/plug-config/vim_go.nvim


" TagBar Config
nmap <F8> :TagbarToggle<CR>

" Rust vim config
let g:rustfmt_autosave = 1

""" End Plugin Config

" Enable Mouse
set mouse=a

" Theme Selection
colorscheme gruvbox
set background=dark
