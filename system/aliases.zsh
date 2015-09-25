if [ "$(uname -s)" != "Darwin" ]
then
    alias pbcopy='xclip -selection clipboard'
    alias pbpaste='xclip -selection clipboard -o'
fi

# grc overides for ls
# Made possible through contributions from generous benefactors like
# `brew install coreutils`
# if $(gls &>/dev/null)
# then
#     alias ls="gls -F --color=auto"
#     alias l="gls -lAhC"
#     alias ll="gls -lG"
#     alias la='gls -AG'
# fi