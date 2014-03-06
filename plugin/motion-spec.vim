function! MotionSpec()
  " let winnr = bufwinnr('^_output$')
  " if ( winnr >= 0 )
  "   execute winnr . 'wincmd w'
  "   execute 'normal ggdG'
  " else
  "   new _output
  "   setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  " endif
  ruby << EOF
    file_name = VIM.evaluate("@%")
    window_number = VIM.evaluate("bufwinnr('^_output$')")
    if window_number >= 0
      VIM.command("execute #{window_number} . 'wincmd w'")
      VIM.command("execute 'normal ggdG'")
    else
      VIM.command("new _output")
      VIM.command("setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap")
      VIM.command("AnsiEsc")
    end
    spec_name = file_name.sub(/^app(.+)\.rb$/, 'spec\1_spec.rb')
    if spec_name =~ /^spec/ && File.exists?(spec_name)
      VIM.command("silent! r! bundle exec rake spec files=#{spec_name}")
    else
      VIM.command("silent! r! bundle exec rake spec")
    end
EOF
endfunction

