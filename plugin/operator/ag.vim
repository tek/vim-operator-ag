if exists('g:loaded_operator_ag')
  finish
endif

let g:operator_ag_cmd = 'Ag!'

call operator#user#define('ag', 'operator#ag#do')
call operator#user#define('agg', 'operator#ag#go')

let g:loaded_operator_ag = 1
