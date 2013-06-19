" Vim syntax file (local modifications)
" Language: lua
" Maintainer: Keith W. Thompson <my.digital.decay@gmail.com>
" Last Change:  2013.06.07

if !exists("b:current_syntax")
  finish
endif

" Comments
syn match   luaCommentDoc         "---.*$" contains=luaTodo,@Spell
syn match   luaCommentDoc         "--!.*$" contains=luaTodo,@Spell

if lua_version == 5 && lua_subversion == 0
  syn region  luaCommentDoc        matchgroup=luaComment start="--\[\[!" end="\]\]" contains=luaTodo,luaInnerComment,@Spell
elseif lua_version > 5 || (lua_version == 5 && lua_subversion >= 1)
  " Comments in Lua 5.1: --[[ ... ]], [=[ ... ]=], [===[ ... ]===], etc.
  syn region  luaCommentDoc        matchgroup=luaComment start="--\[\z(=*\)\[!" end="\]\z1\]" contains=luaTodo,@Spell
endif

hi def link luaCommentDoc CommentDoc

