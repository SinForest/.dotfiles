# Set name of the theme to load.
ZSH_THEME="bullet-train-custom"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=~/.oh-my-zsh/custom

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git python svn zsh-syntax-highlighting)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/usr/bin/core_perl:/opt/cuda/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# Additional Commands
source ~/.zshrc_add

source $ZSH/oh-my-zsh.sh

export EDITOR='/usr/bin/vim'

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Python PIL
export SCIPY_PIL_IMAGE_VIEWER="/usr/bin/display"

# Options
setopt noclobber				# no file overwriting with > - Use >! instead
setopt hist_ignore_space	# command starting with space not in history
setopt share_history			# instant history between open shells

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# pip zsh completion
function _pip_completion {
	local words cword
	read -Ac words
	read -cn cword
	reply=( $( COMP_WORDS="$words[*]" \
	          COMP_CWORD=$(( cword-1 )) \
	          PIP_AUTO_COMPLETE=1 $words[1] ) )
}
compctl -K _pip_completion pip
#compctl -K _pip_completion pip2

# functions
function cl () {
	cd "$@" && ls
}
compdef cl=cd

function qpy () {
	python -c "from math import *;print( $@ )"
}

# refresh promt when executing command (for time) [thx stackoverflow]
function _reset-prompt-and-accept-line {
	zle reset-prompt
	zle .accept-line     # Note the . meaning the built-in accept-line.
}
zle -N accept-line _reset-prompt-and-accept-line


### ALIASES ###

# sudo
alias sudo="sudo "
alias may_i_ask_for_the_service_of_executing="sudo "

# commands
alias jar="java -jar"
alias ipy="ipython"
alias py="python"
alias bctl="bluetoothctl"
alias sctl="systemctl"
alias bgd="bg && disown"
alias clr="tput reset || clear"
alias hiber="~/.scripts/i3lock_screenshot.sh && systemctl hibernate"
alias rescreen="screen -xR -S"
alias resc="rescreen"
alias wo="workon"

# default options
alias diff="diff --color"

# suffix (actually, these suck...)
#alias -s py="python"
#alias -s jar="java -jar"
#alias -s exe="wine"
#alias -s pdf="evince"

# global
alias -g :G="| grep -i"
alias -g :L="| less"
alias -g :NULL="> /dev/null 2>&1"

# GUI-Stuff
alias a="atom"
alias a.="atom ."
alias na="nautilus --no-desktop . &>/dev/null &"
alias cups="google-chrome-stable http://localhost:631/"
alias sequoia="gdmap"

# PacAur
alias pS="pikaur -S"
alias pSs="pikaur -Ss"
alias pR="pikaur -R"
alias pSyu="pikaur -Syu"
alias :S="pikaur -S"
alias :Ss="pikaur -Ss"
alias :R="pikaur -R"
alias :Syu="pikaur -Syu"

# PostgreSQL
alias globedb="clear && pgcli postgres://postgres:asdf1234@localhost/globedb"
alias musicdb="clear && pgcli postgres://postgres:asdf1234@localhost/musicdb"

# C++
alias g11="g++ -std=c++11"
alias c11="c++ -std=c++11"
alias clang11="clang++ -std=c++11"
alias clo="clang++ -std=c++14 -o"
alias cxx="clang++ -Wall -Wextra -Wconversion -Wfloat-equal -Wunused --std=c++14"
alias x="./a.out"

# mount
alias mountiso="mount -o loop -t iso9660"
alias mountnrg="mount -o loop,offset=307200"
alias mtp="jmtpfs ~/mnt/MTP"
alias umtp="fusermount -u ~/mnt/MTP"

# chmod
alias c+x="chmod +x"

#fix use of TERMITE on shh machines
alias fix_termite="wget https://raw.githubusercontent.com/thestinger/termite/master/termite.terminfo && tic -x termite.terminfo"
