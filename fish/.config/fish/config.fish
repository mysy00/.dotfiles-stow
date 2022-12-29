export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_PICTURES_DIR="$HOME/Pictures"
export XDG_VIDEOS_DIR="$HOME/Videos"
export XDG_DOCUMENTS_DIR="$HOME/Documents"

fish_add_path $XDG_DATA_HOME/cargo/bin

# Import additional files
source $XDG_CONFIG_HOME/fish/aliases.fish

###
set -gx VOLTA_HOME "$XDG_CACHE_HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

##
# // 
##

if status is-interactive
    # Commands to run in interactive sessions can go here

    # Custom Prompt
    set fish_greeting
    starship init fish | source

    if test -e ~/.cache/wal/colors.fish
    source ~/.cache/wal/colors.fish
    end

    if test -e ~/.cache/wal/sequences
    cat ~/.cache/wal/sequences
    end

end
