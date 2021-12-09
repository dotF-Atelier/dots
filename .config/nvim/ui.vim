"{ UI settings
if !has('gui_running')
    augroup MyColors
        autocmd!
        autocmd ColorScheme * call MyHighlights()
    augroup END
else
    set guioptions-=T
    set guioptions-=m
    set guioptions-=r
    set guioptions-=L
endif

function! MyHighlights() abort
    highlight clear

    " The following colors are taken from ayu_mirage vim-airline theme,
    " link: https://github.com/vim-airline/vim-airline-themes/
    hi User1 ctermfg=0 ctermbg=114
    hi User2 ctermfg=114 ctermbg=0

    " The following colors are taken from vim-gruvbox8,
    " link: https://github.com/lifepillar/vim-gruvbox8
    hi Normal ctermfg=187 ctermbg=NONE cterm=NONE
    hi CursorLineNr ctermfg=214 ctermbg=NONE cterm=NONE
    hi FoldColumn ctermfg=102 ctermbg=NONE cterm=NONE
    hi SignColumn ctermfg=187 ctermbg=NONE cterm=NONE
    hi VertSplit ctermfg=59 ctermbg=NONE cterm=NONE

    hi ColorColumn ctermfg=NONE ctermbg=237 cterm=NONE
    hi Comment ctermfg=102 ctermbg=NONE cterm=italic
    hi CursorLine ctermfg=NONE ctermbg=237 cterm=NONE
    hi Error ctermfg=203 ctermbg=234 cterm=bold,reverse
    hi ErrorMsg ctermfg=234 ctermbg=203 cterm=bold
    hi Folded ctermfg=102 ctermbg=237 cterm=italic
    hi LineNr ctermfg=243 ctermbg=NONE cterm=NONE
    hi MatchParen ctermfg=NONE ctermbg=59 cterm=bold
    hi NonText ctermfg=239 ctermbg=NONE cterm=NONE
    hi Pmenu ctermfg=187 ctermbg=239 cterm=NONE
    hi PmenuSbar ctermfg=NONE ctermbg=239 cterm=NONE
    hi PmenuSel ctermfg=239 ctermbg=109 cterm=bold
    hi PmenuThumb ctermfg=NONE ctermbg=243 cterm=NONE
    hi SpecialKey ctermfg=102 ctermbg=NONE cterm=NONE
    hi StatusLine ctermfg=239 ctermbg=187 cterm=reverse
    hi StatusLineNC ctermfg=237 ctermbg=137 cterm=reverse
    hi TabLine ctermfg=243 ctermbg=237 cterm=NONE
    hi TabLineFill ctermfg=243 ctermbg=237 cterm=NONE
    hi TabLineSel ctermfg=142 ctermbg=237 cterm=NONE
    hi ToolbarButton ctermfg=230 ctermbg=59 cterm=bold
    hi ToolbarLine ctermfg=NONE ctermbg=59 cterm=NONE
    hi Visual ctermfg=NONE ctermbg=59 cterm=NONE
    hi WildMenu ctermfg=109 ctermbg=239 cterm=bold
    hi Conceal ctermfg=109 ctermbg=NONE cterm=NONE
    hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
    hi DiffAdd ctermfg=142 ctermbg=234 cterm=reverse
    hi DiffChange ctermfg=107 ctermbg=234 cterm=reverse
    hi DiffDelete ctermfg=203 ctermbg=234 cterm=reverse
    hi DiffText ctermfg=214 ctermbg=234 cterm=reverse
    hi Directory ctermfg=142 ctermbg=NONE cterm=bold
    hi EndOfBuffer ctermfg=234 ctermbg=NONE cterm=NONE
    hi IncSearch ctermfg=208 ctermbg=234 cterm=reverse
    hi ModeMsg ctermfg=214 ctermbg=NONE cterm=bold
    hi MoreMsg ctermfg=214 ctermbg=NONE cterm=bold
    hi Question ctermfg=208 ctermbg=NONE cterm=bold
    hi Search ctermfg=214 ctermbg=234 cterm=reverse
    hi SpellBad ctermfg=203 ctermbg=NONE cterm=italic,underline
    hi SpellCap ctermfg=109 ctermbg=NONE cterm=italic,underline
    hi SpellLocal ctermfg=107 ctermbg=NONE cterm=italic,underline
    hi SpellRare ctermfg=175 ctermbg=NONE cterm=italic,underline
    hi Title ctermfg=142 ctermbg=NONE cterm=bold
    hi WarningMsg ctermfg=203 ctermbg=NONE cterm=bold
    hi Boolean ctermfg=175 ctermbg=NONE cterm=NONE
    hi Character ctermfg=175 ctermbg=NONE cterm=NONE
    hi Conditional ctermfg=203 ctermbg=NONE cterm=NONE
    hi Constant ctermfg=175 ctermbg=NONE cterm=NONE
    hi Define ctermfg=107 ctermbg=NONE cterm=NONE
    hi Debug ctermfg=203 ctermbg=NONE cterm=NONE
    hi Delimiter ctermfg=208 ctermbg=NONE cterm=NONE
    hi Error ctermfg=203 ctermbg=234 cterm=bold,reverse
    hi Exception ctermfg=203 ctermbg=NONE cterm=NONE
    hi Float ctermfg=175 ctermbg=NONE cterm=NONE
    hi Function ctermfg=142 ctermbg=NONE cterm=bold
    hi Identifier ctermfg=109 ctermbg=NONE cterm=NONE
    hi Ignore ctermfg=fg ctermbg=NONE cterm=NONE
    hi Include ctermfg=107 ctermbg=NONE cterm=NONE
    hi Keyword ctermfg=203 ctermbg=NONE cterm=NONE
    hi Label ctermfg=203 ctermbg=NONE cterm=NONE
    hi Macro ctermfg=107 ctermbg=NONE cterm=NONE
    hi Number ctermfg=175 ctermbg=NONE cterm=NONE
    hi Operator ctermfg=107 ctermbg=NONE cterm=NONE
    hi PreCondit ctermfg=107 ctermbg=NONE cterm=NONE
    hi PreProc ctermfg=107 ctermbg=NONE cterm=NONE
    hi Repeat ctermfg=203 ctermbg=NONE cterm=NONE
    hi SpecialChar ctermfg=203 ctermbg=NONE cterm=NONE
    hi SpecialComment ctermfg=203 ctermbg=NONE cterm=NONE
    hi Statement ctermfg=203 ctermbg=NONE cterm=NONE
    hi StorageClass ctermfg=208 ctermbg=NONE cterm=NONE
    hi Special ctermfg=208 ctermbg=NONE cterm=italic
    hi String ctermfg=142 ctermbg=NONE cterm=italic
    hi Structure ctermfg=107 ctermbg=NONE cterm=NONE
    hi Todo ctermfg=fg ctermbg=234 cterm=bold,italic
    hi Type ctermfg=214 ctermbg=NONE cterm=NONE
    hi Typedef ctermfg=214 ctermbg=NONE cterm=NONE
    hi Underlined ctermfg=109 ctermbg=NONE cterm=underline
    hi CursorIM ctermfg=NONE ctermbg=NONE cterm=reverse

    hi Comment cterm=NONE
    hi Folded cterm=NONE
    hi SpellBad cterm=underline
    hi SpellCap cterm=underline
    hi SpellLocal cterm=underline
    hi SpellRare cterm=underline
    hi Special cterm=NONE
    hi String cterm=NONE
    hi Todo cterm=bold

    hi NormalMode ctermfg=137 ctermbg=234 cterm=reverse
    hi InsertMode ctermfg=109 ctermbg=234 cterm=reverse
    hi ReplaceMode ctermfg=107 ctermbg=234 cterm=reverse
    hi VisualMode ctermfg=208 ctermbg=234 cterm=reverse
    hi CommandMode ctermfg=175 ctermbg=234 cterm=reverse
    hi Warnings ctermfg=208 ctermbg=234 cterm=reverse
