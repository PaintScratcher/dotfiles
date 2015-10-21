#!/usr/bin/env sh

LN_CMD="ln -T -s"
if [ "$1" = "-f" ]; then
    echo "Forcing..."
    LN_CMD="$LN_CMD -f"
fi

dir=`pwd`

## Actual dot files ##

DOTFILES="bash_aliases"

for file in $DOTFILES; do
    $LN_CMD $dir/config/$file $HOME/.$file
done

## Other files ##

mkdir -p $HOME/.ssh
$LN_CMD $dir/config/ssh-config $HOME/.ssh/config
