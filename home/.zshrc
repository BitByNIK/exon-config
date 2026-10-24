# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# zsh plugins
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ---- Eza (better ls) -----
alias ls="eza --icons=always"

# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"
alias cd="z"

# 1Password SSH agent: only used if 1Password's agent is running
OP_SSH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock
[[ -S $OP_SSH_SOCK ]] && export SSH_AUTH_SOCK=$OP_SSH_SOCK

# ---- Starship prompt (keep last) ----
eval "$(starship init zsh)"
