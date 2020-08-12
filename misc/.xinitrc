# Notification Manager
dunst &

# Transparency
# compton --config ~/.config/compton/compton.conf &

# Set wallpaper and colours
wal -c
wal -i ~/.config/back.png
xrdb ${HOME}/.cache/wal/xresources

# Status Bar
dwmbar &

# Key Daemon
sxhkd &

# Python Inkscape Shortcuts Script
# python ~/build/inkscape-shortcut-manager/main.py &

# Start Window Manager
exec bspwm
