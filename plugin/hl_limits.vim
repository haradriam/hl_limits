let g:hl_limits = 1

if !exists("g:hl_limits_columns")
    let g:hl_limits_columns = 80
endif

fun! HlLimitsUpdate()
    if g:hl_limits == 1
        let l:hl_limits_tmp = g:hl_limits_columns + 2
        highlight OverLength ctermbg=red ctermfg=white guibg=#592929
        execute 'match OverLength /\%' . l:hl_limits_tmp . 'v.*/'
    else
        match OverLength //
    end
endfunction

fun! HlLimitsShow()
    let g:hl_limits = 1
    call HlLimitsUpdate()
endfunction

fun! HlLimitsHide()
    let g:hl_limits = 0
    call HlLimitsUpdate()
endfunction

command! HlLimitsUpdate call HlLimitsUpdate()
command! HlLimitsShow call HlLimitsShow()
command! HlLimitsHide call HlLimitsHide()

autocmd FileType c,cpp,cc,h,hh,hpp,python,javascript,php,java HlLimitsUpdate
