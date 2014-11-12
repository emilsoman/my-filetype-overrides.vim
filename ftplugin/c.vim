" Switch between header and source
nmap <silent><buffer> <leader>. :call ToggleHeader()<CR>

if !exists('*ToggleHeader')
  function ToggleHeader()
    if(expand('%') =~ ".*\\.cp\\=p\\=$")
      execute(':edit ' . glob("%<.h*"))
    elseif(expand('%') =~ ".*\\.h$")
      execute(':edit ' . glob("%<.c*"))
    endif
  endfunction
endif
