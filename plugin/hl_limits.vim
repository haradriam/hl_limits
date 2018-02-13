let g:HlLimits = 1

fun! HlLimitsUpdate()
    if g:HlLimits == 1
        highlight OverLength ctermbg=red ctermfg=white guibg=#592929
        match OverLength /\%82v.*/
    else
        match
    end
endfunction

fun! HlLimitsShow()
    let g:HlLimits = 1
    call HlLimitsUpdate()
endfunction

fun! HlLimitsHide()
    let g:HlLimits = 0
    call HlLimitsUpdate()
endfunction

command! HlLimitsUpdate call HlLimitsUpdate()
command! HlLimitsShow call HlLimitsShow()
command! HlLimitsHide call HlLimitsHide()

autocmd FileType c,cpp,cc,h,hh,hpp,python,javascript,php,java HlLimitsUpdate
