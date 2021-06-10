if g:vimIsInTmux == 1
  let g:tmuxline_preset = {
        \'a'    : '#S',
        \'b'    : '%R',
        \'win'  : [ '#I', '#W' ],
        \'cwin' : [ '#I', '#W', '#F' ],
        \'x'    : '#{prefix_highlight}',
        \'y'    : [ '%a' ],
        \'z'    : '#H'
        \}
  let g:tmuxline_separators = {
        \ 'space' : ' '}
endif
