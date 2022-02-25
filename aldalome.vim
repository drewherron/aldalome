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

" X11 Palette
let s:X11 = {}
let s:X11.black           = [0, "#000000"]
let s:X11.maroon          = [1, "#800000"]
let s:X11.green           = [2, "#008000"]
let s:X11.olive           = [3, "#808000"]
let s:X11.navy            = [4, "#000080"]
let s:X11.purple          = [5, "#800080"]
let s:X11.teal            = [6, "#008080"]
let s:X11.silver          = [7, "#c0c0c0"]
let s:X11.gray            = [8, "#808080"]
let s:X11.red             = [9, "#ff0000"]
let s:X11.lime            = [10, "#00ff00"]
let s:X11.yellow          = [11, "#ffff00"]
let s:X11.blue            = [12, "#0000ff"]
let s:X11.fuchsia         = [13, "#ff00ff"]
let s:X11.aqua            = [14, "#00ffff"]
let s:X11.white           = [15, "#ffffff"]

" CGA Palette
let s:CGA = {}
let s:CGA.black           = [0, "#000000"]
let s:CGA.blue            = [19, "#0000aa"]
let s:CGA.green           = [34, "#00aa00"]
let s:CGA.cyan            = [37, "#00aaaa"]
let s:CGA.red             = [124, "#aa0000"]
let s:CGA.magenta         = [127, "#aa00aa"]
let s:CGA.brown           = [130, "#aa5500"]
let s:CGA.lgray           = [248, "#aaaaaa"]
let s:CGA.dgray           = [240, "#555555"]
let s:CGA.lblue           = [63, "#5555ff"]
let s:CGA.lgreen          = [83, "#55ff55"]
let s:CGA.lcyan           = [87, "#55ffff"]
let s:CGA.lred            = [203, "#ff5555"]
let s:CGA.lmagenta        = [206, "#ff55ff"]
let s:CGA.yellow          = [227, "#ffff55"]
let s:CGA.white           = [15, "#ffffff"]

" Apple II palette
let s:apple = {}
let s:apple.black         = [0, "#000000"]
let s:apple.red           = [196, "#dd0033"]
let s:apple.dblue         = [18, "#000099"]
let s:apple.purple        = [165, "#dd22dd"]
let s:apple.dgreen        = [2, "#007722"]
let s:apple.gray1         = [241, "#555555"]
let s:apple.mblue         = [12, "#2222ff"]
let s:apple.lblue         = [75, "#66aaff"]
let s:apple.brown         = [94, "#885500"]
let s:apple.orange        = [208, "#ff6600"]
let s:apple.gray2         = [249, "#aaaaaa"]
let s:apple.pink          = [210, "#ff9988"]
let s:apple.lgreen        = [10, "#11dd00"]
let s:apple.yellow        = [11, "#ffff00"]
let s:apple.aqua          = [49, "#44ff99"]
let s:apple.white         = [15, "#ffffff"]

" Apple II palette
let s:custom = {}
let s:custom.black         = [0, "#000000"]

" Shades of monochromatic phosphor green
" 1=darkest    f=lightest 
" TODO Redo this
" Probably too dark to be useful
" Really you only need like 5
" Or do I need this at all? I should be fine with one lime green and one regular green...
let s:green = {}
let s:green.1             = [0, "#00340c"]
let s:green.2             = [0, "#045514"]
let s:green.3             = [0, "#045d14"]
let s:green.4             = [0, "#048620"]
let s:green.5             = [0, "#049220"]
let s:green.6             = [0, "#08ba2c"]
let s:green.7             = [0, "#08c72c"]
let s:green.8             = [0, "#048a20"]
let s:green.9             = [0, "#08a224"]
let s:green.a             = [0, "#08c32c"]
let s:green.b             = [0, "#08cb30"]
let s:green.c             = [0, "#0be734"]
let s:green.d             = [0, "#0bef38"]
let s:green.e             = [0, "#24ff51"]
let s:green.f             = [0, "#b5ffc3"]

" TODO Shades of monochromatic phosphor amber
" 1=darkest    f=lightest 
let s:amber = {}
let s:amber.1             = [0, ""]
let s:amber.2             = [0, ""]
let s:amber.3             = [0, ""]
let s:amber.4             = [0, ""]
let s:amber.5             = [0, ""]
let s:amber.6             = [0, ""]
let s:amber.7             = [0, ""]
let s:amber.8             = [0, ""]
let s:amber.9             = [0, ""]

