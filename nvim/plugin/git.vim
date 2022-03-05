"insert path
function! GetIssueNr()
	let branch_name = gitbranch#name()
	let tokens = split(branch_name, '/')
	let prefix = "Issue: CB-#"
	if (len(tokens) > 1 && matchstr(tokens[1], "[0-9][0-9]*") != "")
		return  prefix.tokens[1]
	endif
	return prefix
endfunction

nmap <leader>pc :call Paste(GetIssueNr())<CR>
nmap <leader>blame :Git blame<CR>
