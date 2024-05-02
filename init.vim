"  If you wanted to use the vim config
" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc

source ~/.config/nvim/common_key_bindings.vim

:lua require('cdw')

" After common keybinds
nmap <Leader>n :Explore<CR> " File explorer


source ~/.config/nvim/funcs.vim
" LEADER MAPPINGS for funcs.vim
"nmap <Leader>d i byebug; puts "breakpoint";<CR>debugger; //eslint-disable-line no-debugger<CR>
nmap <Leader>d :call GetDebuggerStatement()<CR>
nmap <Leader>fv :call OpenTestVertSplit()<CR>

nmap <Leader>fn :call FilenameToCopyBuffer()<CR>
nmap <Leader>F :call FilenameAddToCopyBuffer()<CR>
nmap <Leader>c :call FilenameToCopyBufferWithTrailingSpace()<CR>

nmap <Leader>fnr :call RunRspecCommandToCopyBuffer()<CR>
nmap <Leader>fnrr :call RunRspecCommandCurrentLineToCopyBuffer()<CR>




