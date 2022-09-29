#!/usr/bin/env zsh

№ ZI
typeset -Ag ZI
# ------------------------------------- ##
if ! [ -d "$HOME/.zi/bin/zi.zsh" ]; then
    command mkdir -p "${HOME}/.zi/bin" && \
    command git clone https://github.com/z-shell/zi.git "${HOME}/.zi/bin/"
fi
# ------------------------------------- ##
export ZI[HOME_DIR]="${HOME}/.config/zi"
export ZI[BIN_DIR]="${ZI[HOME_DIR]}/bin"
source "${ZI[BIN_DIR]}/zi.zsh"
autoload -Uz _zi
(( ${+_comps} )) && _comps[zi]=_zi


# Apps
zi load romkatv/zsh-defer
# ------------------------------------- ##
zsh-defer zi wait lucid light-mode for \
  atload"ZINIT[COMPINIT_OPTS]=-C; zpcompinit" \
    zdharma/fast-syntax-highlighting \
  compile"h*" \
    zdharma-continuum/history-search-multi-word \
  ver"develop" atload"_zsh_autosuggest_start" \
    z-shell/zsh-autosuggestions \
  as"completion" atpull"zinit cclear" blockf \
    z-shell/zsh-completions \
  atload'ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(autopair-insert) \
    hlissner/zsh-autopair \
    urbainvaes/fzf-marks
  pack"no-dir-color-swap" atload"zstyle ':completion:*' list-colors \${(s.:.)LS_COLORS}" \
    sharkdp/vivid
# ------------------------------------- ##
# OMZ
zsh-defer zi is-snippet wait lucid for \
  atload"unalias grv g" \
    OMZP::{git,sudo,encode64,extract} \
    OMZP::colored-man-pages
# ------------------------------------- ##
# Prezto
zsh-defer zi is-snippet wait lucid for \
  PZTM::archive
  PZTM::autosuggestions
  PZTM::command-not-found
  PZTM::completion
  PZTM::history-substring-search
  PZTM::pacman
# ------------------------------------- ##
# Semi-graphical .zshrc editor for zi commands
zsh-defer zi light zdharma/zui
zsh-defer zi ice lucid wait'[[ -n ${ZLAST_COMMANDS[(r)cras*]} ]]'
zsh-defer zi light zdharma/zinit-crasis 
CRASIS_THEME="zdharma-256" CRASIS_LAYOUT="contract" crasis
# ------------------------------------- ##
# startify
zsh-defer zi ice waite45vvvgt"0" lucid atload"zsh-startify" \
zsh-defer zi load zdharma-continuum/zsh-startify
    
    
