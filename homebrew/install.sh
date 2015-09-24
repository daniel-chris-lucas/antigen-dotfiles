#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
brew --version 2>&1 >/dev/null
BREW_IS_AVAILABLE=$?
if [ ! $BREW_IS_AVAILABLE -eq 0 ]
then
    if [ ! -d "$HOME/.linuxbrew" ]
    then
        echo "  Installing Homebrew for you."

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
fi

exit 0