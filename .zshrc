# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  minikube
  docker
  docker-compose
  # zsh-completions
  # zsh-autosuggestions
  # zsh-syntax-highlighting
)

# configs
source $ZSH/oh-my-zsh.sh

# get machine's ip address
alias ip="ipconfig getifaddr en0"

# edit global zsh configuration
alias zshconfig="vim ~/.zshrc"
# reload zsh configuration
alias zshsource="source ~/.zshrc"
# reload zsh configuration
alias ohmyzsh="cd ~/.oh-my-zsh"
# change ls
alias ls="lsd"
# lazydocker
alias lzd="lazydocker" 

# navigate to global ssh directory
alias sshhome="cd ~/.ssh"
# edit global ssh configuration
alias sshconfig="vim ~/.ssh/config"

# minikube
alias mk="minikube"
alias mkstart="minikube start --driver qemu --network socket_vmnet"
alias mkstop="minikube stop"

# kubectl
alias k="kubectl"

# colored-cat
alias cat="ccat"

# edit global git configuration
alias gitconfig="vim ~/.gitconfig"

# golang-related
# persist godoc for module level documentations
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# mojo-related
export MODULAR_HOME="/Users/jensen/.modular"
export PATH="/Users/jensen/.modular/pkg/packages.modular.com_mojo/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# load zsh-completions
# autoload -U compinit && compinit
source ~/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/zsh-you-should-use/you-should-use.plugin.zsh

zstyle ':completion:*' completer _expand_alias _complete _ignored
zstyle ':completion:*:*:docker-*:*' option-stacking yes

[ -s "/Users/jensen/.scm_breeze/scm_breeze.sh" ] && source "/Users/jensen/.scm_breeze/scm_breeze.sh"

# use starship theme (needs to be at the end)
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"


