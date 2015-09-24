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

    # Install the correct homebrew for each OS type
    if [ "$(uname -s)" == "Darwin" ]
    then
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    elif [ "$(uname -s)" == *ARCH ]
    then
        pacaur -S linuxbrew-git
    else
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
    fi
fi

exit 0