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
imap <c-g> <Esc>


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
 " 启动ibus自动切换
nmap <Localleader>it :IMSToggle<cr>

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

