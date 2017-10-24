#!/usr/bin/fish

set ENVFILE $HOME/dotfiles/globalenv.sh

set -x SHELL fish

for line in (cat $ENVFILE)
  if test -n $line
    eval (echo $line | awk 'BEGIN { FS="=" } { print "set -x " $1 " " $2 }')
  end
end
