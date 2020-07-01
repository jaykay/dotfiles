alias config='/usr/bin/git --git-dir=/Users/kaffkej/.cfg/ --work-tree=/Users/kaffkej'

if [ -f $(brew --prefix)/etc/bash_completion ]; then 
. $(brew --prefix)/etc/bash_completion
fi

if command -v kubectl &> /dev/null
then
    source <(kubectl completion bash)
fi

if command -v cpcli &> /dev/null
then
    source <(cpcli completion bash)
fi

# Git aliases
alias gp='git push'
alias gc='git commit -am'
alias gpl='git pull --rebase'
alias gpp='git pull --rebase && git push'
alias gts='git status'

# Kubernetes aliases
alias kgp='kubectl get pods'
alias know='kubectl get nodes -o wide'
alias klf='kubectl logs -f'
alias kdp='kubectl describe pod'
alias kgpy='kubectl get pod -o yaml'
alias keti='kubectl exec -ti'