function! operator#ag#escape(word) abort "{{{
  return escape(a:word, '\[]*.?+{}()<>=/%$@')
endfunction "}}}

function! operator#ag#selection(motion_wise) "{{{
  let save_register = @a
	let v = operator#user#visual_command_from_wise_name(a:motion_wise)
  execute 'normal!' '`[' . v . '`]"ay'
  let selection = @a
  let @a = save_register
  if g:operator_ag_escape
    let selection = operator#ag#escape(operator#ag#escape(selection))
  endif
  return selection
endfunction "}}}

function! operator#ag#do(motion_wise) "{{{
  call feedkeys(':'.g:operator_ag_cmd.' '.operator#ag#selection(a:motion_wise))
endfunction "}}}

function! operator#ag#go(motion_wise) "{{{
  exe g:operator_ag_cmd.' '.operator#ag#selection(a:motion_wise)
endfunction "}}}

function! operator#ag#exact(motion_wise) "{{{
  exe g:operator_ag_cmd.' \\b'.operator#ag#selection(a:motion_wise).'\\b'
endfunction "}}}
