#!/usr/bin/env sh

exec-once=swaybg -i $HOME/.config/hypr/wallpapers/wallpaper.png
exec-once=foot --server nuk nuk or 9o
exec-once=eww daemon
exec-once=eww open bar
exec-once=dunst
exec-once=dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
exec-once=killall xdg-desktop-portal xdg-desktop-portal-wlr && /usr/lib/xdg-desktop-portal & /usr/lib/xdg-desktop-portal-wlr

