function cdev
  set -gx CURRENTDIR (pwd)
  set -gx WORKDIR $CURRENTDIR
  if not set -q argv[1]
    set -gx WORKDIR /tmp/CP
    set -gx code $WORKDIR/code.cpp
  else
    set -gx code $WORKDIR/$argv[1]
  end

  set -gx input $WORKDIR/inputs
  set -gx output $WORKDIR/output

  mkdir -p $WORKDIR
  touch $code $input $output
  printf '#include<bits/stdc++.h>\nusing namespace std;\n\nint main(){\n  ios_base::sync_with_stdio(0);\n  cin.tie(0);\n  cout.tie(0);\n  cout<<"Hello World";\n}' > $code
  kitty --session (cd (dirname (status -f)); and pwd)/cp_session
  cd $CURRENTDIR
  set -e CURRENTDIR WORKDIR code input output
end
