function! MotionConverter()
  let s:current_path = expand('<sfile>:p:h')
  ruby << EOF
    require '~/.vim/bundle/motion-mode/lib/motion/code_converter.rb'
    $curbuf.append($curbuf.line_number, Motion::CodeConverter.new($curbuf.line).result)
    $curbuf.delete($curbuf.line_number)
EOF
endfunction
