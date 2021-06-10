source $HOME/.config/nvim/vim-plug/plugins.vim

source $HOME/.config/nvim/general/settings.vim

source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/nerd-commenter.vim
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/emmet.vim
" source $HOME/.config/nvim/plug-config/tmuxline.vim

" source $HOME/.config/nvim/themes/spaceduck.vim
" source $HOME/.config/nvim/themes/tokyonight.vim
" source $HOME/.config/nvim/themes/palenight.vim
" source $HOME/.config/nvim/themes/nightfly-guicolors.vim
" source $HOME/.config/nvim/themes/gruvbox.vim
" source $HOME/.config/nvim/themes/forest-night.vim
source $HOME/.config/nvim/themes/dracula.vim

inoremap jk <ESC>

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
noremap <esc><esc> :silent! nohls<CR>

