# C/C++ dev environment in terminal with vim.
https://user-images.githubusercontent.com/34543609/190621952-e30d790d-441e-41f9-aba7-0d2a5869cc5c.mp4

## Usage:
```
cdev                #sets up environment with file code.cpp and TEMPLATE CODE, WORKDIR=/tmp
cdev test.cpp       #sets up environment with file test.cpp and TEMPLATE CODE if it's a new file, WORKDIR=$PWD
```
## Setup:
  1. Copy cdev.fish & cp_session to ~/.config/fish/functions/
  2. add cdev to $PATH for access from application launchers like rofi, dmenu.
  3. Modify TEMPLATE CODE in cp_session if you need to.
  4. <code>Code Code Code !</code>

## Deps/Stuff you may need to install:
```
vim, entr, kitty, fish, g++
```

## Inspiration/Credits:
[YT Video Link](https://www.youtube.com/watch?v=Zlx7gmt3lBU&list=PLauivoElc3ggagradg8MfOZreCMmXMmJ-&index=3)
