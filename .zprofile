# Editors + more
export EDITOR='nvim'
export SYSTEMD_EDITOR='nvim'
export SUDO_EDITOR='nvim'
export VISUAL='nvim'
export PAGER='less'
export BROWSER='vivaldi'
export TERM='kitty'
export CLICOLOR=1
export COLORTERM='truecolor'

# Language
if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

# Paths
# Ensure path arrays do not contain duplicates.
typeset -gU fpath path

# Set the list of directories that Zsh searches for programs.
export PATH="$HOME/.local/bin:$HOME/.config/hypr/scripts:/usr/local/bin:$HOME:$PATH"

# fpath
export FPATH="$HOME/.cache/zsh/completions:/usr/share/zsh/functions:/usr/share/zsh/site-functions:$FPATH"

# Less
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-g -i -M -R -S -w -z -4'

# Set the Less input preprocessor.
if (( $+commands[lesspipe.sh] )); then
  export LESSOPEN='| /usr/bin/env lesspipe.sh %s 2>&-'
fi

# auto-ls
function cd(){
    builtin cd "$@" && command eza -lA --header --no-time --list-directories-first --icons=always --color=always --color-scale=all --color-scale-mode=gradient
}
alias ls='eza -lA --header --no-time --list-directories-first --icons=always --color=always --color-scale=all --color-scale-mode=gradient'

# ls_colors
export LS_COLORS="$(vivid generate dracula)"

# neofetch
neofetch

# start Hyprland
sh /usr/local/bin/wrappedhl
