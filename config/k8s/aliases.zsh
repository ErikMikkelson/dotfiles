# kubecolor alias
alias kubectl='kubecolor '

# Make completion work with kubecolor
# source <(kubectl completion zsh)
compdef kubecolor=kubectl

# kubectl utils aliases
alias kns='kubens '
alias kctx='kubectx '

# kubectl short aliases
alias k='kubectl '
alias ksys='kubectl --namespace=kube-system'
alias ka='kubectl apply --recursive -f'
alias kak='kubectl apply -k'
alias kk='kubectl kustomize'
alias kex='kubectl exec -i -t'
alias klo='kubectl logs -f'
alias klop='kubectl logs -f -p'
alias kp='kubectl proxy'
alias kpf='kubectl port-forward'
alias kg='kubectl get'
alias kd='kubectl describe'
alias krm='kubectl delete'
alias krun='kubectl run --rm --restart=Never --image-pull-policy=IfNotPresent -i -t'
alias kgpo='kubectl get pods'
alias kdpo='kubectl describe pods'
alias krmpo='kubectl delete pods'
alias kgdep='kubectl get deployment'
alias kddep='kubectl describe deployment'
alias krmdep='kubectl delete deployment'
alias kgsvc='kubectl get service'
alias kdsvc='kubectl describe service'
alias krmsvc='kubectl delete service'
alias kging='kubectl get ingress'
alias kding='kubectl describe ingress'
alias krming='kubectl delete ingress'
alias kgcm='kubectl get configmap'
alias kdcm='kubectl describe configmap'
alias krmcm='kubectl delete configmap'
alias kgsec='kubectl get secret'
alias kdsec='kubectl describe secret'
alias krmsec='kubectl delete secret'
alias kgno='kubectl get nodes'
alias kdno='kubectl describe nodes'
alias kgns='kubectl get namespaces'
alias kdns='kubectl describe namespaces'
alias krmns='kubectl delete namespaces'
alias kgoyaml='kubectl get -o=yaml'
alias kgowide='kubectl get -o=wide'
alias kgojson='kubectl get -o=json'
alias kgpoowide='kubectl get pods -o=wide'
alias kgpooyaml='kubectl get pods -o=yaml'
alias kgpoojson='kubectl get pods -o=json'
