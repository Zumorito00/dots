# Theme
source ~/.config/zsh/robbyrussell.zsh

# History
SAVEHIST=100
HISTFILE=~/.config/zsh/.zsh_history

# Autocomplete
autoload -U compinit
zstyle ':completion:*' menu select
compinit

# Vim mode
bindkey -v

# Alias commands
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias sx='startx'
alias bl='bluetoothctl'
alias rs='redshift -x; redshift -O 3500'
alias rsx='redshift -x'
alias vifm='vifmrun'
alias lower='xdo lower -n tray; xdo lower -n polybar'
alias v='vim'
alias vf='vifmrun'
alias cdf='cd $(find * -type d | fzf --reverse)'
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg; sudo grub-mkconfig -o /boot/efi/EFI/arch/grub.cfg'
alias ntp='sudo ntpdate 0.au.pool.ntp.org'
