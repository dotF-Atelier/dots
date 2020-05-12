" 自动纠正手快容易打错的词
iab Include include
iab INclude include
iab enld endl
iab eldn endl
iab reutrn return

"一些快捷键
nmap L $
nmap H ^
nmap K <Nop>
map <c-g> <Esc>
cmap <c-g> <Esc>
imap <c-g> <Esc>
vmap <c-g> <Esc>
imap <A-h> <Esc><A-h>
imap <A-j> <Esc><A-j>
imap <A-k> <Esc><A-k>
imap <A-l> <Esc><A-l>
imap <A-O> <Esc><A-O>
imap <A-o> <Esc><A-o>
imap <A-A> <Esc><A-A>

" <Localleader>为分号(;)
 " 注释
nmap <Localleader>cc gcc
nmap <Localleader>cu gcc
xmap <Localleader>cc gcc
xmap <Localleader>cu gcc
 " 快速移动
nmap <LocalLeader><LocalLeader>k gsk
nmap <LocalLeader><LocalLeader>j gsj
 " 退出vim
nnoremap <Localleader>q         :q<cr>
 " 清除空字符串
nnoremap <Localleader><space>   :WhitespaceErase<cr>

"##### auto fcitx  ###########
let g:input_toggle = 1
function! Fcitx2en()
   let s:input_status = system("fcitx-remote")
   if s:input_status == 2
      let g:input_toggle = 1
      let l:a = system("fcitx-remote -c")
   endif
endfunction

function! Fcitx2zh()
   let s:input_status = system("fcitx-remote")
   if s:input_status != 2 && g:input_toggle == 1
      let l:a = system("fcitx-remote -o")
      let g:input_toggle = 0
   endif
endfunction

set ttimeoutlen=150
"退出插入模式
autocmd InsertLeave * call Fcitx2en()
"进入插入模式
autocmd InsertEnter * call Fcitx2zh()
"##### auto fcitx end ######

