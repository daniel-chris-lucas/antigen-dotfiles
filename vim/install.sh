#!/bin/sh
#
# Vim
#
# This installs vim.

# Check for vim
vim --version 2>&1 >/dev/null
VIM_IS_AVAILABLE=$?
if [ ! $VIM_IS_AVAILABLE -eq 0 ]
then
    echo "  Installing Vim for you."

    # Install the correct vim for each OS type
    if [ "$(uname -s)" == "Darwin" ]
    then
        echo "Vim should be preinstalled on Mac"
    elif [ "$(uname -s)" == *ARCH ]
    then
        pacman -S vim
    else
        sudo apt-get install vim
    fi
fi

exit 0