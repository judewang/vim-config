set relativenumber
set cursorline

set smarttab
set cindent
set tabstop=2
set shiftwidth=2

" always uses spaces instead of tab characters
set expandtab
set pyx=3

" if hidden is not set, TextEdit might fail.
set hidden
" Some servers have issues with backup files, see #649 set nobackup set nowritebackup
" Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
set statusline^=%{get(g:,'coc_git_status','')}%{get(b:,'coc_git_status','')}%{get(b:,'coc_git_blame','')}

" if has('termguicolors') && $TERM_PROGRAM ==# 'iTerm.app'
  " let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  " let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  " set termguicolors
" endif

inoremap <M-CR> <C-o>O
nnoremap <silent> <M-w> :bd<CR>
nnoremap <silent> <M-s> :w<CR>:bd<CR>
