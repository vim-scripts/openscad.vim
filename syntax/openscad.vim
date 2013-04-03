" Vim syntax file
" Language:     OpenSCAD
" Maintainer:   Sirtaj Singh Kang <sirtaj-vim@sirtaj.net>
" Last Changed: 2013 March 05

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif


"syn keyword openscadFunctionDef function
syn keyword openscadFunctionDef function nextgroup=openscadFunction skipwhite skipempty
syn match openscadFunction /\<\h\w*\>/ contained display

"syn keyword openscadModuleDef module
syn keyword openscadModuleDef module nextgroup=openscadModule skipwhite skipempty
syn match openscadModule /\<\h\w*\>/ contained display fold

syn keyword openscadStatement echo assign
syn keyword openscadConditional if else
syn keyword openscadRepeat for intersection_for
syn keyword openscadInclude include use
syn keyword openscadCsgKeyword union difference intersection render intersection_for
syn keyword openscadTransform scale rotate translate mirror multmatrix color minkowski hull glide subdiv
syn keyword openscadPrimitiveSolid cube sphere cylinder polyhedron surface
syn keyword openscadExtrude linear_extrude dxf_linear_extrude rotate_extrude dxf_rotate_extrude
syn keyword openscadImport import import_stl import_off import_dxf
syn keyword openscadDXF dxf_dim dxf_cross
syn keyword openscadPrimitive2D square circle polygon import_dxf

syn match openscadSpecialVariable "\$[a-zA-Z]\+\>" display
syn match openscadModifier "^\s*[\*\!\#\%]" display

syn match openscadNumbers "\<\d\|\.\d" contains=openscadNumber display transparent
syn match openscadNumber "\d\+" display contained 
syn match openscadNumber "\.\d\+" display contained 

syn region openscadString start=/"/ skip=/\\"/ end=/"/

syn keyword openscadBoolean true false

syn keyword openscadCommentTodo TODO FIXME XXX contained display
syn match openscadInlineComment ://.*$: contains=openscadCommentTodo
syn region openscadBlockComment start=:/\*: end=:\*/: fold contains=openscadCommentTodo

syn region openscadBlock start="{" end="}" transparent fold
syn region openscadVector start="\[" end="\]" transparent fold

syn keyword openscadBuiltin abs acos asin atan atan2 ceil cos exp floor ln log
syn keyword openscadBuiltin lookup max min pow rands round sign sin sqrt tan
syn keyword openscadBuiltin str 

hi def link openscadFunctionDef			Structure
hi def link openscadFunction			Function
hi def link openscadModuleDef			Structure
hi def link openscadModule			    Function
hi def link openscadBlockComment		Comment
hi def link openscadBoolean			    Boolean
hi def link openscadBuiltin			    Function
hi def link openscadConditional			Conditional
hi def link openscadCsgKeyword			Structure
hi def link openscadInclude			    Include
hi def link openscadInlineComment	    Comment
hi def link openscadModifier			Special
hi def link openscadStatement			Statement
hi def link openscadNumbers			    Number
hi def link openscadNumber			    Number
hi def link openscadPrimitiveSolid		Keyword
hi def link openscadExtrude		Keyword
hi def link openscadPrimitive2D		Keyword
hi def link openscadRepeat			    Repeat
hi def link openscadSpecialVariable		Special
hi def link openscadString			    String
hi def link openscadTransform			Statement
hi def link openscadCommentTodo			Todo
hi def link openscadImport              Function
hi def link openscadDXF                 Function

let b:current_syntax = "openscad"
