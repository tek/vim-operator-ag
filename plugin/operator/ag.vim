if exists('g:loaded_operator_ag')
  finish
endif

let g:operator_ag_cmd = 'Ag!'

runtime autoload/operator/user.vim

if exists('*operator#user#define')
  call operator#user#define('ag', 'operator#ag#do')
  call operator#user#define('agg', 'operator#ag#go')
endif

let g:loaded_operator_ag = 1
