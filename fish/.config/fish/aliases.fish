# Verbosity and settings that you pretty much just always are going to want.
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -vI"
alias mkd="mkdir -pv"
alias free="free -m"
alias df="df -h"
alias yt="youtube-dl --add-metadata -i"
alias yta="yt -x -f bestaudio/best"
alias ffmpeg="ffmpeg -hide_banner"
alias maim="maim -u"
alias sudo="sudo "
#alias picom="picom --experimental-backend"
alias google-chrome-stable="google-chrome-stable --incognito --force-dark-mode"
alias xclip="xclip -selection clipboard"

# Some programs don't use env variable nor respect XDG rules by default.
alias yarn="yarn --use-yarnrc $XDG_CONFIG_HOME/yarn/config"
alias startx="startx $XDG_CONFIG_HOME/X11/xinitrc" 

# Colorize commands when possible.
alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias ls="ls -h --color --group-directories-first" 
alias ll="ls -lA" 

# These common commands are just too long! Abbreviate them.
alias dn="sudo shutdown -h now"
alias sv="sudo nvim"
alias v="nvim"
alias g="git"
alias o="xdg-open"
alias z="zathura"

