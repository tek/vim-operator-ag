vim-operator-ag
===============

## Usage

`map {lhs} <Plug>(operator-agg)`

Executing the `{lhs}` command followed by a motion like `iW` will ag the current directory for the text selected by the motion.

`map {lhs} <Plug>(operator-ag)`

This variant leaves vim in command-line mode, allowing you to specify a search path or additional `ag` parameters.

## Customization

`g:operator_ag_cmd = 'Ag!'`

The command to be executed.

`g:operator_ag_escape = 1`

Whether or not the selected text should be shellescaped.
This is necessary for `:Ag`, as its arguments are being passed to the shell as-is.
When using a different approach, e.g. via Unite, set this to 0.
