# motion-mode-vim
## Description

The motion-mode-vim provide some convenience features when you write code in RubyMotion.
The features is following this:

* Code converter to convert a part of code from Objective-C to Ruby style sentence
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
* motion-mode site from [ainame/motion-mode](https://github.com/ainame/motion-mode).
* make_dict.rb site from [roupam/yasobjc](https://github.com/roupam/yasobjc).
* code_conveter.rb site from [kyamaguchi/SublimeObjC2RubyMotion](https://github.com/kyamaguchi/SublimeObjC2RubyMotion)
