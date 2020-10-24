# Notification Manager
dunst &

# Transparency
# picom

# Set wallpaper and colours
wal -c
wal -i ~/.config/back.png
xrdb ${HOME}/.cache/wal/xresources

# Status Bar
bar &

# Key Daemon
sxhkd &

# Python Inkscape Shortcuts Script
# python ~/build/inkscape-shortcut-manager/main.py &

# Start Window Manager
exec bspwm
