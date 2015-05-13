# Notes

Everything mostly works as expected. Clone, 

```bash
git submodule update --init --recursive
```

should take care of everything. Unfortunately, there is one thing I haven't figured out, which is how to automatically move `autoload/autoload/pathogen.vim` to `autoload/pathogen.vim`. So after doing the above step, you must

```bash
cp autoload/autoload/pathogen.vim autoload/pathogen.vim
```

Also, copy the `.vimrc` from the root directory to your home directory, probably something like this

```bash
cp .vimrc ../.vimrc
```
