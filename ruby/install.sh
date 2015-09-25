#!/bin/sh
#
# Ruby
#
# This installs RVM

# Check for RVM
if [ ! -d "$HOME/.rvm" ]
then
    echo "  Installing RVM for you."

    \curl -sSL https://get.rvm.io | bash -s -- --ignore-dotfiles

    # Add rvm to path to continue ruby installation
    export PATH="$PATH:$HOME/.rvm/bin"
    [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

    rvm install ruby-head
    rvm use ruby-head
fi

exit 0