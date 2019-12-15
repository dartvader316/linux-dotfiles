#
# ~/.zshrc
#

autoload -U colors && colors
PS1='%F{green}[@%n | %~] $ %f'
unsetopt prompt_cr prompt_sp

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}

alias reboot='sudo reboot' #For classmates
alias lf=lfcd
alias ls='ls --color=auto'
alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "state|to\
full|percentage"'
alias gui='startx'
alias net-restart='sudo systemctl restart NetworkManager.service'
alias use-nvidia-gpu='~/.config/scripts/useNvidiaGPU.sh'
alias use-intel-gpu='~/.config/scripts/useIntelGPU.sh'
alias mount-ntfs='~/.config/scripts/mountNTFS.sh'
alias umount-ntfs='~/.config/scripts/umountNTFS.sh'
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias youtube-mp3='youtube-dl --extract-audio --audio-format mp3'
alias screenrecord='bash ~/.config/scripts/screenrecord.sh'
alias lc='ls | wc -l'
alias valgrind-deep-debug='valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes -v'
alias bind-mouse-to-keyboard='xbindkeys -f ~/.config/xbindkeys/myconfig'
alias unbind-xkeys='killall xbindkeys'
alias view-image='sxiv'
alias wine32='WINEPREFIX="$HOME/.wine/wine32/" WINEARCH=win32'
alias winetest='WINEPREFIX="$HOME/.wine/winetest/" WINEARCH=win32'
alias wine64='WINEPREFIX="$HOME/.wine/wine64/" WINEARCH=win64'
alias fse='fse; LASTDIR=`cat $HOME/.fse/.lastdir`; cd "$LASTDIR"'
alias split-music="spleeter separate -p spleeter:2stems -o output -i"
export PATH=${PATH}:$HOME/.bin/

export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/nvidia_icd.json
