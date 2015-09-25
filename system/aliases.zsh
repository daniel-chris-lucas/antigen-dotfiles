if [ "$(uname -s)" != "Darwin" ]
then
    alias ls="ls -lah -F --color"
    alias pbcopy='xclip -selection clipboard'
    alias pbpaste='xclip -selection clipboard -o'
fi