endfunction

if exists('&termguicolors')
    " If we want to use true colors, we must a color scheme which support true
    " colors, for example, https://github.com/sickill/vim-monokai
    set notermguicolors
endif
set background=dark
colorscheme desert

" Highlight trailing spaces and leading tabs
call matchadd('WarningMsg', '\s\+$')
call matchadd('WarningMsg', '^\t\+')

" statusline settings
let g:currentmode={
       \ 'n'  : 'NORMAL ',
       \ 'v'  : 'VISUAL ',
       \ 'V'  : 'V·Line ',
       \ "\<C-V>" : 'V·Block ',
       \ 'i'  : 'INSERT ',
       \ 'R'  : 'R ',
       \ 'Rv' : 'V·Replace ',
       \ 'c'  : 'Command ',
       \}

set statusline=
set statusline+=%1*
" Show current mode
set statusline+=\ %{toupper(g:currentmode[mode()])}
set statusline+=%{&spell?'[SPELL]':''}

set statusline+=%#WarningMsg#
set statusline+=%{&paste?'[PASTE]':''}

set statusline+=%2*
" File path, as typed or relative to current directory
set statusline+=\ %F

set statusline+=%{&modified?'\ [+]':''}
set statusline+=%{&readonly?'\ []':''}

" Truncate line here
set statusline+=%<

