# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000000
setopt autocd notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/himanshu/.zshrc'

autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
# End of lines added by compinstall



#Custom Settings
autoload -U colors && colors

PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "



stty stop undef		# Disable ctrl-s to freeze terminal.

# Define a function to source a file or display an error message
source_if_directory_exists() {
    local source_path="$1"
    
    if [ -f "$source_path" ]; then
        # Source the file if the directory is present
        source "$source_path"
    else
        # Display an error message
        echo "Directory $source_path not found. The file was not sourced."
    fi
}


source_if_directory_exists ~/.local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source_if_directory_exists ~/.local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
