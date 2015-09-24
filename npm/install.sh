#!/bin/sh
#
# NPM
#
# This installs NVM & NPM

# Check for NVM
nvm --version 2>&1 >/dev/null
NVM_IS_AVAILABLE=$?
if [ ! $NVM_IS_AVAILABLE -eq 0 ]
then
    if [ ! -d "$HOME/.nvm" ]
    then
        echo "  Installing NVM for you."

        git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`

        # Add path to nvm so installation can finish
        export NVM_DIR="$HOME/.nvm"
        [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

        # Install latest stable version of npm and node
        nvm install stable
        nvm use stable
        nvm alias default stable
    fi
fi

exit 0