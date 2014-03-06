# motion-mode (vim)
## Description

The motion-mode provide some convinience features when you write code in RubyMotion.
The features is following this:

* Code converter to convert a part of code from Objective-C to Ruby style sentence

## Install

In your `.vimrc`

```viml
bundle 'marocchino/motion-mode'

map mc :call MotionConverter()<CR>
```

## See Also
* make_dict.rb cite from [roupam/yasobjc](https://github.com/roupam/yasobjc).
* code_conveter.rb cite from [kyamaguchi/SublimeObjC2RubyMotion](https://github.com/kyamaguchi/SublimeObjC2RubyMotion)
