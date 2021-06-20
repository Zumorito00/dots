# Notification Manager
dunst &

# Picom
# picom &

# Status Bar
polybar bar &

# Set wallpaper and colours
chbg ~/.config/back.png
# xrdb ${HOME}/.cache/wal/xresources

# Key Daemon
sxhkd &

# Python Inkscape Shortcuts Script
inkscape-figures watch
python ~/build/inkscape-shortcut-manager/main.py &

# Hide Cursor After 3 Seconds
unclutter --timeout 3 &

# Start Window Manager
xrandr --auto
exec bspwm
