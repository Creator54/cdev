#!/usr/bin/env fish

function cdev
  if not set -q argv[1]
    touch code.cpp inputs
    printf '#include<bits/stdc++.h>\nusing namespace std;\n\nint main(){\n\tcout<<"Hello World";\n}' > code.cpp
    kitty --session cp_session
    rm -rf code.cpp inputs
  else
    set -x src (echo (pwd)/$argv) #without -x, i.e export entr won't be able to read the shell vaiable
    if echo $src | grep ".cpp\|.cxx" &>/dev/null
      ls $src | entr -c sh -c 'printf "Output :\n\n" && g++ $src -o temp && ./temp && rm -rf temp'
    else
      ls $src | entr -c sh -c 'printf "Output :\n\n" && gcc $src -o temp && ./temp && rm -rf temp'
    end
  end
end

cdev $argv
