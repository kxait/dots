export GOPATH="${HOME}/go"

export PATH="$GOPATH/bin:/opt/homebrew/opt/openjdk@17/bin:$PATH"
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
