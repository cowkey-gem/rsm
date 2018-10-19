function! ReplaceSpringMessage(...)
    let a:old = @*
    if a:0 >= 1
        let a:str = a:1
    else
        let a:str = a:old
    endif
    execute ":normal diW"
    execute ":normal a" . "<spring:message code=\"" . a:str . "\" text=\"" . @* . "\" />"
    let @* = a:old
endfunction

command! -nargs=? ReplaceSpringMessage call ReplaceSpringMessage(<f-args>)
