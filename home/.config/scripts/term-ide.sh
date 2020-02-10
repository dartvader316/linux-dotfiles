#!/bin/bash

#There must be some terminal parser, but im too lazy :)

TERM_CMD=st
EDITOR=vim

for i in $@; do
	if [ -e $i ] && [ ! -d $i ] && [ -z $(file $i | grep -Eo ELF) ]; then
		if [ "$TERM_CMD" == "st" ]; then
			$TERM_CMD $EDITOR $i &
		else
			if [ "$TERM_CMD" == "urxvt" ]; then
				$TERM_CMD -cd $PWD -e $SHELL -c "$EDITOR $i" &
			else 
				echo "Unsupported terminal cmd"
				break
			fi
		fi
	fi
done
