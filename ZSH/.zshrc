[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/nicolas/.rvm/gems/ruby-1.9.3-p429/bin

alias ne="emacs -nw"
alias e="ne"

alias re="make fclean && make -j8"

alias install="sudo apt-get install"
alias update="sudo apt-get update"
alias remove="sudo apt-get remove"

alias mv="mv -v"
alias cp="cp -v"
alias rm="rm -v"

alias l="ls -l"
alias svn_epitech="~/.bin/svn_epitech.sh"
alias j="jobs"

alias soul="perl ~/.bin/jogsoul.pl ~/.bin/jogsoul.conf"

alias clean="find ~/ \( -name '*~' -o -name '#*#' \) -delete -exec echo "Removed" {} \;"

et () {
    if [ -f $1 ] ; then
	case $1 in
	    *.lrz) lrztar -d $1 && cd $(basename "$1" .lrz) ;;
	    *.tar.bz2) tar xvjf $1 && cd $(basename "$1" .tar.bz2) ;;
	    *.tar.gz) tar xvzf $1 && cd $(basename "$1" .tar.gz) ;;
            *.tar.xz) tar Jxvf $1 && cd $(basename "$1" .tar.xz) ;;
	    *.bz2) bunzip2 $1 && cd $(basename "$1" /bz2) ;;
	    *.rar) unrar x $1 && cd $(basename "$1" .rar) ;;
	    *.gz) gunzip $1 && cd $(basename "$1" .gz) ;;
	    *.tar) tar xvf $1 && cd $(basename "$1" .tar) ;;
	    *.tbz2) tar xvjf $1 && cd $(basename "$1" .tbz2) ;;
	    *.tgz) tar xvzf $1 && cd $(basename "$1" .tgz) ;;
	    *.zip) unzip $1 && cd $(basename "$1" .zip) ;;
	    *.Z) uncompress $1 && cd $(basename "$1" .Z) ;;
	    *.7z) 7z x $1 && cd $(basename "$1" .7z) ;;
            *) echo "don't know how to extract '$1'..." ;;
        esac
    else
	echo "'$1' is not a valid file!"
    fi
}
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

source ~/.rvm/scripts/rvm 