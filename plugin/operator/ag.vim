if exists('g:loaded_operator_ag')
  finish
endif

let g:operator_ag_cmd = 'Ag!'
call operator#user#define('ag', 'operator#ag#do')

let g:loaded_operator_ag = 1
