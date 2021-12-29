vim.g['dashboard_default_executive'] = 'telescope'

vim.cmd([[
let g:dashboard_custom_shortcut_icon = {}
let g:dashboard_custom_shortcut_icon['last_session'] = '  '
let g:dashboard_custom_shortcut_icon['find_history'] = '➫  '
let g:dashboard_custom_shortcut_icon['find_file'] = '  '
let g:dashboard_custom_shortcut_icon['new_file'] = '  '
let g:dashboard_custom_shortcut_icon['change_colorscheme'] = '  '
let g:dashboard_custom_shortcut_icon['find_word'] = '  '
let g:dashboard_custom_shortcut_icon['book_marks'] = '  '
" have vim start coc-explorer if vim started with folder
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | wincmd p | ene | exe 'cd '.argv()[0] | exe 'Dashboard'| endif
]])


