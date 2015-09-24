#!/bin/sh
#
# Git
#
# This installs the git package.

# Check for git
if test ! $(which git)
then
    echo "  Installing git for you."

    # Install the correct git for each OS type
    if test "$(uname)" = "Darwin"
    then
        echo '  Do something for mac'
    elif [ "$(uname -s)" == *ARCH ]
    then
        sudo pacman -S git
    else
        sudo apt-get install git
    fi
fi

exit 0