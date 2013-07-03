function! s:selection(motion_wise) "{{{
  let save_register = @a
	let v = operator#user#visual_command_from_wise_name(a:motion_wise)
  execute 'normal!' '`[' . v . '`]"ay' 
  let selection = @a
  let @a = save_register
  return selection
endfunction "}}}

function! operator#ag#do(motion_wise) "{{{
  call feedkeys(':'.g:operator_ag_cmd." '".s:selection(a:motion_wise)."' ")
endfunction "}}}

function! operator#ag#go(motion_wise) "{{{
  exe g:operator_ag_cmd."''".s:selection(a:motion_wise)."''"
endfunction "}}}
