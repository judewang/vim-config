let g:tokyonight_style = 'night' " Customize the style of this color scheme.
"Available values: 'night', 'storm'
"Default value: 'night'
"let g:tokyonight_transparent_background = 1 " Set to 1 to enable transparent background.
"Available values: 0, 1
"Default value: 0
"let g:tokyonight_menu_selection_background: Control the background color of PmenuSel and WildMenu .
"Available values: 'green', 'red', 'blue'
"Default value: 'green'
"let g:tokyonight_disable_italic_comment = 0 " Set to 1 to disable italic in Comment .
"Available values: 0, 1
"Default value: 0
" 需要把斜體字處理好才可以使用，不然會出現不預期的灰底
let g:tokyonight_enable_italic = 1 " Set to 1 to italicize keywords. This option is designed to use with fonts that support cursive italic styles, for example Fira Code iCursive Op.
"Available values: 0, 1
"Default value: 0
"let g:tokyonight_cursor: Customize the cursor color, only works in GUI clients.
"Available values: 'auto', 'red', 'green', 'blue'
"Default value: 'auto'
"let g:tokyonight_current_word: Some plugins can highlight the word under current cursor(for example neoclide/coc-highlight), you can use this option to control their behavior.
"Available values: 'bold', 'underline', 'italic', 'grey background'
"Default value: 'grey background' when not in transparent mode, 'bold' when in transparent mode.

let g:airline_theme = "tokyonight"
let g:lightline = {'colorscheme' : 'tokyonight'}

colorscheme tokyonight
