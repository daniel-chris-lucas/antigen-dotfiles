if [ "$(uname -s)" != "Darwin" ]
then
    if [ -d "$HOME/.linuxbrew" ]
    then
        export PATH="$PATH:$HOME/.linuxbrew/bin"
    fi
fi