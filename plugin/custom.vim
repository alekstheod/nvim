function! Touch()
    let result=system('touch '.expand("%"))
endfunction

nnoremap <c-\> :call Touch()<CR>

function! SaveToVimClipboard(text)
    :call writefile([a:text], '/tmp/vim_clipboard', 'a')
endfunction

function! YankFilePath()
    :let path=expand('%')
    :let @+=join([path,  line(".")], ':')
    :call SaveToVimClipboard(path)
endfunction

function! YankToSystemClipboard()
    let text = GetVisualSelection()
    :call setreg('+', text)
    :call SaveToVimClipboard(text)
endfunction

function! GetVisualSelection()
    " Why is this not a built-in Vim script function?!
    let [line_start, column_start] = getpos("'<")[1:2]
    let [line_end, column_end] = getpos("'>")[1:2]
    let lines = getline(line_start, line_end)
    if len(lines) == 0
        return ''
    endif
    let lines[-1] = lines[-1][: column_end - (&selection == 'inclusive' ? 1 : 2)]
    let lines[0] = lines[0][column_start - 1:]
    return join(lines, "\n")
endfunction

function! TrimCwd(id, str)
    let cwd = getcwd()
    let trimed =  trim(a:str)
    let result = substitute(trim(a:str), cwd.'/', '', '')
    return result
endfunction

function! Paste(value)
    :call setreg('p', a:value)
    :norm "ppa
endfunction

function! Reverse(value)
    return join(reverse(split(a:value, '.\zs')), '')
endfunction
