alias config='/usr/bin/git --git-dir=/Users/kaffkej/.cfg/ --work-tree=/Users/kaffkej'


# Git aliases
alias gp='git push'
alias gc='git commit -am'
alias gpl='git pull --rebase'
alias gpp='git pull --rebase && git push'

# Kubernetes aliases
alias kgp='kubectl get pods'
alias know='kubectl get nodes -o wide'
alias klf='kubectl logs -f'
alias kdp='kubectl describe pod'
alias kgpy='kubectl get pod -o yaml'