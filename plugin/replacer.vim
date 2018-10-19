function! ReplaceSpringMessage(str)
    let a:old = @*
    execute ":normal diW"
    execute ":normal a" . "<spring:message code=\"" . a:str . "\" text=\"" . @* . "\" />"
    let @* = a:old
endfunction

command! -nargs=1 ReplaceSpringMessage call ReplaceSpringMessage(<f-args>)
