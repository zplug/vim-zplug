if version < 600
    syntax clear
elseif exists('b:current_syntax')
    finish
endif

" Extends zsh syntax highlight.
runtime! syntax/zsh.vim

syn keyword zplugTags      as at commit depth dir do file from frozen hook-build hook-load if ignore lazy nice of on rename-to use
syn keyword zplugCommands  zplug check clean clear info install list load status update

hi def link zplugCommands  Operator
hi def link zplugTags      Type
" Clear 'command'
hi def link zshPrecommand  NONE
" Clear 'local'
hi def link zshTypes       NONE

let b:current_syntax = 'zplug'
