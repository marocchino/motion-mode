function! MotionConverter()
  ruby << EOF
    first = VIM.evaluate("getpos(\"'<\")[1]")
    last = VIM.evaluate("getpos(\"'>\")[1]")
    if $curbuf.line_number == last
      require '~/.vim/bundle/motion-mode-vim/lib/motion/code_converter.rb'
      lines = (first..last).map{|n| $curbuf[n]}.join("\n")
      (first..last).size.times { $curbuf.delete(first) }
      Motion::CodeConverter.new(lines).result.split("\n").reverse.each do |line|
        $curbuf.append(first-1, line)
      end
    end
EOF
endfunction

