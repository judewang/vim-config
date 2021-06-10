" Because I'm using fish
if executable('fish')
  set shell=zsh
  let $SHELL="zsh"
endif

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let $FZF_DEFAULT_OPTS='--layout=reverse --inline-info'
let $FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

" FZF-Preview configs
let g:fzf_preview_use_dev_icons = 1
" let g:fzf_preview_command = 'bat --style=grid --color=always --theme="Solarized (light)" --plain {-1}' " Installed bat
let $FZF_PREVIEW_PREVIEW_BAT_THEME = 'Dracula'

" Use true color preview in Neovim
augroup fzf_preview
  autocmd!
  autocmd User fzf_preview#initialized call s:fzf_preview_settings()
augroup END

function! s:fzf_preview_settings() abort
  let g:fzf_preview_command = 'COLORTERM=truecolor ' . g:fzf_preview_command
  let g:fzf_preview_grep_preview_cmd = 'COLORTERM=truecolor ' . g:fzf_preview_grep_preview_cmd
endfunction

" Remap CtrlP to :FZF
nnoremap <expr> <C-p>
  \ fugitive#head() != '' ? 
  \ ':<C-u>FzfPreviewFromResources project_mru git<CR>' : 
  \ ':<C-u>FzfPreviewFromResources mru directory<CR>'

" FZF preview maps
nmap <Leader>z [fzf-p]
xmap <Leader>z [fzf-p]

nnoremap <silent> <space>p     :<C-u>FzfPreviewCommandPalette<CR>
nnoremap <silent> <space>h     :<C-u>Helptags<CR>
nnoremap <silent> <space>g     :<C-u>FzfPreviewGitStatus<CR>
nnoremap <silent> <space>a     :<C-u>FzfPreviewGitActions<CR>
nnoremap <silent> <space>b     :<C-u>FzfPreviewBuffers<CR>
nnoremap <silent> <space>B     :<C-u>FzfPreviewAllBuffers<CR>
nnoremap <silent> <space>f     :<C-u>FzfPreviewLines<CR>
nnoremap <silent> <space>F     :<C-u>FzfPreviewBufferLines<CR>
" nnoremap <silent> [fzf-p]o     :<C-u>FzfPreviewFromResources buffer project_mru<CR>
" nnoremap <silent> [fzf-p]<C-o> :<C-u>FzfPreviewJumps<CR>
nnoremap <silent> [fzf-p]c    :<C-u>FzfPreviewChanges<CR>
" nnoremap <silent> [fzf-p]/     :<C-u>FzfPreviewLines --add-fzf-arg=--no-sort --add-fzf-arg=--query="'"<CR>
" nnoremap <silent> [fzf-p]*     :<C-u>FzfPreviewLines --add-fzf-arg=--no-sort --add-fzf-arg=--query="'<C-r>=expand('<cword>')<CR>"<CR>
nnoremap          [fzf-p]gr    :<C-u>FzfPreviewProjectGrep<Space>
xnoremap          [fzf-p]gr    "sy:FzfPreviewProjectGrep<Space>-F<Space>"<C-r>=substitute(substitute(@s, '\n', '', 'g'), '/', '\\/', 'g')<CR>"
nnoremap <silent> [fzf-p]t     :<C-u>FzfPreviewBufferTags<CR>
nnoremap <silent> [fzf-p]q     :<C-u>FzfPreviewQuickFix<CR>
" nnoremap <silent> [fzf-p]l     :<C-u>FzfPreviewLocationList<CR>

