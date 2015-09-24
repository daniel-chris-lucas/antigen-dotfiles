# Checkout
alias gco='git checkout'
alias gcod='git checkout develop'
alias gcom='git checkout master'

# Commit
alias gc='git commit'
alias gca='git commit -a'
alias gcam='git commit -am'

# Push
alias gp='git push'
alias gpo='git push origin'
alias gpod='git push origin develop'
alias gpom='git push origin master'

# Merge
alias gm='git merge'
alias gmd='git merge develop'
alias gmm='git merge master'

# Fetch and rebase
alias gf='git fetch'
alias gfu='git fetch upstream'
alias grum='git rebase -i upstream/master'

# The rest
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gd='git diff'
alias gb='git branch'
alias gs='git status -sb'