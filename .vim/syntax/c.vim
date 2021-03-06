" ==============================================================================
" Vim syntax file
" Language:        C Additions
" Original Author: Mikhail Wolfson <mywolfson@gmail.com>
"                  http://www.vim.org/scripts/script.php?script_id=3064
" Maintainer:      bfrg <bfrg@users.noreply.github.com>
" Website:         https://github.com/bfrg/vim-cpp-modern
" Last Change:     Mar 14, 2020
"
" Extended C syntax highlighting including highlighting of user-defined
" functions.
"
" This syntax file is based on:
" https://github.com/octol/vim-cpp-enhanced-highlight
" ==============================================================================

syn match cUserFunction "\<\h\w*\>\(\s\|\n\)*("me=e-1 contains=cParen
hi def link cUserFunction Function

hi link cStorageClass Statement
hi link cStructure Statement
hi link cLabel Statement

syn match cOperator "\(<<\|>>\|[-+*/%&^|<>!=]\)="
syn match cOperator "<<\|>>\|&&\|||\|++\|--\|->"
syn match cOperator "[.!~*&%<>^|=,+-]"
syn match cOperator "/[^/*=]"me=e-1
syn match cOperator "/$"
syn match cOperator "&&\|||"

syn keyword cBoolean true false TRUE FALSE
hi def link cBoolean  Boolean

syn keyword cDefined defined contained containedin=cDefine
hi def link cDefined cDefine
