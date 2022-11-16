#!/usr/bin/env sh

exec-once=swaybg -i $HOME/.config/hypr/wallpapers/wallpaper.png
exec-once=eww daemon
exec-once=eww open bar
exec-once=dunst
exec-once=dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
exec-once=killall xdg-desktop-portal xdg-desktop-portal-wlr && /usr/lib/xdg-desktop-portal & /usr/lib/xdg-desktop-portal-wlr

exec-once=hyprpaper
exec-once=waybar
exec-once=xsettingsd
exec-once=hyprctl setcursor Breeze 24
exec-once=swayidle -w before-sleep $locker lock $locker after-resume $locker
exec-once=swaync
exec-once=ibus-daemon -drxR
exec-once=spotifyd
exec-once=/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
