# motion-mode-vim
## Description

The motion-mode-vim provides some convenient features when you write codes in RubyMotion.
Current version's features is:

* Code converter which converts a part of code from Objective-C to Ruby-style sentence
* Run single spec code in vim

## Install

In your `.vimrc`

```viml
bundle 'vim-scripts/AnsiEsc.vim'
bundle 'marocchino/motion-mode-vim'

map mc :call MotionConverter()<CR>
map ms :call MotionSpec()<CR>
```

## See Also

* motion-mode: [ainame/motion-mode](https://github.com/ainame/motion-mode).
* make_dict.rb: [roupam/yasobjc](https://github.com/roupam/yasobjc).
* code_conveter.rb: [kyamaguchi/SublimeObjC2RubyMotion](https://github.com/kyamaguchi/SublimeObjC2RubyMotion)
