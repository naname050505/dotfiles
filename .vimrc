if has('vim_starting')
    " 初回起動時のみruntimepathにNeoBundleのパスを指定する
    set runtimepath+=~/.vim/bundle/neobundle.vim/

    " NeoBundleが未インストールであればgit cloneする・・・・・・①
    if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
        echo "install NeoBundle..."
        :call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
    endif
endif

if &term =~ "xterm"
    let &t_SI .= "\e[?2004h"
    let &t_EI .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif

call neobundle#begin(expand('~/.vim/bundle/'))
" インストールするVimプラグインを以下に記述
" NeoBundle自身を管理
NeoBundleFetch 'Shougo/neobundle.vim'
"----------------------------------------------------------
" ここに追加したいVimプラグインを記述するã»・・・・・②
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'croaker/mustang-vim'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'tomasr/molokai'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'ConradIrwin/vim-bracketed-paste'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'ervandew/supertab'
NeoBundle 'Lokaltog/vim-powerline'
"↓上手くDLできないのでコメントアウト
"NeoBundle 'jacoborus/tender.vim'
 
"----------------------------------------------------------
" インストール
"----------------------------------------------------------
syntax enable " 構文に色を付ける
colorscheme tomorrow-night-eighties
"colorscheme  tender
set t_Co=256
set guifont=Menlo\ Regular:h10
"----------------------------------------------------------
call neobundle#end()

" ファイルタイプ別のVimプラグイン/インデントを有効にする
filetype plugin indent on

" 未インストールのVimプラグインがある場合、インストールすããどうかを尋ねてくれるようにする設定・・・・・・③
NeoBundleCheck

"====================================================


set number
set whichwrap=b,s,[,],<,>
set mouse=a
"Link yunk & clipboard !! 
"Linuxの場合はset clipboard=unnamedplus
set clipboard=unnamed
set backspace=indent,eol,start

set expandtab
set tabstop=4
set shiftwidth=4
"=================================
map <F2> <CR>:%s/\t/    /g <CR>
"=================================
"vim上でF2を押せばtabを全てspaceに変換する"

set nowritebackup
set nobackup
set noswapfile

" tab補完についてのオプション
autocmd FileType python setlocal completeopt-=preview
" if you cant show the predicytion with pushing tab key use two option bellow 
" let g:SuperTabContextDefaultCompletionType = "context"

" ↓ tabの補完の際に上から行くか下から行くかの設定 ONにすると上から降りていく
let g:SuperTabDefaultCompletionType = "<c-n>"

let g:jedi#completions_enabled = 1
let g:jedi#auto_vim_configuration = 0
let g:jedi#popup_select_first = 0
let g:jedi#popup_on_dot = 0

"関数の引数の説明(糞重いので一生いれちゃ駄目)
let g:jedi#show_call_signatures = 0
let g:pymode_rope = 0
let g:jedi#completions_enabled = 0

if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif

let g:neocomplete#force_omni_input_patterns.python = '\h\w*\|[^. \t]\.\w*'
let g:neocomplete#force_omni_input_patterns.python = '%([^. t].|^s*@|^s*froms.+import |^s*from |^s*import )w*'

" copy & paste map
nnoremap <Space>d "*dd
vnoremap <Space>d "*dd
nnoremap <Space>y "*yy
vnoremap <Space>y "*yy
nnoremap <Space>p "*p
vnoremap <Space>p "*p

" ステータスライン関連
" ステータスラインに表示する情報の指定
set statusline=%n\:%y%F\ \|%{(&fenc!=''?&fenc:&enc).'\|'.&ff.'\|'}%m%r%=<%l/%L:%p%%>
" ステータスラインの色
highlight StatusLine   term=NONE cterm=NONE ctermfg=white ctermbg=darkgray

set hlsearch
" ESCを二回押ããとã§ハイライトを消す
nmap <silent> <Esc><Esc> :nohlsearch<CR>
vnoremap <silent> <C-p> "0p<CR>

set laststatus=2

if version < 600
  syntax clear
elseif exists('b:current_after_syntax')
  finish
endif

" We need nocompatible mode in order to continue lines with backslashes.
" Original setting will be restored.
let s:cpo_save = &cpo
set cpo&vim

syn match pythonOperator "\(+\|=\|-\|\^\|\*\)"
syn match pythonDelimiter "\(,\|\.\|:\)"
syn keyword pythonSpecialWord self

hi link pythonSpecialWord    Special
hi link pythonDelimiter      Special
let b:current_after_syntax = 'python'
let &cpo = s:cpo_save
unlet s:cpo_save
" 行末のスペースを可視化
set listchars=tab:^\ ,trail:~
" コマンドラインの履歴を10000件保存する
set history=10000
" コメントの色を水色
hi Comment ctermfg=6
nnoremap Y y$

augroup vimrcEx
      au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
        \ exe "normal g`\"" | endif
  augroup END

set t_8b=^[[48;2;%lu;%lu;%lum
set t_8f=^[[38;2;%lu;%lu;%lum