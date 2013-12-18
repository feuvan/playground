playground
==========

Play whatever I want.


run `git clone --recurse-submodules` to get all bundles up-to-date.

or `git submodule update --init --recursive` after git clone.


For plain old OS bundled VIM that doesn't have Python2.7 support, refer to https://gist.github.com/feuvan/5589882

Note for YouCompleteMe: on Mac it's preferred to use system libclang to avoid downloading clang and compile from scratch.
```
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer --system-libclang
```

![Screenshot](https://github.com/feuvan/playground/raw/master/vim-screenshot.png)