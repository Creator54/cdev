# C/C++ Linux Dev environment inspired from [Link](https://www.youtube.com/watch?v=Zlx7gmt3lBU&list=PLauivoElc3ggagradg8MfOZreCMmXMmJ-&index=3)

https://user-images.githubusercontent.com/34543609/190621952-e30d790d-441e-41f9-aba7-0d2a5869cc5c.mp4

## Usage:
  ```
  cdev #sets up environment with file code.cpp with WORKDIR=/tmp
  cdev test.cpp #sets up environment with file test.cpp with WORKDIR=$PWD
  ```
## Setup:
  1. Copy cdev.fish & cp_session to ~/.config/fish/functions/
  2. add cdev to $PATH for access from application launchers like rofi, dmenu.

## Deps:
```
vim, entr, kitty, fish, g++
```
