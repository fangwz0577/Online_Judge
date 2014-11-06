"" configuration of vim
"" author: fwenzhou@gmail.com
"" date: 2014/11/06

syntax on
filetype on


colorscheme desert
set nocompatible
set number
set softtabstop=4 tabstop=4 shiftwidth=4
set autoindent
set cindent
set expandtab
set hlsearch
set confirm
set clipboard+=unnamed
set showmatch
set smartindent
set cmdheight=2
set wildmenu
set showcmd
"set mouse=a
set ruler
set title
set history=1000
set laststatus=2
set t_Co=256 "color scheme
set encoding=utf-8
"set cursorline



"" Bundle plugins
set rtp+=~/.vim/bundle/vundle/  
call vundle#rc()  

Bundle 'gmarik/vundle'
Bundle 'OmniCppComplete'
Bundle 'winmanager'
Bundle 'taglist.vim'
Bundle 'SuperTab'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'kien/ctrlp.vim'
Bundle 'majutsushi/tagbar'
Bundle 'Shougo/neocomplcache'
" Bundle 'xolox/vim-session'
Bundle 'sprsquish/thrift.vim'
Bundle 'derekwyatt/vim-scala'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}  
Bundle 'git://git.wincent.com/command-t.git'

"" language enhancement
Bundle 'Cpp11-Syntax-Support'
Bundle 'bash-support.vim'
" Bundle 'othree/html5.vim'
" Bundle 'nono/jquery.vim'
" Bundle 'pangloss/vim-javascript'
" Bundle 'tpope/vim-markdown'
" Bundle 'fatih/vim-go'
" Bundle 'kchmck/vim-coffee-script'
" Bundle 'perl-support.vim'
" Bundle 'rails.vim'

"" Color Schemes
" Bundle 'tomasr/molokai'
" Bundle 'rickharris/vim-blackboard'
" Bundle 'tpope/vim-vividchalk'
" Bundle 'Lokaltog/vim-distinguished'
" Bundle 'chriskempson/vim-tomorrow-theme'
" Bundle 'fisadev/fisa-vim-colorscheme'

"" Bundle help
" :BundleList          - list configured bundles  
" :BundleInstall(!)    - install(update) bundles  
" :BundleSearch(!) foo - search(or refresh cache first) for foo   
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
" see :h vundle for more details or wiki for FAQ   
" NOTE: comments after Bundle command are not allowed..  



"" Configurations of plugins
let g:nerdtree_tabs_open_on_console_startup = 0
let g:nerdtree_tabs_open_on_gui_startup = 0
let g:Powerline_symbols = 'fancy'
let NERDTreeIgnore = ['\.py[oc]$']
let g:tagbar_ctags_bin = '/usr/bin/ctags'
let g:ctrlp_use_caching = 1
let g:ctrlp_working_path_mode = 0
let g:syntastic_cpp_complier_options = ' -std=c++11'
let g:SuperTabDefaultCompletionType = "context"

"" ctags auto generate tags file
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra+=q .<CR>
"" generate systags for system header files
"" ctags -I __THROW --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --fields=+S  -R -f ~/.vim/systags /usr/include /usr/local/include
set tags+=~/.vim/systags

"" input TlistToggle to open/close Taglist window
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

"" generate tags file first
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 1
let OmniCpp_DefaultNamespaces = ["std","_GLIBCXX_STD"]


filetype plugin indent on
filetype indent on
