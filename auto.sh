#!/bin/bash
__copy(){
	[[ ! -d $2 ]] && mkdir -p $2
	
	if [ -d $1 ]; then
		cp -Rf "$1"/* "$2"
	else
		cp -Rf "$1" "$2"
	fi

}

backup(){
if [[ $# -eq 0 ]]; then
		
	cat paths.txt | while read i
	do
		__copy "$HOME/$i" "./home/$i"
	done

else
	
	for i in $@; do
		__copy "$HOME/$i" "./home/$i"
	done

fi
}

restore(){
if [[ $# -eq 0 ]]; then
		
	cat paths.txt | while read i
	do	
		__copy  "./home/$i" "$HOME/$i"
	done

else
	
	for i in $@; do
		__copy "./home/$i" "$HOME/$i"
	done

fi
}


case "$1" in
	"backup")
	backup ${@:2}
	;;
	"restore")
	restore ${@:2}
	;;
	*)
	echo Usage : ./auto.sh backup/restore [pathes/files WITHOUT $HOME and ~]
	echo zero arguments after backup/restore will affect all files in paths.txt
	;;
esac
