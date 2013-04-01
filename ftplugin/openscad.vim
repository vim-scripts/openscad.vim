" Vim filetype plugin file
" Language:         OpenSCAD
" Maintainer:       John Cooper john@choffee.co.uk
" Latest Revision:  2011-12-01

if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let s:cpo_save = &cpo
set cpo&vim

let b:undo_ftplugin = "setl com< cms< inc< fo< ofu<"

setlocal comments=f:// commentstring&
setlocal commentstring=//\ %s
setlocal formatoptions-=t formatoptions+=croql
setlocal omnifunc=openscadcomplete#CompleteOpenSCAD

let &l:include = '^\s*@import\s\+\%(url(\)\='

let &cpo = s:cpo_save
unlet s:cpo_save
