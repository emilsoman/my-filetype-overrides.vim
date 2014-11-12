" Switch between the last two buffers
nnoremap <silent><buffer><unique> <leader>. :call <SID>ToggleHeader()<CR>

if !exists('*s:ToggleHeader')
  function s:ToggleHeader()
    if(expand('%') =~ '.*\.cpp$')
      execute(":edit %<.h")
    else
      execute(":edit %<.cpp")
    endif
  endfunction
endif
