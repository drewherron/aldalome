"  
"    db         db                   .dP"Yb         .dP'
" db    db   db    db               dP'   d'       dP'
" 
"   'Yb   `Y888888888b. `Y8888888b.   'Yb    `Yb d88b d88b    
"    88      .dP'          .dP'        88     88P   88   8b   
"    88      Y8          ,dP           88     88    8P   88   
"   .8P      `Y888d,     88            88     88  .dP  .dP    
"                  8b    Y8     .      88    .888888888888b.
"           'Yb....dP    `Yb...dP      88
"             `""""'       `"""'      .8P
" 
" 
" https://github.com/drewherron/aldalome

" Obviously not done yet
" Just beginning, actually

" Init
hi clear

set background=dark

if exists('syntax on')
    syntax reset
endif

let g:colors_name='aldalome'

" Function to create highlight groups
function! s:CreateGroup(group, fg, bg, term)
  execute join([ 'hi',
          \ a:group,
          \ 'ctermfg=' . a:fg[0],
          \ 'ctermbg=' . a:bg[0],
          \ 'guifg='   . a:fg[1],
          \ 'guibg='   . a:bg[1],
          \ 'gui='     . a:term[:-1],
          \ 'cterm='   . a:term[:-1],
          \ ], ' ')
endfunction

" Function to link groups
function! s:LinkGroup(left, right)
  execute join(['hi', 'clear', a:left], ' ')
  execute join(['hi', 'link', a:left, a:right], ' ')
endfunction

" Define colors
let s:color = {}

let s:color.none            = ['NONE', 'NONE']
let s:color.black           = [0, "#000000"]
let s:color.maroon          = [1, "#800000"]
let s:color.green           = [2, "#008000"]
let s:color.olive           = [3, "#808000"]
let s:color.navy            = [4, "#000080"]
let s:color.purple          = [5, "#800080"]
let s:color.teal            = [6, "#008080"]
let s:color.silver          = [7, "#c0c0c0"]
let s:color.grey            = [8, "#808080"]
let s:color.red             = [9, "#ff0000"]
let s:color.lime            = [10, "#00ff00"]
let s:color.yellow          = [11, "#ffff00"]
let s:color.blue            = [12, "#0000ff"]
let s:color.fuchsia         = [13, "#ff00ff"]
let s:color.aqua            = [14, "#00ffff"]
let s:color.white           = [15, "#ffffff"]

" P
let s:color.apple         = [16, "#33ff33"]
let s:color.amber         = [17, "#ffb000"]
let s:color.tbd18           = [18, "#000000"]
let s:color.tbd19           = [19, "#000000"]
let s:color.tbd20           = [20, "#000000"]
let s:color.tbd21           = [21, "#000000"]
let s:color.tbd22           = [22, "#000000"]
let s:color.tbd23           = [23, "#000000"]
let s:color.tbd24           = [24, "#000000"]
let s:color.tbd25           = [25, "#000000"]
let s:color.tbd26           = [26, "#000000"]
let s:color.tbd27           = [27, "#000000"]
let s:color.tbd28           = [28, "#000000"]
let s:color.tbd29           = [29, "#000000"]
let s:color.tbd30           = [30, "#000000"]
let s:color.tbd31           = [31, "#000000"]
let s:color.tbd32           = [32, "#000000"]
let s:color.tbd33           = [33, "#000000"]
let s:color.tbd34           = [34, "#000000"]
let s:color.tbd35           = [35, "#000000"]
let s:color.tbd36           = [36, "#000000"]
let s:color.tbd37           = [37, "#000000"]
let s:color.tbd38           = [38, "#000000"]
let s:color.tbd39           = [39, "#000000"]
let s:color.tbd40           = [40, "#000000"]
let s:color.tbd41           = [41, "#000000"]
let s:color.tbd42           = [42, "#000000"]
let s:color.tbd43           = [43, "#000000"]
let s:color.tbd44           = [44, "#000000"]
let s:color.tbd45           = [45, "#000000"]
let s:color.tbd46           = [46, "#000000"]
let s:color.tbd47           = [47, "#000000"]
let s:color.tbd48           = [48, "#000000"]
let s:color.tbd49           = [49, "#000000"]
let s:color.tbd50           = [50, "#000000"]

" Apple II palette
let s:apple = {}
let s:apple.black           = [0, "#000000"]
let s:apple.red             = [196, "#dd0033"]
let s:apple.dblue           = [18, "#000099"]
let s:apple.purple          = [165, "#dd22dd"]
let s:apple.dgreen          = [2, "#007722"]
let s:apple.gray1           = [241, "#555555"]
let s:apple.mblue           = [12, "#2222ff"]
let s:apple.lblue           = [75, "#66aaff"]
let s:apple.brown           = [94, "#885500"]
let s:apple.orange          = [208, "#ff6600"]
let s:apple.gray2           = [249, "#aaaaaa"]
let s:apple.pink            = [210, "#ff9988"]
let s:apple.lgreen          = [10, "#11dd00"]
let s:apple.yellow          = [11, "#ffff00"]
let s:apple.aqua            = [49, "#44ff99"]
let s:apple.white           = [15, "#ffffff"]


