alias src="cd ~/src"
alias aldi="cd ~/src/aldinord-bco-microservices"

alias gs="git status"
alias gc="git commit"
alias ga="git add"
alias gap="git add -p"
alias gd="git diff"
alias glo="git log --oneline"
alias gp="git push"
alias gpf="git push --force-with-lease"
alias ts="~/.config/scripts/tmux-sessionizer.sh"
alias gb="~/.config/scripts/git-branch.sh"

alias ibt="pnpm i && pnpm build && pnpm test"
alias ib="pnpm i && pnpm build"

alias light="gsettings set org.gnome.desktop.interface color-scheme prefer-light"
alias dark="gsettings set org.gnome.desktop.interface color-scheme prefer-dark"

export EDITOR=nvim

[[ $TMUX != "" ]] && export TERM="screen-256color"

alias ts="~/.config/scripts/tmux-sessionizer.sh"

export GOPATH="${HOME}/go"
export PATH="$GOPATH/bin:$PATH"
export PATH="${HOME}/.cargo/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"
if [ -d "${HOME}/.local/kitty.app" ]; then
  export PATH="${HOME}/.local/kitty.app/bin:$PATH"
fi

alias blahaj='display3d ~/.config/blahaj.obj -t 0,0,5.5'
alias blahajmini='display3d ~/.config/blahaj.obj -t 0,0,10.5'

