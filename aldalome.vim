" Name ideas
" Aldalome (tree-twilight, a name of fangorn forest, the darkness under the trees)
" Laiqua (green in Quenya)
" Laerim (Green elves)
" Denethor (was king of the green elves)
" Calenmor/Morcalen (black green)
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

let s:color.tbd16           = [16, "#000000"]
let s:color.tbd17           = [17, "#000000"]
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

" Create groups   ( Group,      fg,           bg,    term  )
call s:CreateGroup('Normal',    s:color.lime, s:color.black, 'NONE')
call s:CreateGroup('Comment',   s:color.aqua, s:color.black, 'NONE')
call s:CreateGroup('Constant',  s:color.fuchsia, s:color.black, 'UNDERCURL')
call s:CreateGroup('Error',     s:color.red, s:color.black, 'REVERSE')
call s:CreateGroup('Function',  s:color.white, s:color.black, 'NONE')
call s:CreateGroup('Ignore',    s:color.white, s:color.red, 'NONE')
call s:CreateGroup('Identifier',s:color.aqua, s:color.black, 'NONE')
call s:CreateGroup('LineNr',    s:color.grey, s:color.black, 'NONE')
call s:CreateGroup('Operator',  s:color.red, s:color.black, 'NONE')
call s:CreateGroup('PreProc',   s:color.aqua, s:color.black, 'NONE')
call s:CreateGroup('Repeat',    s:color.white, s:color.black, 'NONE')
call s:CreateGroup('Special',   s:color.purple, s:color.black, 'NONE')
call s:CreateGroup('Statement', s:color.yellow, s:color.black, 'BOLD')
call s:CreateGroup('Todo',      s:color.blue, s:color.yellow, 'STANDOUT')
call s:CreateGroup('Type',      s:color.white, s:color.black, 'UNDERLINE')


" Link groups
call s:LinkGroup('WarningMsg', 'Error')

