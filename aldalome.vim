"  
"    db         db                    .dP"Yb         .dP'
" db    db   db    db                dP'   d'       dP'
" 
"   'Yb   `Y888888888b. `Y8888888b.   'Yb    `Yb d88b d88b    
"    88      .dP'          .dP'        88     88P   88   8b   
"    88      Y8          ,dP           88     88    8P   88   
"   .8P      `Y888d,     88            88     88  .dP  .dP    
"                  8b    Y8     .      88    .888888888888b.
"           'Yb....dP    `Yb...dP      88
"             `""""'       `"""'      .8P
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" File:             aldalome.vim                         ""
"" Author:           Drew Herron                          ""
"" Email:            dherron@pdx.edu                      ""
"" Source:           github.com/drewherron/aldalome       ""
"" License:          MIT                                  ""
"" Created:          22FEB22                              ""
"" Last Modified:    24FEB22                              ""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Easy way to check your current colorscheme:
" :so $VIMRUNTIME/syntax/hitest.vim
"
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

    """"""""""""""""""""""""""""""""
    "       Color definitions      "     
    """"""""""""""""""""""""""""""""

" CGA RGBI Palette
let s:CGA = {}
let s:CGA.black       = [0, "#000000"]
let s:CGA.blue        = [19, "#0000aa"]
let s:CGA.green       = [34, "#00aa00"]
let s:CGA.cyan        = [37, "#00aaaa"]
let s:CGA.red         = [124, "#aa0000"]
let s:CGA.magenta     = [127, "#aa00aa"]
let s:CGA.brown       = [130, "#aa5500"]
let s:CGA.lgray       = [248, "#aaaaaa"]
let s:CGA.dgray       = [240, "#555555"]
let s:CGA.lblue       = [63, "#5555ff"]
let s:CGA.lgreen      = [83, "#55ff55"]
let s:CGA.lcyan       = [87, "#55ffff"]
let s:CGA.lred        = [203, "#ff5555"]
let s:CGA.lmagenta    = [206, "#ff55ff"]
let s:CGA.yellow      = [227, "#ffff55"]
let s:CGA.white       = [15, "#ffffff"]

" X11 Palette
let s:X11 = {}
let s:X11.black       = [0, "#000000"]
let s:X11.maroon      = [1, "#800000"]
let s:X11.green       = [2, "#008000"]
let s:X11.olive       = [3, "#808000"]
let s:X11.navy        = [4, "#000080"]
let s:X11.purple      = [5, "#800080"]
let s:X11.teal        = [6, "#008080"]
let s:X11.silver      = [7, "#c0c0c0"]
let s:X11.gray        = [8, "#808080"]
let s:X11.red         = [9, "#ff0000"]
let s:X11.lime        = [10, "#00ff00"]
let s:X11.yellow      = [11, "#ffff00"]
let s:X11.blue        = [12, "#0000ff"]
let s:X11.fuchsia     = [13, "#ff00ff"]
let s:X11.aqua        = [14, "#00ffff"]
let s:X11.white       = [15, "#ffffff"]

" Apple II palette
let s:apple = {}
let s:apple.black     = [0, "#000000"]
let s:apple.red       = [196, "#dd0033"]
let s:apple.dblue     = [18, "#000099"]
let s:apple.purple    = [165, "#dd22dd"]
let s:apple.dgreen    = [2, "#007722"]
let s:apple.gray1     = [241, "#555555"]
let s:apple.mblue     = [12, "#2222ff"]
let s:apple.lblue     = [75, "#66aaff"]
let s:apple.brown     = [94, "#885500"]
let s:apple.orange    = [208, "#ff6600"]
let s:apple.gray2     = [249, "#aaaaaa"]
let s:apple.pink      = [210, "#ff9988"]
let s:apple.lgreen    = [10, "#11dd00"]
let s:apple.yellow    = [11, "#ffff00"]
let s:apple.aqua      = [49, "#44ff99"]
let s:apple.white     = [15, "#ffffff"]

" Phosphors
" Numbers correspond to brightness/intensity on a monochrome monitor
" Higher number is lighter

" P1 - 525nm
" TODO fix term numbers
let s:P1 = {}
let s:P1.0     = [10, "#2c9900"]
let s:P1.1     = [10, "#34b300"]
let s:P1.2     = [10, "#3bcc00"]
let s:P1.3     = [10, "#43e600"]
let s:P1.4     = [10, "#4aff00"] "peak
let s:P1.5     = [10, "#5cff1a"]
let s:P1.6     = [10, "#6eff33"]
let s:P1.7     = [10, "#80ff4d"]
let s:P1.8     = [10, "#a4ff7f"]
let s:P1.9     = [10, "#c8ffb2"]

" P3 - 602nm
" TODO fix term numbers
let s:P3 = {}
let s:P3.0     = [208, "#996d00"]
let s:P3.1     = [208, "#b38000"]
let s:P3.2     = [208, "#cc9200"]
let s:P3.3     = [208, "#e6a500"]
let s:P3.4     = [208, "#ffb700"] "peak
let s:P3.5     = [208, "#ffbe1a"]
let s:P3.6     = [208, "#ffc533"]
let s:P3.7     = [208, "#ffcd4d"]
let s:P3.8     = [208, "#ffd366"]
let s:P3.9     = [208, "#ffe299"]