" Create groups   ( Group,        fg,               bg,              term )
call s:CreateGroup('Normal',      s:color.apple,   s:color.black,  'NONE')
call s:CreateGroup('Comment',     s:color.amber,     s:color.black,  'NONE')
call s:CreateGroup('Constant',    s:color.fuchsia,  s:color.black,  'UNDERCURL')
call s:CreateGroup('Conditional', s:color.fuchsia,  s:color.black,  'UNDERCURL')
call s:CreateGroup('Define',      s:color.red,      s:color.black,  'REVERSE')
call s:CreateGroup('Error',       s:color.red,      s:color.black,  'REVERSE')
call s:CreateGroup('Exception',   s:color.red,      s:color.black,  'REVERSE')
call s:CreateGroup('Function',    s:color.amber,    s:color.black,  'NONE')
call s:CreateGroup('Ignore',      s:color.white,    s:color.red,    'NONE')
call s:CreateGroup('Identifier',  s:color.aqua,     s:color.black,  'NONE')
call s:CreateGroup('LineNr',      s:apple.gray2,     s:color.black,  'NONE')
call s:CreateGroup('Number',      s:color.grey,     s:color.black,  'NONE')
call s:CreateGroup('Operator',    s:color.red,      s:color.black,  'NONE')
call s:CreateGroup('PreProc',     s:color.aqua,     s:color.black,  'NONE')
call s:CreateGroup('Repeat',      s:color.white,    s:color.black,  'NONE')
call s:CreateGroup('Special',     s:apple.gray1,   s:color.black,  'NONE')
call s:CreateGroup('Statement',   s:color.yellow,   s:color.black,  'BOLD')
call s:CreateGroup('String',      s:apple.red,   s:color.black,  'NONE')
call s:CreateGroup('Todo',        s:color.blue,     s:color.yellow, 'STANDOUT')
call s:CreateGroup('Type',        s:color.white,    s:color.black,  'UNDERLINE')

" Diff

" Link groups
call s:LinkGroup('WarningMsg', 'Error')

""""""""""""""
"   Python   "
""""""""""""""
"" These are the defaults:
"call s:LinkGroup('pythonStatement', 'Statement')
"call s:LinkGroup('pythonConditional', 'Conditional')
"call s:LinkGroup('pythonRepeat', 'Repeat')
"call s:LinkGroup('pythonOperator', 'Operator')
"call s:LinkGroup('pythonException', 'Exception')
"call s:LinkGroup('pythonInclude', 'Include')
"call s:LinkGroup('pythonAsync',	 'Statement')
"call s:LinkGroup('pythonDecorator', 'Define')
"call s:LinkGroup('pythonDecoratorName', 'Function')
"call s:LinkGroup('pythonFunction', 'Function')
"call s:LinkGroup('pythonComment', 'Comment')
"call s:LinkGroup('pythonTodo',	 'Todo')
"call s:LinkGroup('pythonString', 'String')
"call s:LinkGroup('pythonRawString', 'String')
"call s:LinkGroup('pythonQuotes', 'String')
"call s:LinkGroup('pythonTripleQuotes', 'pythonQuotes')
"call s:LinkGroup('pythonEscape', 'Special')
"call s:LinkGroup('pythonNumber', 'Number')
"call s:LinkGroup('pythonBuiltin', 'Function')
"call s:LinkGroup('pythonExceptions', 'Structure')
"call s:LinkGroup('pythonSpaceError', 'Error')
"call s:LinkGroup('pythonDoctest', 'Special')
"call s:LinkGroup('pythonDoctestValue' 'Define')

"""""""""""""
"    C++    "
"""""""""""""
"" These are the defaults:
"call s:LinkGroup('cppStatement', 'Statement')
"call s:LinkGroup('cppAccess', 'Statement')
"call s:LinkGroup('cppCast', 'Statement')
"call s:LinkGroup('cppOperator', 'Operator')
"call s:LinkGroup('cppStructure', 'Structure')
"call s:LinkGroup('cppBoolean', 'Boolean')
"call s:LinkGroup('cppType', 'Type')
"call s:LinkGroup('cppModifier', 'Type')
"call s:LinkGroup('cppExceptions', 'Exception')
"call s:LinkGroup('cppStorageClass', 'StorageClass')
"call s:LinkGroup('cppConstant', 'Constant')
"call s:LinkGroup('cppRawString', 'String')
"call s:LinkGroup('cppRawStringDelimiter', 'Delimiter')
"call s:LinkGroup('cppNumber', 'Number')



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""               C
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" hmmmm

"Comment
"Error
"Float
"Todo
"Type
"SpecialChar
"String
"Operator
"Structure
"StorageClass
"PreCondit
"Include
"PreProc
"Number
"Macro
"Label
"Conditional
"Repeat
"Character
"Constant
