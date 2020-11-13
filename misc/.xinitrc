# Notification Manager
dunst &

# Transparency
# picom

# Set wallpaper and colours
chbg ~/.config/back.png
# xrdb ${HOME}/.cache/wal/xresources

# Status Bar
polybar bar &
xdo lower -N Polybar

# Key Daemon
sxhkd &

# Python Inkscape Shortcuts Script
# python ~/build/inkscape-shortcut-manager/main.py &

# Start Window Manager
exec bspwm
