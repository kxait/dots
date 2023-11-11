export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"

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


