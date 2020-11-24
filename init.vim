set pt=<F11>
set ai sw=2 sta et
set noic sm scs is ic sc hls nohid
set aw
set bg=dark
set ml
set fencs=utf-8,latin2
set spelllang=hu
set mouse=a
set bs=indent,eol,start
set nobackup
set title titlestring=%{fnamemodify(getcwd(),':t')}\ ::\ %{expand('%:t')}
filetype plugin indent on

inoremap  


"map z{ `>hha}<ESC>`<i{<ESC>
"map z( `>hha)<ESC>`<i(<ESC>
"map z[ `>hha]<ESC>`<i[<ESC>
"map z$ `>hha$<ESC>`<i$<ESC>
"map z< `>hha><ESC>`<i<<ESC>
"map z" `>hha"<ESC>`<i"<ESC>
"map z' `>hha'<ESC>`<i'<ESC>
"map z` `>hha`<ESC>`<i`<ESC>
nnoremap z{ %%v%<ESC>`>r}`<r{
nnoremap z( %%v%<ESC>`>r)`<r(
nnoremap z[ %%v%<ESC>`>r]`<r[
nnoremap z$ %%v%<ESC>`>r$`<r$
nnoremap z< %%v%<ESC>`>r>`<r<
nnoremap z" %%v%<ESC>`>r"`<r"
nnoremap z' %%v%<ESC>`>r'`<r'
nnoremap z` %%v%<ESC>`>r``<r`
nnoremap zdo %%v%<ESC>`<ido<CR><ESC>%%v%<ESC>`>a<CR>end<ESC>`>x`<x==

vnoremap z{ <ESC>`>a}<ESC>`<i{<ESC>
vnoremap z* <ESC>`>a*<ESC>`<i\*<ESC>
vnoremap z( <ESC>`>a)<ESC>`<i(<ESC>
vnoremap z[ <ESC>`>a]<ESC>`<i[<ESC>
vnoremap z$ <ESC>`>a$<ESC>`<i$<ESC>
vnoremap z" <ESC>`>a"<ESC>`<i"<ESC>
vnoremap z# <ESC>`>a<bar><ESC>`<i#<ESC>
vnoremap z' <ESC>`>a'<ESC>`<i'<ESC>
vnoremap z` <ESC>`>a`<ESC>`<i`<ESC>
vnoremap z< <ESC>`>a><ESC>`<i<<ESC>

nnoremap z<SPACE> %%v%<ESC>`>x`<x
vnoremap z<SPACE> <ESC>`>z<SPACE>
map z} z{
map z) z(
map z> z<
map z] z[


imap <c-b> <del><esc> dwi
imap [3;5~ <del><esc> dwi
imap  <esc>lWi
" ctrl - } or ctrl-]
imap  [S1z=

"map <F2> q/"*p<CR>

command! Timestamp r!date '+\%Y-\%m-\%d \%A \%H:\%M'

map <F9> :!if [ -f Rakefile ]; then rake; else make; fi<CR>
imap <F9> <ESC><F9>
map <F12> :e%:s?.h$?.cpp?<CR>
map <C-F12> :e%:s?.cpp$?.h?<CR>

command! -nargs=1 -range Bible r!diatheke -b HunUj -k <args>

let g:langpair="de:hu"
let g:vtranslate="zt"

command! -range MkLinks <line1>,<line2>s/.\{-}\([^/]\+\)$/<a href="&">\1<\/a>/

" for rails.vim plugin
:command! -bar -nargs=1 OpenURL :!gnome-open <args>

" first artifact of alt-vi!!
imap <M-o> <ESC>o 

map <M-i> <CR>
imap <M-i> <CR>
nnoremap  :w<cr>
imap  


set rtp+=/usr/share/lilypond/2.12.3/vim/

" calculator
inoremap <C-X>= <ESC>vBy`>a=<C-R>=<C-R>"<CR>

nnoremap <CR> @:
nnoremap <ESC>e :e<SPACE>%<TAB><ESC>q:k$T/de:q<CR>:<UP>

vnoremap ZR :TTS<CR>

command! -range TTS call TTS(<line1>, <line2>)

function! TTS(start, end)
  let _ = system("espeak " . shellescape(join(getline(a:start, a:end), " ")). " -w /tmp/1.wav -s 150 -v en")
  exec "!mplayer /tmp/1.wav"
  let _ = system("rm /tmp/1.wav")
endfunc

" for latex-suite
let g:tex_flavor='latex'
set grepprg=grep\ -nH\ $*

" for atp
let g:atp_tab_map=1

map g :tabnew term://git 
nmap gw :tabnew term://git log --oneline --decorate --all --graph<cr>
nmap gs :tabnew term://git status<cr>
nmap gL :tabnew term://git log --oneline %<cr>
nmap gD :tabnew term://git diff %<cr>
nmap gd :tabnew term://git diff<cr>
nmap gF :tabnew term://git fetch<cr>
nmap gA :tabnew term://git add -A && git commit --amend --no-edit<cr>
nmap gi :tabnew<bar>term git add -A && git commit -m""<left>
nmap gp :tabnew term://git push origin HEAD<cr>
nmap gP :tabnew term://git push origin HEAD --force<cr>
nmap gu :tabnew term://git pull --rebase<cr>
map t :sp<bar>term 

inoreabbr lorem Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-n>"


nnoremap  :e src/**/*
nnoremap  :sp src/**/*
nnoremap  :e src/**/*
nnoremap  :sp src/**/*

map <F1> :NERDTreeToggle<CR>
imap <F1> <Esc><F1>
map <F2> :NERDTreeFocus<CR>
imap <F2> <Esc><F2>
map <F3> :NERDTreeFind<CR>
imap <F3> <Esc><F3>

set runtimepath+=~/vimfiles

let g:clipboard = {
      \ 'name': 'clipboard',
      \ 'copy': {
      \ '+': 'win32yank -o',
      \ },
      \ 'paste': {
      \ '+': 'win32yank -i',
      \ },
      \}

let g:ale_linters = {
\   'javascript': [
\      'eslint',
\   ],
\   'typescript': [
\      'eslint',
\      'tsserver',
\   ],
\}
let g:ale_fixers = {
\  'javascript': [
\     'prettier-standard',
\   ],
\  'typescript': [
\     'prettier-standard',
\   ],
\  'html': [
\     'prettier-standard',
\   ],
\}

"autocmd bufwritepost *.js silent !standard --fix %
"set autoread

let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
let g:ale_fix_on_save = 1
nnore <C-,> :ALENextWrap<CR>
nnore <C-.> :ALEPreviousWrap<CR>

inoremap <S-Insert> <C-R>=system('win32yank -o')<CR>
nnoremap <S-Insert> "=system('win32yank -o')<CR>P
vnoremap <C-Insert> y:call system('win32yank -i', getreg('"'))<CR>
inoremap <C-BS> <C-W>


let g:NERDTreeHijackNetrw=0
augroup indexjs
  au!
  autocmd VimEnter * silent! autocmd! FileExplorer
  au BufRead * call OpenIndexTs(expand("<amatch>"))
augroup END

function! OpenIndexTs(dir)
  if !isdirectory(a:dir)
    return
  endif
  let l:a = getcompletion(a:dir.'/index.{ts,js}', 'file')
  if !len(l:a)
    echo 'no index.ts/js'
    return
  endif
  exec "edit ".l:a[0]
  setf javascript
endfunction

let g:deoplete#enable_at_startup = 1

nnoremap ő :ALEPreviousWrap<cr>
nnoremap ú :ALENextWrap<cr>
nnoremap ű @q

nnoremap <F12> :e#<cr>
nnoremap <F4> :e#<cr>

augroup approvals
autocmd!
autocmd BufRead *.received.txt difft | vs %:r:r.approved.txt | difft | exec "norm l" | nnoremap <buffer> a :!mv -f % %:r:r.approved.txt<cr>:q<cr>:n<cr><cr> | nnoremap <buffer> n w:q<cr>:n<cr> | nnoremap <buffer> q :q<cr>:q<cr>
augroup END

let g:AutoPairsMultilineClose=0

nnoremap <c-leftmouse> <leftmouse>:TSDef<cr>
nnoremap <middlemouse> <leftmouse>:TSType<cr>

execute pathogen#infect()

set backupcopy=yes

let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx,*.tsx,*.xml"
let g:closetag_filetypes = 'xhtml,javascript.jsx,jsx,typescript.tsx,tsx,xml'
let g:closetag_xhtml_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx,*.tsx,*.xml"
let g:closetag_xhtml_filetypes = 'xhtml,javascript.jsx,jsx,typescript.tsx,tsx,xml'
let g:closetag_close_shortcut = '¬'


" vim-plug
call plug#begin('~/vimfiles/plugged')
Plug 'scrooloose/nerdtree' , { 'on':  ['NERDTreeToggle', 'NERDTreeFind'], 'for': 'netrw' }
Plug 'tpope/vim-sensible'
"Plug 'vim-scripts/L9'
"Plug 'vim-scripts/FuzzyFinder'
Plug 'tommcdo/vim-exchange'
"Plug 'nobe4/exchange.vim'
Plug 'vim-scripts/surround.vim'
Plug 'w0rp/ale'
Plug 'pangloss/vim-javascript'
"Plug 'mxw/vim-jsx'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
"Plug 'flowtype/vim-flow'
Plug 'Epitrochoid/marko-vim-syntax'
"Plug 'leafgarland/typescript-vim'
"Plug 'Quramy/tsuquyomi'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', { 'for': ['typescript'], 'do': './install.sh \| UpdateRemotePlugins'}
Plug 'Shougo/deoplete.nvim'
Plug 'pearofducks/ansible-vim'
Plug 'deoplete-plugins/deoplete-jedi'
call plug#end()


command! INIT sp ~/.config/nvim/init.vim | nnoremap <buffer> <cr> :w<cr>:so%<cr>:q<cr>
command! RC sp ~/.config/nvim/init.vim | nnoremap <buffer> <cr> :w<cr>:so%<cr>:q<cr>
command! TJ tabnew term://pnpx jest --watch
command! TS tabnew term://pnpm start
command! AP tabnew | ar src/**/*.received.txt
command! NAPLO e ~/Dropbox/Napló/naplo.txt | norm Gz<cr>

