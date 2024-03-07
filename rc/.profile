
alias src="cd ~/src"
alias aldi="cd ~/src/aldinord-bco-microservices"

# get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		STAT=`parse_git_dirty`
		echo "[${BRANCH}${STAT}]"
	else
		echo ""
	fi
}

# get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		echo "${BRANCH}"
	else
		echo ""
	fi
}

export PS1="\[\e[32m\]\u\[\e[m\] \[\e[36m\]\w\[\e[m\] \[\e[33m\]\`parse_git_branch\`\[\e[m\] "

alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gco="git checkout"
alias gm="git merge"
alias grb="git rebase"
alias gr="git restore"
alias ts="~/.config/scripts/tmux-sessionizer.sh"

export EDITOR=nvim

[[ $TMUX != "" ]] && export TERM="screen-256color"

alias ts="~/.config/scripts/tmux-sessionizer.sh"

export GOPATH="${HOME}/go"
export PATH="$GOPATH/bin:$PATH"
export PATH="${HOME}/.cargo/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"
export PATH="/usr/local/lib/nodejs/node-v20.11.1-linux-x64/bin:$PATH"

alias blahaj='display3d ~/.config/blahaj.obj -t 0,0,5.5'

