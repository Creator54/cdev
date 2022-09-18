function cdev
  set -gx CURRENTDIR (pwd)
  set -gx WORKDIR $CURRENTDIR
  set SESSIONFILE (cd (dirname (status -f)); and pwd)/cp_session

  if not set -q argv[1]
    set -gx WORKDIR /tmp
    set -gx code $WORKDIR/code.cpp
  else
    set -gx code $WORKDIR/$argv[1]
  end

  set -gx input $WORKDIR/inputs
  set -gx output $WORKDIR/output

  mkdir -p $WORKDIR
  touch $code $input $output
  if [ (cat $code | wc -c) -eq 0 ] #fill only if codefile is empty/new
    sed -n '/START/,/END$/p' $SESSIONFILE | sed '1d;$d' | sed 's/^# //' > $code
    echo "Hello World !" > $input
  end
  kitty --session $SESSIONFILE
  cd $CURRENTDIR
  set -e CURRENTDIR WORKDIR code input output
end
