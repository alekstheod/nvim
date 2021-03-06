function! StartVimspector(job_id, code, event) dict
    if a:code == 0
        close
        call vimspector#Launch()
    endif
endfun

" send gdb commands with '-exec <command>' in vimspector console window

let g:vimspector_enable_mappings = 'HUMAN'
let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools' ]
fun! GotoWindow(id)
    call win_gotoid(a:id)
    MaximizerToggle
endfun

nnoremap <leader>dbp <Plug>VimspectorToggleBreakpoint
nnoremap <leader>do <Plug>VimspectorRestart
nnoremap <leader>ds :VimspectorReset<CR>
nnoremap <leader>dso <Plug>VimspectorStepOver
nnoremap <leader>dco <Plug>VimspectorContinue
nnoremap <leader>dsi <Plug>VimspectorStepInto
nnoremap <leader>dev <Plug>VimspectorBalloonEval
nnoremap <leader>de :VimspectorEval
