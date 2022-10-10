#!/usr/bin/env bash


dir="$HOME/.config/rofi/themes"
theme='launchpad'

## Run
rofi \
    -show drun \
    -theme ${dir}/${theme}.rasi
