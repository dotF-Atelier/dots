"{ Functions
" Remove trailing white space, see https://vi.stackexchange.com/a/456/15292
function! StripTrailingWhitespaces() abort
    let l:save = winsaveview()
    keeppatterns %s/\v\s+$//e
    call winrestview(l:save)
endfunction

" Custom fold expr, adapted from https://vi.stackexchange.com/a/9094/15292
function! VimFolds(lnum)
    " get content of current line and the line below
    let l:cur_line = getline(a:lnum)
    let l:next_line = getline(a:lnum+1)

    if l:cur_line =~# '^"{'
        return '>' . (matchend(l:cur_line, '"{*') - 1)
    else
        if l:cur_line ==# '' && (matchend(l:next_line, '"{*') - 1) == 1
            return 0
        else
            return '='
        endif
    endif
endfunction

" Custom fold text, adapted from https://vi.stackexchange.com/a/3818/15292
" and https://vi.stackexchange.com/a/6608/15292
function! MyFoldText()
    let line = getline(v:foldstart)
    let folded_line_num = v:foldend - v:foldstart
    let line_text = substitute(line, '^"{\+', '', 'g')
    let fillcharcount = &textwidth - len(line_text) - len(folded_line_num) - 10
    return '+'. repeat('-', 4) . line_text . repeat('.', fillcharcount) . ' ('. folded_line_num . ' L)'
endfunction
"}

"{ Variables
let mapleader = ','

" Do not load netrw by default since I do not use it, see
" https://github.com/bling/dotvim/issues/4
let g:loaded_netrwPlugin = 1

" Do not load tohtml.vim
let g:loaded_2html_plugin = 1
"}

