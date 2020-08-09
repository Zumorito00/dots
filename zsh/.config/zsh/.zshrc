# Theme
source ~/.config/zsh/robbyrussell.zsh

# Autocomplete
autoload -U compinit
zstyle ':completion:*' menu select
compinit

# Vim mode
bindkey -v

# Alias commands
alias sx='startx'
alias bl='bluetoothctl'
alias rs='redshift -x; redshift -O 3500'
alias rsx='redshift -x'
alias vifm='vifm ./'
