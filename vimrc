"-=============================================================================== 
"GENERAL SETTINGS
set nu
syntax on
set ignorecase
set autoindent 
set encoding=utf-8 "utf-8 support 
set laststatus=2 "for showing the vim-airline bat the bottom

"=============================================================================== 
"VUNDLE SETTINGS

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
"Plugin 'airblade/vim-gitgutter'
Plugin 'jianmiao/auto-pairs'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'reedes/vim-wordy'
Plugin 'ron89/thesaurus_query.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'crusoexia/vim-monokai'
Plugin 'NBUT-Developers/extra-instant-markdown'
Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'
Plugin 'justinmk/vim-sneak'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"===============================================================================
"Vim Indent guidelines 
"let g:indent_guides_enable_on_vim_startup =1 
"let g:indent_guides_start_level=2
"let g:indent_guides_guide_size = 1
"=============================================================================== 
"Vim Monokai Settings 
"colorscheme monokai
"set t_Co=256
"=============================================================================== 
"PYTHON SETTINGS

" when using set on multiple lines you have to seperate them with | 
au BufNewFile,BufRead *.py
 \ set tabstop=4 |
 \ set softtabstop=4 |
 \ set shiftwidth=4 |
 \ set textwidth=120 |
 \ set expandtab |
 \ set autoindent |
 \ set fileformat=unix |

"This will mark extra whitespace as bad, and probably color it red.
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

 "python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF

let python_highlight_all = 1
"===============================================================================
 "HTML RUBY AND OTHER SETTINGS

au BufNewFile,BufRead *.js,*.html,*.css
 \ set tabstop=2 |
 \ set softtabstop=2 |
 \ set shiftwidt2 |

"===============================================================================
"VIRTUALENV AUTO ACTIVATION 

"Goyo Width
let g:goyo_width ='120'
let g:goyo_height = '90%'
let g:goyo_linenr=1
imap <c-g> <esc>:Goyo

"LimeLight settings
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
"let g:limelight_priority = -1
