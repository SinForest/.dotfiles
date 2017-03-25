# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bullet-train"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
 HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git python svn)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/usr/bin/core_perl"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

export EDITOR='atom'

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

function cl () {
    cd "$@" && ls
    }
compdef cl=cd

### ALIASES ###

# sudo
alias sudo="sudo "
alias may_i_ask_for_the_service_of_executing="sudo "

# commands
alias jar="java -jar"
alias py="python"
alias bctl="bluetoothctl"
alias sctl="systemctl"
alias bgd="bg && disown"
alias clr="clear"
alias hiber="~/.scripts/i3lock_screenshot.sh && systemctl hibernate"
alias mountiso="mount -o loop -t iso9660"
alias mountnrg="mount -o loop,offset=307200"

# PostgreSQL
alias globedb="pgcli postgres://postgres:asdf1234@localhost/globedb"
alias musicdb="pgcli postgres://postgres:asdf1234@localhost/musicdb"

# C++
alias g11="g++ -std=c++11"
alias c11="c++ -std=c++11"
alias clang11="clang++ -std=c++11"

# GUI-Stuff
alias a.="atom ."
alias na="nautilus --no-desktop . &>/dev/null &"
alias cups="google-chrome http://localhost:631/"
alias sequoia="gdmap"

# PacAur
alias pS="pacaur -S"
alias pSs="pacaur -Ss"
alias pSyu="pacaur -Syu"