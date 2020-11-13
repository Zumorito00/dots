# 
#     _             _       ____       _               
#    / \   _ __ ___| |__   / ___|  ___| |_ _   _ _ __  
#   / _ \ | '__/ __| '_ \  \___ \ / _ \ __| | | | '_ \ 
#  / ___ \| | | (__| | | |  ___) |  __/ |_| |_| | |_) |
# /_/   \_\_|  \___|_| |_| |____/ \___|\__|\__,_| .__/ 
#                                               |_|    
#  ____            _       _   
# / ___|  ___ _ __(_)_ __ | |_ 
# \___ \ / __| '__| | '_ \| __|
#  ___) | (__| |  | | |_) | |_ 
# |____/ \___|_|  |_| .__/ \__|
#                   |_|        
# 

folder_setup() {
    echo Making folders...
    mkdir ~/downloads
    mkdir ~/documents
    mkdir ~/build
    mkdir ~/git
    echo Done!
}

xorg_setup() {
    echo Installing xorg...
    sudo pacman -Sy xorg xorg-xinit --noconfirm
    echo Done!
}

essentials_setup() {
    echo Installing essential packages...
    sudo pacman -Sy zsh vim vifm rofi dunst light python python-pip zathura zathura-pdf-poppler firefox stow --noconfirm
    echo Done!
}

audio_setup() {
    echo Installing audio packages...
    sudo pacman -S alsa alsa-firmware pulseaudio pulseaudio-alsa bluez bluez-utils --noconfirm
    echo Done!
}

misc_setup() {
    echo Installing misc packages...
    sudo pacman -S texlive-most inkscape gimp torbrowser-launcher vlc qbittorrent --noconfirm
    echo Done!
}

convert_setup() {
    echo Installing document converting packages...
    sudo pacman -S pandoc unoconv --noconfirm
    echo Done!
}

git_setup() {
    echo Cloning git repositories...
    cd ~/build
    git clone https://github.com/GideonWolfe/Zathura-Pywal
    git clone https://github.com/Zumorito00/st
    git clone https://github.com/Zumorito00/dwm
    cd
    echo Done!
}

yay_setup() {
    echo Installing yay...
    cd ~/build
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    cd
    echo Done!

    echo Installing yay packages...
    yay -S libnotify-id picom-ibhagwan-git
    echo Done!
}

case $1 in
    -f|--folder)
        folder_setup
        ;;
    -x|--xorg)
        xorg_setup
        ;;
    -e|--essentials)
        essentials_setup
        ;;
    -a|--audio)
        audio_setup
        ;;
    -m|--misc)
        misc_setup
        ;;
    -c|--convert)
        convert_setup
        ;;
    -g|--git)
        git_setup
        ;;
    -y|--yay)
        yay_setup
        ;;
    -all)
        xorg_setup
        essentials_setup
        audio_setup
        misc_setup
        convert_setup
        ;;
    *|-h|--help)
        echo PLACEHOLDER
        ;;
esac