" P5 - 430nm
" TODO fix term numbers
let s:P5 = {}
let s:P5.0     = [12, "#240099"]
let s:P5.1     = [12, "#2b00b3"]
let s:P5.2     = [12, "#3100cc"]
let s:P5.3     = [12, "#3700e6"]
let s:P5.4     = [12, "#3d00ff"] "peak
let s:P5.5     = [12, "#5019ff"]
let s:P5.6     = [12, "#774cff"]
let s:P5.7     = [12, "#8a66ff"]
let s:P5.8     = [12, "#9e7fff"]
let s:P5.9     = [12, "#b19aff"]
let s:P5.a     = [12, "#c4b2ff"]
let s:P5.b     = [12, "#d8ccff"]
let s:P5.c     = [12, "#dfd6ff"]
let s:P5.d     = [12, "#e7e0ff"]
let s:P5.e     = [12, "#efeaff"]

" Everything Else
let s:other = {}
let s:other.P12    = [220, "#ffdf00"]
let s:other.502    = [84, "#00ff66"]
let s:other.506    = [10, "#00ff33"]
let s:other.524    = [82, "#33ff00"]
let s:other.P1a    = [14, "#25e481"]
let s:other.P24    = [83, "#66ff66"]
let s:other.none   = ['NONE', 'NONE']


    """"""""""""""""""""""""""""""""
    "       Color assignments      "     
    """"""""""""""""""""""""""""""""

" Create groups   ( Group,            fg,               bg,              term )
call s:CreateGroup('Normal',          s:P1.3,           s:CGA.black,  'NONE')
call s:CreateGroup('Comment',         s:CGA.lgray,      s:CGA.black,  'NONE')
call s:CreateGroup('Constant',        s:P1.3,      s:CGA.black,  'NONE')
call s:CreateGroup('Conditional',     s:P3.4,           s:CGA.black,  'UNDERCURL')
call s:CreateGroup('Define',          s:CGA.lred,       s:CGA.black,  'REVERSE')
call s:CreateGroup('Error',           s:CGA.red,        s:CGA.black,  'REVERSE')
call s:CreateGroup('Exception',       s:CGA.red,        s:CGA.black,  'REVERSE')
call s:CreateGroup('Function',        s:P3.4,           s:CGA.black,  'NONE')
call s:CreateGroup('Ignore',          s:CGA.white,      s:CGA.red,    'NONE')
call s:CreateGroup('Identifier',      s:P3.4,           s:CGA.black,  'NONE')
call s:CreateGroup('LineNr',          s:CGA.dgray,      s:CGA.black,  'NONE')
call s:CreateGroup('Number',          s:P5.6,           s:CGA.black,  'NONE')
"call s:CreateGroup('Operator',        s:CGA.yellow,     s:CGA.black,  'BOLD')
call s:CreateGroup('PreProc',         s:CGA.lcyan,       s:CGA.black,  'NONE')
call s:CreateGroup('Repeat',          s:P3.4,           s:CGA.black,  'NONE')
call s:CreateGroup('Special',         s:P5.4,           s:CGA.black,  'NONE')
call s:CreateGroup('Statement',       s:P3.4,           s:CGA.black,  'BOLD')
call s:CreateGroup('String',          s:CGA.lmagenta,   s:CGA.black,  'NONE')
call s:CreateGroup('Todo',            s:CGA.blue,       s:CGA.yellow, 'STANDOUT')
call s:CreateGroup('Type',            s:P3.4,           s:CGA.black,  'BOLD')
call s:CreateGroup('vimParenSep',     s:CGA.lcyan,      s:CGA.black,  'NONE')
call s:CreateGroup('vimSep',          s:CGA.lcyan,      s:CGA.black,  'NONE')

call s:CreateGroup('Pmenu',           s:CGA.lgreen,     s:CGA.dgray,  'NONE')
call s:CreateGroup('PmenuSel',        s:CGA.black,      s:P1.4,       'NONE')

" Borders
call s:CreateGroup('FoldColumn',      s:CGA.black,      s:CGA.black,  'NONE')
call s:CreateGroup('SignColumn',      s:CGA.green,      s:CGA.black,  'NONE')
call s:CreateGroup('StatusLine',      s:CGA.green,      s:CGA.black,  'BOLD')
call s:CreateGroup('StatusLineNC',    s:CGA.green,      s:CGA.black,  'BOLD')
call s:CreateGroup('VertSplit',       s:CGA.green,      s:CGA.black,  'NONE')

" Diff
call s:CreateGroup('DiffAdd',         s:CGA.black,      s:CGA.green,  'NONE')
call s:CreateGroup('DiffChange',      s:CGA.yellow,     s:CGA.blue,   'NONE')
call s:CreateGroup('DiffDelete',      s:CGA.white,      s:CGA.red,    'NONE')
call s:CreateGroup('DiffText',        s:CGA.white,      s:CGA.red,    'NONE')

" Link groups   ( Subgroup,           Parent)
call s:LinkGroup('Operator',         'Normal')
call s:LinkGroup('WarningMsg',       'Error')
call s:LinkGroup('vimCommentString', 'Comment')
call s:LinkGroup('vimCommentTitle',  'Comment')

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
