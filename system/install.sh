#!/bin/sh
#
# Vim
#
# This installs vim.

# Check for vim
xclip -version 2>&1 >/dev/null
XCLIP_IS_AVAILABLE=$?
if [ ! $XCLIP_IS_AVAILABLE -eq 0 ]
then
    echo "  Installing xclip for you."

    # Install the correct xclip for each OS type
    if [ "$(uname -s)" == "Darwin" ]
    then
        echo "Mac doesn't need xclip"
    elif [ "$(uname -s)" == *ARCH ]
    then
        pacaur -S xclip
    else
        sudo apt-get install xclip
    fi
fi

exit 0