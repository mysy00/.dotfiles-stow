# Fix dotnet apps
export DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_PICTURES_DIR="$HOME/Pictures"
export XDG_VIDEOS_DIR="$HOME/Videos"
export XDG_DOCUMENTS_DIR="$HOME/Documents"

fish_add_path $XDG_DATA_HOME/cargo/bin
fish_add_path $HOME/.local/bin

set -gx STARSHIP_CONFIG "$HOME/.config/starship/starship.toml"

# Import additional files
source $XDG_CONFIG_HOME/fish/aliases.fish

###
set -gx VOLTA_HOME "$XDG_CACHE_HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

##
# // 
##

# Fix flatpak apps not being recognized
if command -vq flatpak
    set -ga fish_user_paths ~/.local/share/flatpak/exports/bin /var/lib/flatpak/exports/bin
    set -gx --path XDG_DATA_DIRS /usr/local/share/ /usr/share/ ~/.local/share/flatpak/exports/share
    for install_dir in (flatpak --installations)
        set -gxa XDG_DATA_DIRS $install_dir/exports/share
    end
end

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
