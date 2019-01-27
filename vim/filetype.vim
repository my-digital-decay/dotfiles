" my filetypes
if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect
  au! BufRead,BufNewFile *.glsl          setfiletype glsl
  au! BufRead,BufNewFile *.task,*.todo   setfiletype task
  au! BufRead,BufNewFile *.gmake,*.make  setfiletype make
augroup END
