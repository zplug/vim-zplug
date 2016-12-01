if version < 600
    syntax clear
elseif exists('b:current_syntax')
    finish
endif

" Extends zsh syntax highlight
runtime! syntax/zsh.vim

syntax iskeyword @,48-57,192-255,$,_,:,-

syn match zplugTags     "\(as\|at\|commit\|depth\|dir\|do\|file\|from\|frozen\|hook-build\|hook-load\|if\|ignore\|lazy\|nice\|of\|on\|rename-to\|use\|defer\)\ze:"
syn match zplugCommands "\<\%(zplug\|check\|clean\|clear\|info\|install\|list\|load\|status\|update\)\>[?!']\@!" display

hi def link zplugCommands  Statement
hi def link zplugTags      Type
hi def link zshPrecommand  NONE
hi def link zshTypes       NONE

let b:current_syntax = 'zplug'
