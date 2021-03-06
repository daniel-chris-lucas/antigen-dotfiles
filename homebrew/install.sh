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

        # Install the correct homebrew for each OS type
        if [ "$(uname -s)" == "Darwin" ]
        then
            ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        elif [ "$(uname -s)" == *ARCH ]
        then
            pacaur -S linuxbrew-git
            export PATH="$PATH:$HOME/.linuxbrew/bin"
        else
            ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
            export PATH="$PATH:$HOME/.linuxbrew/bin"
        fi
    fi
fi

# Initialize homebrew
brew doctor

# Install homebrew packages
brew install grc coreutils spark

exit 0