" Phosphors
let s:P = {}
let s:P.bg                = [235, "#262626"] " Dark gray
let s:P.P1                = [10, "#33ff33"]  " Lime Green
let s:P.P24               = [83, "#66ff66"]  " Pale Green
let s:P.502               = [84, "#00ff66"]  " Pale Green
let s:P.506               = [10, "#00ff33"]  " Lime Green
let s:P.524               = [82, "#33ff00"]  " Lime Green
let s:P.593               = [220, "#ffcc00"] " Light Amber
let s:P.P3                = [214, "#ffb000"] " Amber (600nm)
let s:P.white             = [15, "#f3f9f9"] " Barely blueish white
let s:P.lblue             = [14, "#68f5f8"] " Blueish white

" Everything Else
let s:other = {}
let s:other.none          = ['NONE', 'NONE']


    """"""""""""""""""""""""""""""""
    "       Color assignments      "     
    """"""""""""""""""""""""""""""""

" Create groups   ( Group,        fg,               bg,              term )
call s:CreateGroup('Normal',      s:P.P1,           s:CGA.black,  'NONE')
call s:CreateGroup('Comment',     s:CGA.green,      s:CGA.black,  'NONE')
call s:CreateGroup('Constant',    s:CGA.lcyan,      s:CGA.black,  'UNDERCURL')
call s:CreateGroup('Conditional', s:P.P3,           s:CGA.black,  'UNDERCURL')
call s:CreateGroup('Define',      s:CGA.red,        s:CGA.black,  'REVERSE')
call s:CreateGroup('Error',       s:CGA.red,        s:CGA.black,  'REVERSE')
call s:CreateGroup('Exception',   s:CGA.red,        s:CGA.black,  'REVERSE')
call s:CreateGroup('Function',    s:P.P3,           s:CGA.black,  'NONE')
call s:CreateGroup('Ignore',      s:CGA.white,      s:CGA.red,    'NONE')
call s:CreateGroup('Identifier',  s:P.P3,           s:CGA.black,  'NONE')
call s:CreateGroup('LineNr',      s:CGA.dgray,      s:CGA.black,  'NONE')
call s:CreateGroup('Number',      s:CGA.lcyan,      s:CGA.black,  'NONE')
"call s:CreateGroup('Operator',    s:CGA.yellow,      s:CGA.black,  'BOLD')
call s:CreateGroup('PreProc',     s:CGA.red,        s:CGA.black,  'NONE')
call s:CreateGroup('Repeat',      s:P.P3,           s:CGA.black,  'NONE')
call s:CreateGroup('Special',     s:CGA.lblue,      s:CGA.black,  'NONE')
call s:CreateGroup('Statement',   s:P.P3,           s:CGA.black,  'BOLD')
call s:CreateGroup('String',      s:CGA.lmagenta,   s:CGA.black,  'NONE')
call s:CreateGroup('Todo',        s:CGA.blue,       s:CGA.yellow, 'STANDOUT')
call s:CreateGroup('Type',        s:P.P3,           s:CGA.black,  'BOLD')
call s:CreateGroup('vimParenSep', s:CGA.lcyan,      s:CGA.black,  'NONE')
call s:CreateGroup('vimSep',      s:CGA.lcyan,      s:CGA.black,  'NONE')

call s:CreateGroup('Pmenu',       s:CGA.lgreen,     s:CGA.dgray,  'NONE')
call s:CreateGroup('PmenuSel',    s:CGA.black,      s:P.P1,       'NONE')

" Diff
call s:CreateGroup('DiffAdd',     s:CGA.blue,       s:CGA.lgreen, 'NONE')
call s:CreateGroup('DiffChange',  s:CGA.yellow,     s:CGA.blue,   'NONE')
call s:CreateGroup('DiffDelete',  s:CGA.white,      s:CGA.red,    'NONE')
call s:CreateGroup('DiffText',    s:CGA.white,      s:CGA.red,    'NONE')

" Link groups   ( Subgroup,     Parent)
call s:LinkGroup('Operator',   'Normal')
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
