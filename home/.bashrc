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
PS1='\[\e[0;32m\][@\u | \w] \$ \[\e[0m\]'
