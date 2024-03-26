alias src="cd ~/src"
alias aldi="cd ~/src/aldinord-bco-microservices"

alias gs="git status"
alias ga="git add"
alias gap="git add -p"
alias gd="git diff"
alias ts="~/.config/scripts/tmux-sessionizer.sh"

alias ibt="pnpm i && pnpm build && pnpm test"
alias ib="pnpm i && pnpm test"

export EDITOR=nvim

[[ $TMUX != "" ]] && export TERM="screen-256color"

alias ts="~/.config/scripts/tmux-sessionizer.sh"

export GOPATH="${HOME}/go"
export PATH="$GOPATH/bin:$PATH"
export PATH="${HOME}/.cargo/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"
export PATH="/usr/local/lib/nodejs/node-v20.11.1-linux-x64/bin:$PATH"
if [ -d "${HOME}/.local/kitty.app" ]; then
  export PATH="${HOME}/.local/kitty.app/bin:$PATH"
fi

alias blahaj='display3d ~/.config/blahaj.obj -t 0,0,5.5'

