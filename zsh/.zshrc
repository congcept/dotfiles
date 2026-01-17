# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

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

# ---- Eza (better ls) -----

alias ls="eza --icons=auto"
# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

bindkey -v
PATH=/bin:/usr/bin:/usr/local/bin:/sbin:${PATH}
export PATH
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/nguyenducthanhcong/micromamba/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/nguyenducthanhcong/micromamba/etc/profile.d/conda.sh" ]; then
        . "/Users/nguyenducthanhcong/micromamba/etc/profile.d/conda.sh"
    else
        export PATH="/Users/nguyenducthanhcong/micromamba/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# Added by Antigravity
export PATH="/Users/nguyenducthanhcong/.antigravity/antigravity/bin:$PATH"

# Added by Antigravity
export PATH="/Users/nguyenducthanhcong/.antigravity/antigravity/bin:$PATH"

# Added by Antigravity
export PATH="/Users/nguyenducthanhcong/.antigravity/antigravity/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
eval "$(zoxide init --cmd cd zsh)"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
# ~/.zshrc

