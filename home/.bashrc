#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "state|to\ full|percentage"'
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
alias screen-brightness='xbacklight -set'
alias valgrind-deep-debug='valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes -v'
alias bind-mouse-to-keyboard='~/.config/scripts/bindMouseToKeys.sh'
alias unbind-xkeys='~/.config/scripts/unbindXkeys.sh' 
alias view-image='sxiv'
alias wine32='WINEPREFIX="$HOME/.wine/wine32/" WINEARCH=win32'
alias wine64='WINEPREFIX="$HOME/.wine/wine64/" WINEARCH=win64'

PS1='\[\e[0;32m\][@\u | \w] \$ \[\e[0m\]'

source /usr/share/chruby/chruby.sh