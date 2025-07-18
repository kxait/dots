export GOPATH="${HOME}/go"

export PATH="$GOPATH/bin:/opt/homebrew/opt/openjdk@17/bin:$PATH"
export PATH="$PATH:/Users/kx/bin"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export EDITOR=nvim

alias src="cd ~/src"

vimizer () {
  cd $(find ~/src ~ -mindepth 1 -maxdepth 1 -type d | fzy)
  nvim .
}

alias s="vimizer"

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST
PROMPT='%B%F{046}%n %F{033}%~ %F{160}${vcs_info_msg_0_}%f%b$ '
eval $(/opt/homebrew/bin/brew shellenv)


alias ts="~/.config/scripts/tmux-sessionizer.sh"
alias blahaj="display3d ~/.config/blahaj.obj -t 0,0,5.5"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

. ~/.profile

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/Downloads/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/Downloads/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/Downloads/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/Downloads/google-cloud-sdk/completion.zsh.inc"; fi
