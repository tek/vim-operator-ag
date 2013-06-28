function! operator#ag#do(motion_wise) "{{{
  let temp = @a
	let v = operator#user#visual_command_from_wise_name(a:motion_wise)
  execute 'normal!' '`[' . v . '`]"ay' 
  call feedkeys(':'.g:operator_ag_cmd." '".@a."' ")
  let @a = temp
endfunction "}}}
