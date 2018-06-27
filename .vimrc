set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'leafgarland/typescript-vim'
Plugin 'posva/vim-vue'
Plugin 'altercation/vim-colors-solarized'
Plugin 'cocopon/iceberg.vim'
Plugin 'pangloss/vim-javascript'

call vundle#end()
filetype plugin indent on
syntax enable


set nu

set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab
set cursorline
set cursorcolumn

au Filetype python setl ts=4 sw=4 sts=4 et

abbr W w
abbr Wq wq
abbr Wqa wqa
abbr WQ wq
abbr WQa wqa
abbr Q q
abbr Qa qa
abbr E e

abbr tpye type
abbr improt import
abbr extneds extends
abbr consturctor constructor
abbr disaptch dispatch
abbr Compoenent Component
abbr reutrn return
abbr retunr return
abbr modles models
abbr modle model
abbr incldue include

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'
let g:javascript_plugin_jsdoc=1

augroup javascript_folding
  au!
  au FileType javascript setlocal foldmethod=syntax
augroup END

let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"


set background=dark
colorscheme iceberg

hi CursorLine cterm=None ctermbg=236
hi CursorColumn cterm=None ctermbg=236