"""""""""""""""""
"    Syntax     "
"""""""""""""""""
" These were pulled straight out of the syntax files
" Just to have a list of group names I need


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"               Python
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Statement
"Conditional
"Repeat
"Operator
"Exception
"Include
"Statement
"Define
"Function
"Comment
"Todo
"String
"pythonQuotes
"Special
"Number
"Structure
"Error
"
"" Statement
"False None True
"as assert break continue del exec global
"lambda nonlocal pass print return with yield
"class def nextgroup=pythonFunction skipwhite
"async await
"" Conditional
"elif else if
"" Repeat
"for while
"" Operator
"and in is not or
"" Include
"from import
"" Define
""@" display contained
"" Function
""@\s*\h\%(\w\|\.\)*" display contains=pythonDecorator
""\h\w*" display contained
"" Comment
""#.*$" contains=pythonTodo,@Spell
"" Todo
"FIXME NOTE NOTES TODO XXX contained
"
"" String
"pythonString 
"pythonQuotes
"pythonRawString 
"pythonTripleQuotes
"syn region  pythonString pythonString matchgroup=pythonQuotes
"      \ start=+[uU]\=\z(['"]\)+ end="\z1" skip="\\\\\|\\\z1"
"      \ contains=pythonEscape,@Spell
"syn region  pythonString matchgroup=pythonTripleQuotes
"      \ start=+[uU]\=\z('''\|"""\)+ end="\z1" keepend
"      \ contains=pythonEscape,pythonSpaceError,pythonDoctest,@Spell
"syn region  pythonRawString matchgroup=pythonQuotes
"      \ start=+[uU]\=[rR]\z(['"]\)+ end="\z1" skip="\\\\\|\\\z1"
"      \ contains=@Spell
"syn region  pythonRawString matchgroup=pythonTripleQuotes
"      \ start=+[uU]\=[rR]\z('''\|"""\)+ end="\z1" keepend
"      \ contains=pythonSpaceError,pythonDoctest,@Spell
"" Special
"+\\[abfnrtv'"\\]+ contained
""\\\o\{1,3}" contained
""\\x\x\{2}" contained
""\%(\\u\x\{4}\|\\U\x\{8}\)" contained
""\\N{\a\+\%(\s\a\+\)*}" contained
""\\$"
"" Number
""\<0[oO]\=\o\+[Ll]\=\>"
""\<0[xX]\x\+[Ll]\=\>"
""\<0[bB][01]\+[Ll]\=\>"
""\<\%([1-9]\d*\|0\)[Ll]\=\>"
""\<\d\+[jJ]\>"
""\<\d\+[eE][+-]\=\d\+[jJ]\=\>"
"\ "\<\d\+\.\%([eE][+-]\=\d\+\)\=[jJ]\=\%(\W\|$\)\@="
"\ "\%(^\|\W\)\zs\d*\.\d\+\%([eE][+-]\=\d\+\)\=[jJ]\=\>"
"
"" Function
"False True None
"NotImplemented Ellipsis __debug__
"abs all any bin bool bytearray callable chr
"classmethod compile complex delattr dict dir
"frozenset getattr globals hasattr hash
"help hex id input int isinstance
"issubclass iter len list locals map max
"memoryview min next object oct open ord pow
"print property range repr reversed round set
"setattr slice sorted staticmethod str
"sum super tuple type vars zip __import__
"basestring cmp execfile file
"long raw_input reduce reload unichr
"unicode xrange
"ascii bytes exec
"apply buffer coerce intern
"" avoid highlighting attributes as builtins
"/\.\h\w*/hs=s+1
"contains=ALLBUT,pythonBuiltin,pythonFunction,pythonAsync
"transparent
"
"" Exception
"except finally raise try
"" Structure
"BaseException Exception
"ArithmeticError BufferError
"LookupError
"EnvironmentError StandardError
"AssertionError AttributeError
"EOFError FloatingPointError GeneratorExit
"ImportError IndentationError
"IndexError KeyError KeyboardInterrupt
"MemoryError NameError NotImplementedError
"OSError OverflowError ReferenceError
"RuntimeError StopIteration SyntaxError
"SystemError SystemExit TabError TypeError
"UnboundLocalError UnicodeError
"UnicodeDecodeError UnicodeEncodeError
"UnicodeTranslateError ValueError
"ZeroDivisionError
"BlockingIOError BrokenPipeError
"ChildProcessError ConnectionAbortedError
"ConnectionError ConnectionRefusedError
"ConnectionResetError FileExistsError
"FileNotFoundError InterruptedError
"IsADirectoryError NotADirectoryError
"PermissionError ProcessLookupError
"RecursionError StopAsyncIteration
"TimeoutError
"IOError VMSError WindowsError
"BytesWarning DeprecationWarning FutureWarning
"ImportWarning PendingDeprecationWarning
"RuntimeWarning SyntaxWarning UnicodeWarning
"UserWarning Warning
"ResourceWarning
"
"" Error
"display excludenl "\s\+$"
"display " \+\t"
"display "\t\+ "
"
"" Doctest, I don't get it just ignore for now
"" Do not spell doctests inside strings.
"" Notice that the end of a string, either ''', or """, will end the contained
"" doctest too.  Thus, we do *not* need to have it as an end pattern.
"if !exists("python_no_doctest_highlight")
"  if !exists("python_no_doctest_code_highlight")
"    syn region pythonDoctest
"	  \ start="^\s*>>>\s" end="^\s*$"
"	  \ contained contains=ALLBUT,pythonDoctest,pythonFunction,@Spell
"    syn region pythonDoctestValue
"	  \ start=+^\s*\%(>>>\s\|\.\.\.\s\|"""\|'''\)\@!\S\++ end="$"
"	  \ contained
"  else
"    syn region pythonDoctest
"	  \ start="^\s*>>>" end="^\s*$"
"	  \ contained contains=@NoSpell
"  endif
"endif
"
"" Sync at the beginning of class, function, or method definition.
"syn sync match pythonSync grouphere NONE "^\%(def\|class\)\s\+\h\w*\s*[(:]"
"
"" The default highlight links.  Can be overridden later.
"hi def link pythonStatement		Statement
"hi def link pythonConditional		Conditional
"hi def link pythonRepeat		Repeat
"hi def link pythonOperator		Operator
"hi def link pythonException		Exception
"hi def link pythonInclude		Include
"hi def link pythonAsync			Statement
"hi def link pythonDecorator		Define
"hi def link pythonDecoratorName		Function
"hi def link pythonFunction		Function
"hi def link pythonComment		Comment
"hi def link pythonTodo			Todo
"hi def link pythonString		String
"hi def link pythonRawString		String
"hi def link pythonQuotes		String
"hi def link pythonTripleQuotes		pythonQuotes
"hi def link pythonEscape		Special
"hi def link pythonNumber		Number
"hi def link pythonBuiltin		Function
"hi def link pythonExceptions		Structure
"hi def link pythonSpaceError		Error
"hi def link pythonDoctest		Special
"hi def link pythonDoctestValue	Define
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""               C++
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"" Statement
"syn keyword cppStatement	new delete this friend using
"syn keyword cppAccess		public protected private
"syn match cppCast		"\<\(const\|static\|dynamic\|reinterpret\)_cast\s*<"me=e-1
"syn match cppCast		"\<\(const\|static\|dynamic\|reinterpret\)_cast\s*$"
"" Operator
"syn keyword cppOperator		operator typeid
"syn keyword cppOperator		and bitor or xor compl bitand and_eq or_eq xor_eq not not_eq
"" Structure
"syn keyword cppStructure	class typename template namespace
"" Boolean
"syn keyword cppBoolean		true false
"" Type
"  syn keyword cppType		nullptr_t auto
"syn keyword cppType		bool wchar_t
"syn keyword cppModifier		inline virtual explicit export
"  syn keyword cppModifier	override final
"" Exception
"syn keyword cppExceptions	throw try catch
"  syn keyword cppExceptions	noexcept
"" StorageClass
"syn keyword cppStorageClass	mutable
"  syn keyword cppStorageClass	constexpr decltype thread_local
"
"" Constant
"syn keyword cppConstant		__cplusplus
"  syn keyword cppConstant	nullptr
"  syn keyword cppConstant	ATOMIC_FLAG_INIT ATOMIC_VAR_INIT
"  syn keyword cppConstant	ATOMIC_BOOL_LOCK_FREE ATOMIC_CHAR_LOCK_FREE
"  syn keyword cppConstant	ATOMIC_CHAR16_T_LOCK_FREE ATOMIC_CHAR32_T_LOCK_FREE
"  syn keyword cppConstant	ATOMIC_WCHAR_T_LOCK_FREE ATOMIC_SHORT_LOCK_FREE
"  syn keyword cppConstant	ATOMIC_INT_LOCK_FREE ATOMIC_LONG_LOCK_FREE
"  syn keyword cppConstant	ATOMIC_LLONG_LOCK_FREE ATOMIC_POINTER_LOCK_FREE
"  syn region cppRawString	matchgroup=cppRawStringDelimiter start=+\%(u8\|[uLU]\)\=R"\z([[:alnum:]_{}[\]#<>%:;.?*\+\-/\^&|~!=,"']\{,16}\)(+ end=+)\z1"+ contains=@Spell
"endif
"
"" Number
"  syn match cppNumber		display "\<0b[01]\('\=[01]\+\)*\(u\=l\{0,2}\|ll\=u\)\>"
"  syn match cppNumber		display "\<[1-9]\('\=\d\+\)*\(u\=l\{0,2}\|ll\=u\)\>" contains=cFloat
"  syn match cppNumber		display "\<0x\x\('\=\x\+\)*\(u\=l\{0,2}\|ll\=u\)\>"
"
"" Default highlighting
"cppExceptions		Exception
"cppOperator		Operator
"cppStatement		Statement
"cppModifier		Type
"cppType		Type
"cppStorageClass	StorageClass
"cppStructure		Structure
"cppBoolean		Boolean
"cppConstant		Constant
"cppRawStringDelimiter	Delimiter
"cppRawString		String
"cppNumber		Number
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""               C
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
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