" Separation point between left and right aligned items.
set statusline+=%=

set statusline+=%{&filetype!=#''?&filetype.'\ ':'none\ '}

" Encoding & Fileformat
set statusline+=%#WarningMsg#
set statusline+=%{&fileencoding!='utf-8'?'['.&fileencoding.']':''}

set statusline+=%2*
set statusline+=%-7([%{&fileformat}]%)

" Warning about byte order
set statusline+=%#WarningMsg#
set statusline+=%{&bomb?'[BOM]':''}

set statusline+=%1*
" Location of cursor line
set statusline+=[%l/%L]

" Column number
set statusline+=\ col:%2c

" Warning about trailing spaces.
set statusline+=%#WarningMsg#
set statusline+=%{StatuslineTrailingSpaceWarning()}
set statusline+=%{StatuslineTabWarning()}

" Recalculate the trailing whitespace warning when idle, and after saving.
augroup check_trailing_space
    autocmd!
    autocmd CursorHold,BufWritePost * unlet! b:statusline_trailing_space_warning
        \ | let &statusline=&statusline
augroup END

augroup check_mixed_tabs
    autocmd!
    autocmd CursorHold,BufWritePost * unlet! b:statusline_tab_warning
        \ | let &statusline=&statusline
augroup END

" Find if trailing spaces exist.
function! StatuslineTrailingSpaceWarning()
    if !exists('b:statusline_trailing_space_warning')
        " If the file is unmodifiable, do not warn this.
        if !&modifiable
            let b:statusline_trailing_space_warning = ''
            return b:statusline_trailing_space_warning
        endif

        let l:line_num = search('\s\+$', 'nw')
        if l:line_num != 0
            let b:statusline_trailing_space_warning = ' [' . l:line_num . ']' . 'trailing space'
        else
            let b:statusline_trailing_space_warning = ''
        endif
    endif
    return b:statusline_trailing_space_warning
endfunction

" Find if they are mixed indentings.
function! StatuslineTabWarning()
    if !exists('b:statusline_tab_warning')
        " If the file is unmodifiable, do not warn this.
        if !&modifiable
            let b:statusline_trailing_space_warning = ''
            return b:statusline_trailing_space_warning
        endif

        let has_leading_tabs = search('^\t\+', 'nw') != 0
        let has_leading_spaces = search('^ \+', 'nw') != 0

        if has_leading_tabs && has_leading_spaces
            let b:statusline_tab_warning = ' [mixed-indenting]'
        elseif has_leading_tabs
            let b:statusline_tab_warning = ' [tabbed-indenting]'
        else
            let b:statusline_tab_warning = ''
        endif
    endif

    return b:statusline_tab_warning
endfunction
"}


