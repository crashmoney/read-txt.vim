" READ.TXT SYNTAX
" ---------------

" don't load if another syntax file is already loaded
if exists("b:current_syntax")
 finish
endif

" SYNTAX MATCHES
syn match readDate    '(.*)'
syn match readOwned   '[#+@^]'
syn match readSeries  '\[.*\]'
syn match readComment '{.*}'
syn match readAuthor  '– .*' contains=readDate,readOwned,readSeries,readComment skipwhite

" SYNTAX HIGHLIGHTING
hi def link readDate    define
hi def link readOwned   constant
hi def link readSeries  statement
hi def link readComment identifier
hi def link readAuthor  comment

" set filetype
let b:current_syntax = "read"
